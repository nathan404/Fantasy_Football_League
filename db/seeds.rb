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
    'points' => 0
})

team2 = Team.new({
    'name' => 'Brazil',
    'played' => 0,
    'wins' => 0,
    'draws' => 0,
    'losses' => 0,
    'goals_for' => 0,
    'goals_against' => 0,
    'points' => 0
})

team3 = Team.new({
    'name' => 'Croatia',
    'played' => 0,
    'wins' => 0,
    'draws' => 0,
    'losses' => 0,
    'goals_for' => 0,
    'goals_against' => 0,
    'points' => 0
})

team4 = Team.new({
    'name' => 'Netherlands',
    'played' => 0,
    'wins' => 0,
    'draws' => 0,
    'losses' => 0,
    'goals_for' => 0,
    'goals_against' => 0,
    'points' => 0
})

team5 = Team.new({
    'name' => 'Scotland',
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
team4.save()
team5.save()

game1 = Game.new({
    'home_team_id' => team1.id,
    'home_goals' => 3,
    'away_team_id' => team2.id,
    'away_goals' => 0
})

game2 = Game.new({
    'home_team_id' => team3.id,
    'home_goals' => 2,
    'away_team_id' => team4.id,
    'away_goals' => 1
})

game3 = Game.new({
    'home_team_id' => team1.id,
    'home_goals' => 2,
    'away_team_id' => team3.id,
    'away_goals' => 1
})

game4 = Game.new({
    'home_team_id' => team2.id,
    'home_goals' => 4,
    'away_team_id' => team4.id,
    'away_goals' => 2
})

game5 = Game.new({
    'home_team_id' => team1.id,
    'home_goals' => 4,
    'away_team_id' => team4.id,
    'away_goals' => 3
})

game6 = Game.new({
    'home_team_id' => team2.id,
    'home_goals' => 1,
    'away_team_id' => team3.id,
    'away_goals' => 1
})

game1.save()
game2.save()
game3.save()
game4.save()
game5.save()
game6.save()

# team1.result(game1)
# team1.result(game3)
# team1.result(game5)

# team2.result(game1)
# team2.result(game4)
# team2.result(game6)

# team3.result(game2)
# team3.result(game3)
# team3.result(game6)

# team4.result(game2)
# team4.result(game4)
# team4.result(game5)

team1.update()
team2.update()
team3.update()
team4.update()
team5.update()

p team1.results.first