require_relative('../db/sql_runner')

class Team

    attr_reader :id, :name
    attr_accessor :played, :wins, :draws, :losses, :goals_for, :goals_against, :points

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
    end

    def save()
        sql = "INSERT INTO teams
        (name, played, wins, draws, losses, goals_for, goals_against, points)
        VALUES
        ($1, $2, $3, $4, $5, $6, $7, $8)
        RETURNING id"
        values = [@name, @played, @wins, @draws, @losses, @goals_for, @goals_against, @points]
        result = SqlRunner.run(sql, values)
        id = result.first['id']
        @id = id
    end

    def update()
        sql = "UPDATE teams SET
        (name, played, wins, draws, losses, goals_for, goals_against, points)
        = ($1, $2, $3, $4, $5, $6, $7, $8)
        WHERE id = $9"
        values = [@name, @played, @wins, @draws, @losses, @goals_for, @goals_against, @points, @id]
        SqlRunner.run(sql, values)
    end

    def delete()
        sql = "DELETE FROM teams WHERE id = $1"
        values = [@id]
        SqlRunner.run(sql, values)
    end
    
end