require_relative 'player_creator'
require_relative 'board'

class Game

    def initialize
        @player_creator = PlayerCreator.new
    end

    def add_players
        @players = @player_creator.get_players
        puts "Welcome #{@players.join(' and ')}"
    end

    def start 

        @board = Board.new
        @board.dealBoard
        playing = true
        p1Score = 0
        p2Score = 0
        allNum = false
        diffNum = false
        allShape = false
        diffShape = false
        allFill = false
        diffFill = false
        allColor = false
        diffColor = false
        turn = 0

        while(playing) 
            puts "Player 1 score is: #{p1Score}\n"
            puts "Player 2 score is: #{p2Score}\n"
            puts "what player is picking the set? (1 or 2)\n"
            turn = gets.chomp.to_i
            @board.printBoard
            puts "what is the first card of your set? \n"
            guessOne = gets.chomp.to_i - 1
            puts "what is the second card of your set? \n"
            guessTwo = gets.chomp.to_i - 1
            puts "what is the third card of your set? \n"
            guessThree = gets.chomp.to_i - 1


            guessColor = [@board.getGuessColor(guessOne), @board.getGuessColor(guessTwo), @board.getGuessColor(guessThree)]
            guessShape = [@board.getGuessShape(guessOne), @board.getGuessShape(guessTwo), @board.getGuessShape(guessThree)]
            guessFill = [@board.getGuessFill(guessOne), @board.getGuessFill(guessTwo), @board.getGuessFill(guessThree)]
            guessNum = [@board.getGuessNum(guessOne), @board.getGuessNum(guessTwo), @board.getGuessNum(guessThree)]


            if guessColor.uniq.count == 1
                diffColor = true
            elsif guessColor.uniq.count == 3
                allColor = true
            end

            if guessShape.uniq.count == 1
                diffShape = true
            elsif guessShape.uniq.count == 3
                allShape = true
            end

            if guessFill.uniq.count == 1
                diffFill = true
            elsif guessFill.uniq.count == 3
                allFill = true
            end

            if guessNum.uniq.count == 1
                diffNum = true
            elsif guessNum.uniq.count == 3
                diffNum = true
            end

            if (diffColor || allColor) && (diffShape || allShape) && (diffFill || allFill) && (diffNum || allNum)
                puts "Nice work! You found a set."
                ##deleting is not working
                @board.delete_at(guessOne)
                @board.delete_at(guessTwo)
                @board.delete_at(guessThree)
                @board.drawNewCards(guessOne, guessTwo, guessThree)

                if turn == 1
                    p1Score = p1Score + 1
                elsif turn == 2
                    p2Score = p2Score + 1
                end
                @board.printBoard
            else
                puts "That is NOT a set"
            end

        end
    end

end