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
    team = Team.find(params[:id])
    p team
    # team.save
    # team.update
    redirect to '/teams'
end

get '/teams/:id' do
    @team = Team.find(params[:id])
    erb(:'teams/show')
end

post '/teams/:id/delete' do
    team = Team.find(params[:id])
    @games = team.games
    @teams = Team.active_teams
    for opponent in @teams
        for game in @games
            opponent.destroy(game)
        end
    end
    @teams.each {|opponent| opponent.update}
    team.render_inactive()
    redirect to '/teams'
end
