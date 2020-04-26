require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/team.rb')
require_relative('../models/game.rb')
also_reload('../models/*')

get '/teams' do
    @teams = Team.all()
    erb(:'teams/index')
end

get '/teams/new' do
    @teams = Team.all()
    erb(:'teams/new')
end

post '/teams' do
    Team.new(params).save
    redirect to '/teams'
end

get '/teams/:id' do
    @team = Team.find(params['id'].to_i)
    erb(:'teams/show')
end

