
require_relative "./players.rb"

class Questions

    def initialize(player)
        @player = player
        @user_input = nil
        @number1 = Random.new.rand(1...20)
        @number2 = Random.new.rand(1...20)
        @answer = @number1 + @number2
    end

    def question
        puts "What is #{@number1} + #{@number2} ???"
    end

    def get_user_input
        @user_input = gets.chomp
    end

    def answer_validation
        validation = @answer.to_s == @user_input
        if validation == true
            puts "Correct!!"
        else
            puts "Nope, that's wrong!"
            @player.wrong
        end
    end
end