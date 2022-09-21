require_relative 'player_creator'
require_relative 'board'

class Game
    #creates the players
    def initialize
        @player_creator = PlayerCreator.new
    end
    #Adds a player to the match
    def add_players
        @players = @player_creator.get_players
        puts "Welcome #{@players.join(' and ')}"
    end
    #start of game
    def start 
        #initialization
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
        #game functionality
        while(playing) 
            #determine turn
            puts "Player 1 score is: #{p1Score}\n"
            puts "Player 2 score is: #{p2Score}\n"
            puts "what player is picking the set? (1 or 2)\n"
            turn = gets.chomp.to_i
            @board.printBoard
            #get guesses for a set
            puts "what is the first card of your set? \n"
            guessOne = gets.chomp.to_i - 1
            puts "what is the second card of your set? \n"
            guessTwo = gets.chomp.to_i - 1
            puts "what is the third card of your set? \n"
            guessThree = gets.chomp.to_i - 1

            #group the individual guess card's attributes
            guessColor = [@board.getGuessColor(guessOne), @board.getGuessColor(guessTwo), @board.getGuessColor(guessThree)]
            guessShape = [@board.getGuessShape(guessOne), @board.getGuessShape(guessTwo), @board.getGuessShape(guessThree)]
            guessFill = [@board.getGuessFill(guessOne), @board.getGuessFill(guessTwo), @board.getGuessFill(guessThree)]
            guessNum = [@board.getGuessNum(guessOne), @board.getGuessNum(guessTwo), @board.getGuessNum(guessThree)]

            #set the set conditions
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
            #determine if a set was found
            if (diffColor || allColor) && (diffShape || allShape) && (diffFill || allFill) && (diffNum || allNum)
                puts "Nice work! You found a set."
                #fixing the deck
                @board.drawNewCard(guessOne)
                @board.drawNewCard(guessTwo)
                @board.drawNewCard(guessThree)
                #give points to player
                if turn == 1
                    p1Score = p1Score + 1
                elsif turn == 2
                    p2Score = p2Score + 1
                end

            else
                puts "That is NOT a set"

            end
            #will the game keep playing
            puts "Would you like to play again? (y/n)\n"
                choice = gets.chomp
                if choice == "n"
                    playing = false
                    puts "Final score for Player 1: #{p1Score}"
                    puts "Final score for Player 2: #{p2Score}"
                end

        end
    end

end