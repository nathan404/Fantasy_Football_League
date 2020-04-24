require_relative('../db/sql_runner')

class Game

    attr_reader :id, :home_team_id, :away_team_id
    attr_accessor :home_goals, :away_goals

    def initialize(options)
        @id = options['id'].to_i if options['id']
        @home_team_id = options['home_team_id'].to_i
        @home_goals = options['home_goals'].to_i
        @away_team_id = options['away_team_id'].to_i
        @away_goals = options['away_goals'].to_i
    end

    def save()
        sql = "INSERT INTO games 
        (home_team_id, home_goals, away_team_id, away_goals)
        VALUES
        ($1, $2, $3, $4)
        RETURNING id"
        values = [@home_team_id, @home_goals, @away_team_id, @away_goals]
        result = SqlRunner.run(sql, values)
        id = result.first['id']
        @id = id
    end

    def update()
        sql = "UPDATE games SET
        (home_team_id, home_goals, away_team_id, away_goals)
        = ($1, $2, $3, $4)
        WHERE id = $5"
        values = [@home_team_id, @home_goals, @away_team_id, @away_goals, @id]
        SqlRunner.run(sql, values)
    end

    def delete()
        sql = "DELETE FROM games WHERE id = $1"
        values = [@id]
        SqlRunner.run(sql, values)
    end

    def self.delete_all()
        sql = "DELETE FROM games"
        SqlRunner.run(sql)
    end

end