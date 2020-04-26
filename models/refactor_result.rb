def sort_points
    sql = "SELECT games.* FROM games
    INNER JOIN teams
    ON teams.id = games.home_team_id OR teams.id = games.away_team_id
    WHERE teams.id = $1;"
    values = [id]
    data = SqlRunner.run(sql, values)
    games = Game.map_items(data)
    for game in games
        destroy(game)
    end
end

def destroy(game)
    home_id = game.home_team_id
    away_id = game.away_team_id
    if home_id == @id.to_i or away_id == @id.to_i
        @played -= 1
    end
    if home_id == @id.to_i
        @goals_for -= game.home_goals
        @goals_against -= game.away_goals
        if game.home_goals > game.away_goals
            @wins -= 1
            @points -= 3
        elsif game.home_goals == game.away_goals
            @draws -= 1
            @points -= 1
        else game.home_goals < game.away_goals
            @losses -= 1
        end
    end
    if away_id == @id.to_i
        @goals_for -= game.away_goals
        @goals_against -= game.home_goals
        if game.away_goals > game.home_goals
            @wins -= 1
            @points -= 3
        elsif game.away_goals == game.home_goals
            @draws -= 1
            @points -= 1
        else game.away_goals < game.home_goals
            @losses -= 1
        end
    end
end