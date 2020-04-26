team6 = Team.new({
    'name' => 'Nigeria',
    'played' => 0,
    'wins' => 0,
    'draws' => 0,
    'losses' => 0,
    'goals_for' => 0,
    'goals_against' => 0,
    'points' => 0
})

team7 = Team.new({
    'name' => 'Italy',
    'played' => 0,
    'wins' => 0,
    'draws' => 0,
    'losses' => 0,
    'goals_for' => 0,
    'goals_against' => 0,
    'points' => 0
})

team8 = Team.new({
    'name' => 'Argentina',
    'played' => 0,
    'wins' => 0,
    'draws' => 0,
    'losses' => 0,
    'goals_for' => 0,
    'goals_against' => 0,
    'points' => 0
})

team9 = Team.new({
    'name' => 'Germany',
    'played' => 0,
    'wins' => 0,
    'draws' => 0,
    'losses' => 0,
    'goals_for' => 0,
    'goals_against' => 0,
    'points' => 0
})

team10 = Team.new({
    'name' => 'Denmark',
    'played' => 0,
    'wins' => 0,
    'draws' => 0,
    'losses' => 0,
    'goals_for' => 0,
    'goals_against' => 0,
    'points' => 0
})

# team6.save()
# team7.save()
# team8.save()
# team9.save()
# team10.save()


# CURRENTLY REDUNDANT METHODS 
# SIMILAR FOR CONCEDED

# def total_home_goals_scored
#     sql = "SELECT games.home_goals FROM games
#     INNER JOIN teams
#     ON teams.id = games.home_team_id
#     WHERE teams.id = $1;"
#     values = [id]
#     data = SqlRunner.run(sql, values)
#     goals = data.map {|number| number['home_goals'].to_i}
#     total = 0
#     for goal in goals
#         total += goal
#     end
#     total
# end  