require_relative "./players.rb"
require_relative "./math_questions.rb"

class Turns
    
    def initialize
        @players = [Player.new('Player 1'), Player.new('Player 2')]
        @player_index = 0
      end

      def welcome
        puts "Player 1 will go first, then Player 2 and vice versa."
      end
    
      def play
        welcome
        while (two_players?) do
          turn = Questions.new(@players[@player_index])
          turn.question
          turn.get_user_input
          turn.answer_validation
          score_validation
          puts "------------------ Next Turn ----------------------"
          next_player
        end
        end_game
      end
    
      def score_validation
        puts "#{@players[0].name} : #{@players[0].life}/3 #{@players[1].name} : #{@players[1].life}/3"
    
      end
    
      def end_game
        if @players[0].end_of_game?
          puts "#{@players[1].name} wins!"
        else
          puts "#{@players[0].name} wins!"
        end
      end
    
      private
    
      def next_player
        if @player_index == 0
          @player_index = 1
        else
          @player_index = 0
        end
      end
    
      def two_players?
        !(@players[0].end_of_game? || @players[1].end_of_game?)
      end
    end
