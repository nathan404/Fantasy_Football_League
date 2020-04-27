require_relative('../models/player')
require_relative('../models/game')
require_relative('../models/team')

Player.delete_all()
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
team7.save()
team8.save()
team9.save()
team10.save()

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

f1 = Player.new({'first_name' => 'Fabien', 'last_name' => 'Barthez', 'country_id' => team1.id, 'position' => 'Goalkeeper', 'goals' => 0})
f2 = Player.new({'first_name' => 'Lilian', 'last_name' => 'Thuram', 'country_id' => team1.id, 'position' => 'Defender', 'goals' => 0})
f3 = Player.new({'first_name' => 'Bixente', 'last_name' => 'Lizarazu', 'country_id' => team1.id, 'position' => 'Defender', 'goals' => 0})
f4 = Player.new({'first_name' => 'Marcel', 'last_name' => 'Desailly', 'country_id' => team1.id, 'position' => 'Defender', 'goals' => 0})
f5 = Player.new({'first_name' => 'Frank', 'last_name' => 'Leboeuf', 'country_id' => team1.id, 'position' => 'Defender', 'goals' => 0})
f6 = Player.new({'first_name' => 'Christian', 'last_name' => 'Karembeu', 'country_id' => team1.id, 'position' => 'Midfielder', 'goals' => 0})
f7 = Player.new({'first_name' => 'Didier', 'last_name' => 'Deschamps', 'country_id' => team1.id, 'position' => 'Midfielder', 'goals' => 0})
f8 = Player.new({'first_name' => 'Youri', 'last_name' => 'Djorkaeff', 'country_id' => team1.id, 'position' => 'Midfielder', 'goals' => 0})
f9 = Player.new({'first_name' => 'Emmanuel', 'last_name' => 'Petit', 'country_id' => team1.id, 'position' => 'Midfielder', 'goals' => 0})
f10 = Player.new({'first_name' => 'Zinedine','last_name' => 'Zidane', 'country_id' => team1.id, 'position' => 'Midfielder', 'goals' => 0})
f11 = Player.new({'first_name' => 'Stephane','last_name' => 'Guivarch', 'country_id' => team1.id, 'position' => 'Striker', 'goals' => 0})

b1 = Player.new({'first_name' => 'Claudio', 'last_name' => 'Taffarel', 'country_id' => team2.id, 'position' => 'Goalkeeper', 'goals' => 0})
b2 = Player.new({'first_name' => nil, 'last_name' => 'Cafu', 'country_id' => team2.id, 'position' => 'Defender', 'goals' => 0})
b3 = Player.new({'first_name' => 'Roberto', 'last_name' => 'Carlos', 'country_id' => team2.id, 'position' => 'Defender', 'goals' => 0})
b4 = Player.new({'first_name' => nil, 'last_name' => 'Aldair', 'country_id' => team2.id, 'position' => 'Defender', 'goals' => 0})
b5 = Player.new({'first_name' => 'Junior', 'last_name' => 'Baiano', 'country_id' => team2.id, 'position' => 'Defender', 'goals' => 0})
b6 = Player.new({'first_name' => 'Cesar', 'last_name' => 'Sampaio', 'country_id' => team2.id, 'position' => 'Midfielder', 'goals' => 0})
b7 = Player.new({'first_name' => nil, 'last_name' => 'Dunga', 'country_id' => team2.id, 'position' => 'Midfielder', 'goals' => 0})
b8 = Player.new({'first_name' => nil, 'last_name' => 'Rivaldo', 'country_id' => team2.id, 'position' => 'Midfielder', 'goals' => 0})
b9 = Player.new({'first_name' => nil, 'last_name' => 'Leonardo', 'country_id' => team2.id, 'position' => 'Midfielder', 'goals' => 0})
b10 = Player.new({'first_name' => nil, 'last_name' => 'Bebeto', 'country_id' => team2.id, 'position' => 'Striker', 'goals' => 0})
b11 = Player.new({'first_name' => nil, 'last_name' => 'Ronaldo', 'country_id' => team2.id, 'position' => 'Striker', 'goals' => 0})

france_team = [f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11]
brazil_team = [b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11]

france_team.each {|player| player.save}
brazil_team.each {|player| player.format_name}
brazil_team.each {|player| player.save}

france_lineup = france_team.each {|player| p player.last_name}
brazil_lineup = brazil_team.each {|player| p player.format_name}



team1.results
team2.results
team3.results
team4.results

team1.update()
team2.update()
team3.update()
team4.update()
# team5.update()

