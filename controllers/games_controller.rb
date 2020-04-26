require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/team.rb')
require_relative('../models/game.rb')
also_reload('../models/*')

get '/games' do
    @games = Game.all()
    erb(:'games/index')
end

get '/games/new' do
    @teams = Team.all()
    @games = Game.all()
    erb(:'games/new')
end

post '/games' do
    Game.new(params).save
    redirect to '/games'
end

get '/games/:id' do
    @game = Game.find(params[:id])
    erb(:'games/show')
end

post '/games/:id/delete' do
    game = Game.find(params[:id])
    game.delete()
    Game.all()
    @teams = Team.all()
    @teams.each {|team| team.destroy(game)}
    @teams.each {|team| team.update}
    redirect to '/games'
end