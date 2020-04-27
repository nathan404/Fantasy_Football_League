require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/team.rb')
require_relative('../models/game.rb')
also_reload('../models/*')

get '/teams' do
    @teams = Team.active_teams()
    erb(:'teams/index')
end

get '/teams/new' do
    @teams = Team.inactive_teams()
    erb(:'teams/new')
end

post '/teams' do
    team = Team.new(params)
    team.save
    team.update
    redirect to '/teams'
end

get '/teams/:id' do
    @team = Team.find(params[:id])
    erb(:'teams/show')
end

post '/teams/:id/delete' do
    team = Team.find(params[:id])
    
    team.delete()
    redirect to '/teams'
end
