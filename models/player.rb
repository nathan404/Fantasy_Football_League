require_relative('../db/sql_runner')

class Player

    attr_reader :id, :first_name, :last_name, :country, :position
    attr_accessor :goals

    def initialize(options)
        @id = options['id'].to_i if options['id']
        @first_name = options['first_name']
        @last_name = options['last_name']
        @country_id = options['country'].to_i
        @position = options['position']
        @goals = options['goals'].to_i
    end
end