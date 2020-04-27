require_relative('../db/sql_runner')

class Team

    attr_reader :id, :name
    attr_accessor :played, :wins, :draws, :losses, :goals_for, :goals_against, :points, :active

    def initialize(options)
        @id = options['id'].to_i if options['id']
        @name = options['name']
        @played = options['played'].to_i
        @wins = options['wins'].to_i
        @draws = options['draws'].to_i
        @losses = options['losses'].to_i
        @goals_for = options['goals_for'].to_i
        @goals_against = options['goals_against'].to_i
        @points = options['points'].to_i
        @active = false
    end

    def save()
        sql = "INSERT INTO teams
        (name, played, wins, draws, losses, goals_for, goals_against, points, active)
        VALUES
        ($1, $2, $3, $4, $5, $6, $7, $8, $9)
        RETURNING id"
        values = [@name, @played, @wins, @draws, @losses, @goals_for, @goals_against, @points, @active]
        result = SqlRunner.run(sql, values)
        id = result.first['id'].to_i
        @id = id
    end

    def games
        sql = "SELECT games.* FROM games
        INNER JOIN teams
        ON teams.id = games.home_team_id OR teams.id = games.away_team_id
        WHERE teams.id = $1;"
        values = [id]
        data = SqlRunner.run(sql, values)
        games = Game.map_items(data)
    end

    def results
        sql = "SELECT games.* FROM games
        INNER JOIN teams
        ON teams.id = games.home_team_id OR teams.id = games.away_team_id
        WHERE teams.id = $1;"
        values = [id]
        data = SqlRunner.run(sql, values)
        games = Game.map_items(data)
        for game in games
            result(game)
        end
    end

    def result(game)
        home_id = game.home_team_id
        away_id = game.away_team_id
        if home_id == @id.to_i or away_id == @id.to_i
            @played += 1
        end
        if home_id == @id.to_i
            @goals_for += game.home_goals
            @goals_against += game.away_goals
            if game.home_goals > game.away_goals
                @wins += 1
                @points += 3
            elsif game.home_goals == game.away_goals
                @draws += 1
                @points += 1
            else game.home_goals < game.away_goals
                @losses += 1
            end
        end
        if away_id == @id.to_i
            @goals_for += game.away_goals
            @goals_against += game.home_goals
            if game.away_goals > game.home_goals
                @wins += 1
                @points += 3
            elsif game.away_goals == game.home_goals
                @draws += 1
                @points += 1
            else game.away_goals < game.home_goals
                @losses += 1
            end
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

    def self.delete_records(teams, games)
        for team in teams
            for game in games
                team.destroy(game)
                game.delete
            end
        end
        teams.each {|team| team.update}
    end

    def update()
        sql = "UPDATE teams SET
        (name, played, wins, draws, losses, goals_for, goals_against, points, active)
        = ($1, $2, $3, $4, $5, $6, $7, $8, $9)
        WHERE id = $10"
        values = [@name, @played, @wins, @draws, @losses, @goals_for, @goals_against, @points, @active = true, @id]
        SqlRunner.run(sql, values)
    end

    def render_inactive
        sql = "UPDATE teams SET
        (name, played, wins, draws, losses, goals_for, goals_against, points, active)
        = ($1, $2, $3, $4, $5, $6, $7, $8, $9)
        WHERE id = $10"
        values = [@name, @played = 0, @wins = 0, @draws = 0, @losses = 0, @goals_for = 0, @goals_against = 0, @points = 0, @active = false, @id]
        SqlRunner.run(sql, values)
    end

    def delete()
        sql = "DELETE FROM teams WHERE id = $1"
        values = [@id]
        SqlRunner.run(sql, values)
    end

    def self.find(id)
        sql = "SELECT * FROM teams WHERE id = $1"
        values = [id]
        result = SqlRunner.run(sql, values).first
        team = Team.new(result)
        return team
    end

    def self.all()
        sql = "SELECT * FROM teams"
        team_data = SqlRunner.run(sql)
        teams = map_items(team_data)
        return teams
    end

    def self.active_teams()
        sql = "SELECT * FROM teams WHERE active = true"
        team_data = SqlRunner.run(sql)
        teams = map_items(team_data)
        teams.each {|team| team.update}
        return teams
    end

    def self.inactive_teams()
        sql = "SELECT * FROM teams WHERE active = false"
        team_data = SqlRunner.run(sql)
        teams = map_items(team_data)
        return teams
    end

    def self.delete_all()
        sql = "DELETE FROM teams"
        SqlRunner.run(sql)
    end

    def self.map_items(team_data)
        return team_data.map {|team| Team.new(team)}
    end

    def self.map_item(team_data)
        result = Team.map_items(team_data)
        return result.first
    end
    
end