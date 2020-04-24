require_relative('../models/game')
require_relative('../models/team')

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
