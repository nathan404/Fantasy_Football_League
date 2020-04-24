# require_relative('../db/sql_runner')

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

end