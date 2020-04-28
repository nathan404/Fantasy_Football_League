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

team11 = Team.new({
    'name' => 'England',
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
team11.save()

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

f1 = Player.new({'first_name' => 'Fabien', 'last_name' => 'Barthez', 'country_id' => team1.id, 'position' => 'GK', 'club' => 'Monaco', 'shirt_number' => '16'})
f2 = Player.new({'first_name' => 'Lilian', 'last_name' => 'Thuram', 'country_id' => team1.id, 'position' => 'RB', 'club' => 'Parma', 'shirt_number' => '15'})
f3 = Player.new({'first_name' => 'Marcel', 'last_name' => 'Desailly', 'country_id' => team1.id, 'position' => 'CB', 'club' => 'AC Milan', 'shirt_number' => '8'})
f4 = Player.new({'first_name' => 'Frank', 'last_name' => 'Leboeuf', 'country_id' => team1.id, 'position' => 'CB', 'club' => 'Chelsea', 'shirt_number' => '18'})
f5 = Player.new({'first_name' => 'Bixente', 'last_name' => 'Lizarazu', 'country_id' => team1.id, 'position' => 'LB', 'club' => 'Bayern Munich', 'shirt_number' => '3'})
f6 = Player.new({'first_name' => 'Didier', 'last_name' => 'Deschamps', 'country_id' => team1.id, 'position' => 'DM', 'club' => 'Juventus', 'shirt_number' => '7'})
f7 = Player.new({'first_name' => 'Christian', 'last_name' => 'Karembeu', 'country_id' => team1.id, 'position' => 'CM', 'club' => 'Real Madrid', 'shirt_number' => '19'})
f8 = Player.new({'first_name' => 'Emmanuel', 'last_name' => 'Petit', 'country_id' => team1.id, 'position' => 'CM', 'club' => 'Arsenal', 'shirt_number' => '17'})
f9 = Player.new({'first_name' => 'Youri', 'last_name' => 'Djorkaeff', 'country_id' => team1.id, 'position' => 'AM', 'club' => 'Inter Milan', 'shirt_number' => '6'})
f10 = Player.new({'first_name' => 'Zinedine','last_name' => 'Zidane', 'country_id' => team1.id, 'position' => 'AM', 'club' => 'Juventus', 'shirt_number' => '10'})
f11 = Player.new({'first_name' => 'Stephane','last_name' => 'Guivarch', 'country_id' => team1.id, 'position' => 'CF', 'club' => 'Auxerre', 'shirt_number' => '9'})

b1 = Player.new({'first_name' => 'Claudio', 'last_name' => 'Taffarel', 'country_id' => team2.id, 'position' => 'GK', 'club' => 'Atletico Mineiro', 'shirt_number' => '1'})
b2 = Player.new({'first_name' => nil, 'last_name' => 'Cafu', 'country_id' => team2.id, 'position' => 'RB', 'club' => 'Roma', 'shirt_number' => '2'})
b3 = Player.new({'first_name' => nil, 'last_name' => 'Aldair', 'country_id' => team2.id, 'position' => 'CB', 'club' => 'Roma', 'shirt_number' => '3'})
b4 = Player.new({'first_name' => 'Junior', 'last_name' => 'Baiano', 'country_id' => team2.id, 'position' => 'CB', 'club' => 'Flamengo', 'shirt_number' => '4'})
b5 = Player.new({'first_name' => 'Roberto', 'last_name' => 'Carlos', 'country_id' => team2.id, 'position' => 'LB', 'club' => 'Real Madrid', 'shirt_number' => '6'})
b6 = Player.new({'first_name' => 'Cesar', 'last_name' => 'Sampaio', 'country_id' => team2.id, 'position' => 'CM', 'club' => 'Yokohama', 'shirt_number' => '5'})
b7 = Player.new({'first_name' => nil, 'last_name' => 'Dunga', 'country_id' => team2.id, 'position' => 'CM', 'club' => 'Jubilo Iwata', 'shirt_number' => '8'})
b8 = Player.new({'first_name' => nil, 'last_name' => 'Rivaldo', 'country_id' => team2.id, 'position' => 'AM', 'club' => 'Barcelona', 'shirt_number' => '10'})
b9 = Player.new({'first_name' => nil, 'last_name' => 'Leonardo', 'country_id' => team2.id, 'position' => 'AM', 'club' => 'AC Milan', 'shirt_number' => '18'})
b10 = Player.new({'first_name' => nil, 'last_name' => 'Bebeto', 'country_id' => team2.id, 'position' => 'CF', 'club' => 'Botafogo', 'shirt_number' => '20'})
b11 = Player.new({'first_name' => nil, 'last_name' => 'Ronaldo', 'country_id' => team2.id, 'position' => 'CF', 'club' => 'Inter Milan', 'shirt_number' => '9'})

c1 = Player.new({'first_name' => 'Drazen', 'last_name' => 'Ladic', 'country_id' => team3.id, 'position' => 'GK', 'club' => 'Dinamo Zagreb', 'shirt_number' => '1'})
c2 = Player.new({'first_name' => 'Mario', 'last_name' => 'Stanic', 'country_id' => team3.id, 'position' => 'RB', 'club' => 'Parma', 'shirt_number' => '13'})
c3 = Player.new({'first_name' => 'Igor', 'last_name' => 'Stimac', 'country_id' => team3.id, 'position' => 'CB', 'club' => 'Derby County', 'shirt_number' => '4'})
c4 = Player.new({'first_name' => 'Dario', 'last_name' => 'Simic', 'country_id' => team3.id, 'position' => 'CB', 'club' => 'Dinamo Zagreb', 'shirt_number' => '20'})
c5 = Player.new({'first_name' => 'Slaven', 'last_name' => 'Bilic', 'country_id' => team3.id, 'position' => 'CB', 'club' => 'Everton', 'shirt_number' => '6'})
c6 = Player.new({'first_name' => 'Robert', 'last_name' => 'Jarni', 'country_id' => team3.id, 'position' => 'LB', 'club' => 'Real Betis', 'shirt_number' => '17'})
c7 = Player.new({'first_name' => 'Zvonimir', 'last_name' => 'Soldo', 'country_id' => team3.id, 'position' => 'DM', 'club' => 'Stuttgart', 'shirt_number' => '14'})
c8 = Player.new({'first_name' => 'Aljosa', 'last_name' => 'Asanovic', 'country_id' => team3.id, 'position' => 'CM', 'club' => 'Napoli', 'shirt_number' => '7'})
c9 = Player.new({'first_name' => 'Zvonimir', 'last_name' => 'Boban', 'country_id' => team3.id, 'position' => 'CM', 'club' => 'AC Milan', 'shirt_number' => '10'})
c10 = Player.new({'first_name' => 'Robert','last_name' => 'Prosinecki', 'country_id' => team3.id, 'position' => 'CM', 'club' => 'Dinamo Zagreb', 'shirt_number' => '8'})
c11 = Player.new({'first_name' => 'Davor','last_name' => 'Suker', 'country_id' => team3.id, 'position' => 'CF', 'club' => 'Real Madrid', 'shirt_number' => '9'})

n1 = Player.new({'first_name' => 'Edwin', 'last_name' => 'van der Sar', 'country_id' => team4.id, 'position' => 'GK', 'club' => 'Ajax', 'shirt_number' => '1'})
n2 = Player.new({'first_name' => 'Michael', 'last_name' => 'Reiziger', 'country_id' => team4.id, 'position' => 'RB', 'club' => 'Barcelona', 'shirt_number' => '2'})
n3 = Player.new({'first_name' => 'Jaap', 'last_name' => 'Stam', 'country_id' => team4.id, 'position' => 'CB', 'club' => 'PSV', 'shirt_number' => '3'})
n4 = Player.new({'first_name' => 'Frank', 'last_name' => 'de Boer', 'country_id' => team4.id, 'position' => 'CB', 'club' => 'Ajax', 'shirt_number' => '4'})
n5 = Player.new({'first_name' => 'Artur', 'last_name' => 'Numan', 'country_id' => team4.id, 'position' => 'LB', 'club' => 'PSV', 'shirt_number' => '5'})
n6 = Player.new({'first_name' => 'Wim', 'last_name' => 'Jonk', 'country_id' => team4.id, 'position' => 'CM', 'club' => 'PSV', 'shirt_number' => '6'})
n7 = Player.new({'first_name' => 'Edgar', 'last_name' => 'Davids', 'country_id' => team4.id, 'position' => 'CM', 'club' => 'Juventus', 'shirt_number' => '16'})
n8 = Player.new({'first_name' => 'Ronald', 'last_name' => 'de Boer', 'country_id' => team4.id, 'position' => 'RW', 'club' => 'Ajax', 'shirt_number' => '7'})
n9 = Player.new({'first_name' => 'Philip', 'last_name' => 'Cocu', 'country_id' => team4.id, 'position' => 'LW', 'club' => 'PSV', 'shirt_number' => '11'})
n10 = Player.new({'first_name' => 'Dennis', 'last_name' => 'Bergkamp', 'country_id' => team4.id, 'position' => 'SS', 'club' => 'Arsenal', 'shirt_number' => '8'})
n11 = Player.new({'first_name' => 'Patrick', 'last_name' => 'Kluivert', 'country_id' => team4.id, 'position' => 'CF', 'club' => 'AC Milan', 'shirt_number' => '9'})

# s1 = Player.new({'first_name' => 'Jim', 'last_name' => 'Leighton', 'country_id' => team5.id, 'position' => 'GK', 'club' => 'Aberdeen', 'shirt_number' => '1'})
# s2 = Player.new({'first_name' => 'Tom', 'last_name' => 'Boyd', 'country_id' => team5.id, 'position' => 'RB', 'club' => 'Celtic', 'shirt_number' => '3'})
# s3 = Player.new({'first_name' => 'Colin', 'last_name' => 'Calderwood', 'country_id' => team5.id, 'position' => 'CB', 'club' => 'Tottenham', 'shirt_number' => '4'})
# s4 = Player.new({'first_name' => 'Colin', 'last_name' => 'Hendry', 'country_id' => team5.id, 'position' => 'CB', 'club' => 'Blackburn', 'shirt_number' => '5'})
# s5 = Player.new({'first_name' => 'Christian', 'last_name' => 'Dailly', 'country_id' => team5.id, 'position' => 'LB', 'club' => 'Derby County', 'shirt_number' => '22'})
# s6 = Player.new({'first_name' => 'Paul', 'last_name' => 'Lambert', 'country_id' => team5.id, 'position' => 'RM', 'club' => 'Celtic', 'shirt_number' => '14'})
# s7 = Player.new({'first_name' => 'Craig', 'last_name' => 'Burley', 'country_id' => team5.id, 'position' => 'CM', 'club' => 'Celtic', 'shirt_number' => '8'})
# s8 = Player.new({'first_name' => 'John', 'last_name' => 'Collins', 'country_id' => team5.id, 'position' => 'LM', 'club' => 'Monaco', 'shirt_number' => '11'})
# s9 = Player.new({'first_name' => 'Kevin', 'last_name' => 'Gallacher', 'country_id' => team5.id, 'position' => 'RF', 'club' => 'Blackburn', 'shirt_number' => '7'})
# s10 = Player.new({'first_name' => 'Gordon', 'last_name' => 'Durie', 'country_id' => team5.id, 'position' => 'CF', 'club' => 'Rangers', 'shirt_number' => '9'})
# s11 = Player.new({'first_name' => 'Darren', 'last_name' => 'Jackson', 'country_id' => team5.id, 'position' => 'LF', 'club' => 'Celtic', 'shirt_number' => '10'})

# ni1 = Player.new({'first_name' => 'Peter', 'last_name' => 'Rufai', 'country_id' => team6.id, 'position' => 'GK', 'club' => 'Deportivo La Coruna', 'shirt_number' => '1'})
# ni2 = Player.new({'first_name' => 'Mutiu', 'last_name' => 'Adepoju', 'country_id' => team6.id, 'position' => 'RB', 'club' => 'Real Sociedad', 'shirt_number' => '8'})
# ni3 = Player.new({'first_name' => 'Taribo', 'last_name' => 'West', 'country_id' => team6.id, 'position' => 'CB', 'club' => 'Inter Milan', 'shirt_number' => '6'})
# ni4 = Player.new({'first_name' => 'Uche', 'last_name' => 'Okechukwu', 'country_id' => team6.id, 'position' => 'CB', 'club' => 'Fenerbahce', 'shirt_number' => '5'})
# ni5 = Player.new({'first_name' => 'Celestine', 'last_name' => 'Babayaro', 'country_id' => team6.id, 'position' => 'LB', 'club' => 'Chelsea', 'shirt_number' => '3'})
# ni6 = Player.new({'first_name' => 'Sunday', 'last_name' => 'Oliseh', 'country_id' => team6.id, 'position' => 'DM', 'club' => 'Ajax', 'shirt_number' => '15'})
# ni7 = Player.new({'first_name' => 'Finidi', 'last_name' => 'George', 'country_id' => team6.id, 'position' => 'RM', 'club' => 'Real Betis', 'shirt_number' => '7'})
# ni8 = Player.new({'first_name' => 'Garba', 'last_name' => 'Lawal', 'country_id' => team6.id, 'position' => 'LM', 'club' => 'Roda JC', 'shirt_number' => '11'})
# ni9 = Player.new({'first_name' => 'Jay Jay', 'last_name' => 'Okocha', 'country_id' => team6.id, 'position' => 'AM', 'club' => 'Fenerbahce', 'shirt_number' => '10'})
# ni10 = Player.new({'first_name' => 'Nwankwo', 'last_name' => 'Kanu', 'country_id' => team6.id, 'position' => 'SS', 'club' => 'Inter Milan', 'shirt_number' => '4'})
# ni11 = Player.new({'first_name' => 'Victor', 'last_name' => 'Ikpeba', 'country_id' => team6.id, 'position' => 'CF', 'club' => 'Monaco', 'shirt_number' => '20'})

# i1 = Player.new({'first_name' => 'Gianluca', 'last_name' => 'Pagliuca', 'country_id' => team7.id, 'position' => 'GK', 'club' => 'Inter Milan', 'shirt_number' => '12'})
# i2 = Player.new({'first_name' => 'Alessandro', 'last_name' => 'Costacurta', 'country_id' => team7.id, 'position' => 'RB', 'club' => 'AC Milan', 'shirt_number' => '5'})
# i3 = Player.new({'first_name' => 'Fabio', 'last_name' => 'Cannavaro', 'country_id' => team7.id, 'position' => 'CB', 'club' => 'Parma', 'shirt_number' => '4'})
# i4 = Player.new({'first_name' => 'Alessandro', 'last_name' => 'Nesta', 'country_id' => team7.id, 'position' => 'CB', 'club' => 'Lazio', 'shirt_number' => '6'})
# i5 = Player.new({'first_name' => 'Paolo', 'last_name' => 'Maldini', 'country_id' => team7.id, 'position' => 'LB', 'club' => 'AC Milan', 'shirt_number' => '3'})
# i6 = Player.new({'first_name' => 'Dino', 'last_name' => 'Baggio', 'country_id' => team7.id, 'position' => 'CM', 'club' => 'Parma', 'shirt_number' => '11'})
# i7 = Player.new({'first_name' => 'Demetrio', 'last_name' => 'Albertini', 'country_id' => team7.id, 'position' => 'CM', 'club' => 'AC Milan', 'shirt_number' => '9'})
# i8 = Player.new({'first_name' => 'Luigi', 'last_name' => 'Di Biagio', 'country_id' => team7.id, 'position' => 'CM', 'club' => 'Roma', 'shirt_number' => '14'})
# i9 = Player.new({'first_name' => 'Francesco', 'last_name' => 'Moriero', 'country_id' => team7.id, 'position' => 'SS', 'club' => 'Inter Milan', 'shirt_number' => '17'})
# i10 = Player.new({'first_name' => 'Roberto', 'last_name' => 'Baggio', 'country_id' => team7.id, 'position' => 'SS', 'club' => 'Bologna', 'shirt_number' => '18'})
# i11 = Player.new({'first_name' => 'Christian', 'last_name' => 'Vieri', 'country_id' => team7.id, 'position' => 'CF', 'club' => 'Atletico Madrid', 'shirt_number' => '21'})

# a1 = Player.new({'first_name' => 'Carlos', 'last_name' => 'Roa', 'country_id' => team8.id, 'position' => 'GK', 'club' => 'Real Mallorca', 'shirt_number' => '1'})
# a2 = Player.new({'first_name' => 'Javier', 'last_name' => 'Zanetti', 'country_id' => team8.id, 'position' => 'RB', 'club' => 'Inter Milan', 'shirt_number' => '22'})
# a3 = Player.new({'first_name' => 'Roberto', 'last_name' => 'Ayala', 'country_id' => team8.id, 'position' => 'CB', 'club' => 'Napoli', 'shirt_number' => '2'})
# a4 = Player.new({'first_name' => 'Jose', 'last_name' => 'Chamot', 'country_id' => team8.id, 'position' => 'CB', 'club' => 'Lazio', 'shirt_number' => '3'})
# a5 = Player.new({'first_name' => 'Roberto', 'last_name' => 'Sensini', 'country_id' => team8.id, 'position' => 'LB', 'club' => 'Parma', 'shirt_number' => '6'})
# a6 = Player.new({'first_name' => 'Matias', 'last_name' => 'Almeyda', 'country_id' => team8.id, 'position' => 'DM', 'club' => 'Lazio', 'shirt_number' => '5'})
# a7 = Player.new({'first_name' => 'Diego', 'last_name' => 'Simeone', 'country_id' => team8.id, 'position' => 'CM', 'club' => 'Inter Milan', 'shirt_number' => '8'})
# a8 = Player.new({'first_name' => 'Juan Sebastian', 'last_name' => 'Veron', 'country_id' => team8.id, 'position' => 'CM', 'club' => 'Sampdoria', 'shirt_number' => '11'})
# a9 = Player.new({'first_name' => 'Ariel', 'last_name' => 'Ortega', 'country_id' => team8.id, 'position' => 'AM', 'club' => 'Valencia', 'shirt_number' => '10'})
# a10 = Player.new({'first_name' => 'Claudio', 'last_name' => 'Lopez', 'country_id' => team8.id, 'position' => 'SS', 'club' => 'Valencia', 'shirt_number' => '7'})
# a11 = Player.new({'first_name' => 'Gabriel', 'last_name' => 'Batistuta', 'country_id' => team8.id, 'position' => 'CF', 'club' => 'Fiorentina', 'shirt_number' => '9'})

# g1 = Player.new({'first_name' => 'Andreas', 'last_name' => 'Kopke', 'country_id' => team9.id, 'position' => 'GK', 'club' => 'Marseille', 'shirt_number' => '1'})
# g2 = Player.new({'first_name' => 'Jorg', 'last_name' => 'Heinrich', 'country_id' => team9.id, 'position' => 'RB', 'club' => 'Borussia Dortmund', 'shirt_number' => '3'})
# g3 = Player.new({'first_name' => 'Christian', 'last_name' => 'Worns', 'country_id' => team9.id, 'position' => 'CB', 'club' => 'Bayer Leverkusen', 'shirt_number' => '2'})
# g4 = Player.new({'first_name' => 'Lothar', 'last_name' => 'Matthaus', 'country_id' => team9.id, 'position' => 'CB', 'club' => 'Bayern Munich', 'shirt_number' => '8'})
# g5 = Player.new({'first_name' => 'Jurgen', 'last_name' => 'Kohler', 'country_id' => team9.id, 'position' => 'CB', 'club' => 'Borussia Dortmund', 'shirt_number' => '4'})
# g6 = Player.new({'first_name' => 'Michael', 'last_name' => 'Tarnat', 'country_id' => team9.id, 'position' => 'LB', 'club' => 'Bayern Munich', 'shirt_number' => '21'})
# g7 = Player.new({'first_name' => 'Dietmar', 'last_name' => 'Hamann', 'country_id' => team9.id, 'position' => 'CM', 'club' => 'Bayern Munich', 'shirt_number' => '16'})
# g8 = Player.new({'first_name' => 'Jens', 'last_name' => 'Jeremies', 'country_id' => team9.id, 'position' => 'CM', 'club' => '1860 Munich', 'shirt_number' => '13'})
# g9 = Player.new({'first_name' => 'Thomas', 'last_name' => 'Hassler', 'country_id' => team9.id, 'position' => 'CM', 'club' => 'Karlruhe', 'shirt_number' => '10'})
# g10 = Player.new({'first_name' => 'Oliver', 'last_name' => 'Bierhoff', 'country_id' => team9.id, 'position' => 'CF', 'club' => 'Udinese', 'shirt_number' => '20'})
# g11 = Player.new({'first_name' => 'Jurgen', 'last_name' => 'Klinsmann', 'country_id' => team9.id, 'position' => 'CF', 'club' => 'Tottenham', 'shirt_number' => '18'})

# d1 = Player.new({'first_name' => 'Peter', 'last_name' => 'Schmeichel', 'country_id' => team10.id, 'position' => 'GK', 'club' => 'Manchester United', 'shirt_number' => '1'})
# d2 = Player.new({'first_name' => 'Michael', 'last_name' => 'Schjonberg', 'country_id' => team10.id, 'position' => 'RB', 'club' => 'Kaiserslautern', 'shirt_number' => '2'})
# d3 = Player.new({'first_name' => 'Marc', 'last_name' => 'Rieper', 'country_id' => team10.id, 'position' => 'CB', 'club' => 'Celtic', 'shirt_number' => '3'})
# d4 = Player.new({'first_name' => 'Jes', 'last_name' => 'Hogh', 'country_id' => team10.id, 'position' => 'CB', 'club' => 'Fenerbahce', 'shirt_number' => '4'})
# d5 = Player.new({'first_name' => 'Thomas', 'last_name' => 'Helveg', 'country_id' => team10.id, 'position' => 'CB', 'club' => 'Udinese', 'shirt_number' => '6'})
# d6 = Player.new({'first_name' => 'Soren', 'last_name' => 'Colding', 'country_id' => team10.id, 'position' => 'LB', 'club' => 'Brondby', 'shirt_number' => '12'})
# d7 = Player.new({'first_name' => 'Michael', 'last_name' => 'Laudrup', 'country_id' => team10.id, 'position' => 'LW', 'club' => 'Ajax', 'shirt_number' => '10'})
# d8 = Player.new({'first_name' => 'Morten', 'last_name' => 'Wieghorst', 'country_id' => team10.id, 'position' => 'CM', 'club' => 'Celtic', 'shirt_number' => '14'})
# d9 = Player.new({'first_name' => 'Martin', 'last_name' => 'Jorgensen', 'country_id' => team10.id, 'position' => 'RW', 'club' => 'Udinese', 'shirt_number' => '21'})
# d10 = Player.new({'first_name' => 'Brian', 'last_name' => 'Laudrup', 'country_id' => team10.id, 'position' => 'SS', 'club' => 'Rangers', 'shirt_number' => '11'})
# d11 = Player.new({'first_name' => 'Ebbe', 'last_name' => 'Sand', 'country_id' => team10.id, 'position' => 'CF', 'club' => 'Brondby', 'shirt_number' => '19'})

# e1 = Player.new({'first_name' => 'David', 'last_name' => 'Seaman', 'country_id' => team11.id, 'position' => 'GK', 'club' => 'Arsenal', 'shirt_number' => '1'})
# e2 = Player.new({'first_name' => 'Graeme', 'last_name' => 'Le Saux', 'country_id' => team11.id, 'position' => 'RB', 'club' => 'Chelsea', 'shirt_number' => '3'})
# e3 = Player.new({'first_name' => 'Gary', 'last_name' => 'Neville', 'country_id' => team11.id, 'position' => 'CB', 'club' => 'Manchester United', 'shirt_number' => '12'})
# e4 = Player.new({'first_name' => 'Tony', 'last_name' => 'Adams', 'country_id' => team11.id, 'position' => 'CB', 'club' => 'Arsenal', 'shirt_number' => '5'})
# e5 = Player.new({'first_name' => 'Sol', 'last_name' => 'Campbell', 'country_id' => team11.id, 'position' => 'CB', 'club' => 'Tottenham', 'shirt_number' => '2'})
# e6 = Player.new({'first_name' => 'Darren', 'last_name' => 'Anderton', 'country_id' => team11.id, 'position' => 'LB', 'club' => 'Tottenham', 'shirt_number' => '14'})
# e7 = Player.new({'first_name' => 'David', 'last_name' => 'Beckham', 'country_id' => team11.id, 'position' => 'CM', 'club' => 'Manchester United', 'shirt_number' => '7'})
# e8 = Player.new({'first_name' => 'Paul', 'last_name' => 'Ince', 'country_id' => team11.id, 'position' => 'CM', 'club' => 'Liverpool', 'shirt_number' => '4'})
# e9 = Player.new({'first_name' => 'Paul', 'last_name' => 'Scholes', 'country_id' => team11.id, 'position' => 'CM', 'club' => 'Manchester United', 'shirt_number' => '16'})
# e10 = Player.new({'first_name' => 'Michael', 'last_name' => 'Owen', 'country_id' => team11.id, 'position' => 'CF', 'club' => 'Liverpool', 'shirt_number' => '20'})
# e11 = Player.new({'first_name' => 'Alan', 'last_name' => 'Shearer', 'country_id' => team11.id, 'position' => 'CF', 'club' => 'Newcastle United', 'shirt_number' => '9'})

france_team = [f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11]
brazil_team = [b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11]
croatia_team = [c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11]
netherlands_team = [n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11]
# scotland_team = [s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11]
# nigeria_team = [ni1, ni2, ni3, ni4, ni5, ni6, ni7, ni8, ni9, ni10, ni11]
# italy_team = [i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11]
# argentina_team = [a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11]
# germany_team = [g1, g2, g3, g4, g5, g6, g7, g8, g9, g10, g11]
# denmark_team = [d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11]
# england_team = [e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11]

france_team.each {|player| player.save}
brazil_team.each {|player| player.save}
croatia_team.each {|player| player.save}
netherlands_team.each {|player| player.save}
# scotland_team.each {|player| player.save}
# nigeria_team.each {|player| player.save}
# italy_team.each {|player| player.save}
# argentina_team.each {|player| player.save}
# germany_team.each {|player| player.save}
# denmark_team.each {|player| player.save}
# england_team.each {|player| player.save}

team1.results
team2.results
team3.results
team4.results

team1.update()
team2.update()
team3.update()
team4.update()
