require_relative('../models/game')
require_relative('../models/team')

Game.delete_all()
Team.delete_all()

team1 = Team.new({
    'name' => 'France',
    'played' => 0,
    'wins' => 0,
    'draws' => 0,
    'losses' => 0,
    'goals_for' => 0,
    'goals_against' => 0,
    'points' => 0 })

team2 = Team.new({
    'name' => 'Brazil',
    'played' => 0,
    'wins' => 0,
    'draws' => 0,
    'losses' => 0,
    'goals_for' => 0,
    'goals_against' => 0,
    'points' => 0 })

team3 = Team.new({
    'name' => 'Netherlands',
    'played' => 0,
    'wins' => 0,
    'draws' => 0,
    'losses' => 0,
    'goals_for' => 0,
    'goals_against' => 0,
    'points' => 0
})

team1.save()
team2.save()
team3.save()

game1 = Game.new({
    'home_team_id' => team1.id,
    'home_goals' => 3,
    'away_team_id' => team2.id,
    'away_goals' => 0
})

game2 = Game.new({
    'home_team_id' => team1.id,
    'home_goals' => 2,
    'away_team_id' => team3.id,
    'away_goals' => 1
})

game3 = Game.new({
    'home_team_id' => team2.id,
    'home_goals' => 4,
    'away_team_id' => team3.id,
    'away_goals' => 2
})

game1.save()
game2.save()
game3.save()
