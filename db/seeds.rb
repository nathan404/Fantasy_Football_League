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
    'points' => 0,
    'active' => false
})

team2 = Team.new({
    'name' => 'Brazil',
    'played' => 0,
    'wins' => 0,
    'draws' => 0,
    'losses' => 0,
    'goals_for' => 0,
    'goals_against' => 0,
    'points' => 0,
    'active' => false
})

team3 = Team.new({
    'name' => 'Croatia',
    'played' => 0,
    'wins' => 0,
    'draws' => 0,
    'losses' => 0,
    'goals_for' => 0,
    'goals_against' => 0,
    'points' => 0,
    'active' => false
})

team4 = Team.new({
    'name' => 'Netherlands',
    'played' => 0,
    'wins' => 0,
    'draws' => 0,
    'losses' => 0,
    'goals_for' => 0,
    'goals_against' => 0,
    'points' => 0,
    'active' => false
})

team5 = Team.new({
    'name' => 'Scotland',
    'played' => 0,
    'wins' => 0,
    'draws' => 0,
    'losses' => 0,
    'goals_for' => 0,
    'goals_against' => 0,
    'points' => 0,
    'active' => false
})

team6 = Team.new({
    'name' => 'Nigeria',
    'played' => 0,
    'wins' => 0,
    'draws' => 0,
    'losses' => 0,
    'goals_for' => 0,
    'goals_against' => 0,
    'points' => 0,
    'active' => false
})

team7 = Team.new({
    'name' => 'Italy',
    'played' => 0,
    'wins' => 0,
    'draws' => 0,
    'losses' => 0,
    'goals_for' => 0,
    'goals_against' => 0,
    'points' => 0,
    'active' => false
})

team8 = Team.new({
    'name' => 'Argentina',
    'played' => 0,
    'wins' => 0,
    'draws' => 0,
    'losses' => 0,
    'goals_for' => 0,
    'goals_against' => 0,
    'points' => 0,
    'active' => false
})

team9 = Team.new({
    'name' => 'Germany',
    'played' => 0,
    'wins' => 0,
    'draws' => 0,
    'losses' => 0,
    'goals_for' => 0,
    'goals_against' => 0,
    'points' => 0,
    'active' => false
})

team10 = Team.new({
    'name' => 'Denmark',
    'played' => 0,
    'wins' => 0,
    'draws' => 0,
    'losses' => 0,
    'goals_for' => 0,
    'goals_against' => 0,
    'points' => 0,
    'active' => false
})

team1.save()
team2.save()
team3.save()
team4.save()
team5.save()
team6.save()
# team7.save()
# team8.save()
# team9.save()
# team10.save()

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

team1.results
team2.results
team3.results
team4.results

team1.update()
team2.update()
team3.update()
team4.update()
# team5.update()

# p Team.active_teams
# p Team.inactive_teams
# p Team.all

# team7.save
# # p team7
# team7.update
# # p team7
# p Team.active_teams
