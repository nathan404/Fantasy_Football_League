# require_relative('../db/sql_runner')

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

end