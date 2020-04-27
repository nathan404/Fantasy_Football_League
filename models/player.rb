require_relative('../db/sql_runner')

class Player

    attr_reader :id, :first_name, :last_name, :country, :position
    attr_accessor :goals

    def initialize(options)
        @id = options['id'].to_i if options['id']
        @first_name = options['first_name']
        @last_name = options['last_name']
        @country_id = options['country_id'].to_i
        @position = options['position']
        @goals = options['goals'].to_i
    end

    def save()
        sql = "INSERT into players
        (first_name, last_name, country_id, position, goals)
        VALUES
        ($1, $2, $3, $4, $5)
        RETURNING id"
        values = [@first_name, @last_name, @country, @position, @goals]
        result = SqlRunner.run(sql, values)
        id = result.first['id'].to_i
        @id = id
    end

    def format_name
        if @first_name == nil
        return "#{@first_name}#{@last_name}"
        else return "#{@first_name} #{@last_name}"
        end
    end

    def self.delete_all()
        sql = "DELETE FROM players"
        SqlRunner.run(sql)
    end

end