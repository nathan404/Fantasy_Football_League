require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('controllers/games_controller')
require_relative('controllers/teams_controller')
also_reload('models/*')

get '/' do
    erb(:index)
end