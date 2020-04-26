def results
    sql ="SELECT games.* FROM games
    INNER JOIN teams
    ON teams.id = games.home_team_id OR teams.id = games.away_team_id"
    values = [@id, @home_team_id, @away_team_id]
    SqlRunner.run(sql, values)
end