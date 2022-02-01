require_relative "./turns.rb"

class Player

    attr_reader :name, :life

    def initialize(name)
        @name = name
        @life = 3
    end

    def wrong
        @life -= 1
    end

    def end_of_game?
        @life == 0
    end
end