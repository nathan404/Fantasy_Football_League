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
    @teams = Team.all_unselected()
    erb(:'teams/new')
end

post '/teams' do
    team = Team.new(params)
    team.in_table = true
    p team
    team.save
    redirect to ('/teams')
end

get '/teams/:id' do
    @team = Team.find(params['id'].to_i)
    erb(:'teams/show')
end

