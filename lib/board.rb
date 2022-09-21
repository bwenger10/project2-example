require_relative 'deck'
require_relative 'card'
class Board
    #initialization
    def initialize
        @board = Array.new
        @deck = Deck.new
        @deck.printDeck
    end
    #deal the game board
    def dealBoard
        @deck.fillDeck
        i = 0
        loop do
            i = i + 1
            @board << @deck.pullCard
            if i == 12
                break
            end
        end
    end
    #grab a new card from deck for the board
    def drawNewCard(ind)
        @board.delete_at(ind)
        @board.insert(ind) << @deck.pullCard
    end
    #output board to console
    def printBoard
        i = 0
        loop do
            i = i + 1
            puts "#{i}. #{@board[i-1].getCard}"
            if i == 12
                break
            end
        end
    end
    #getter methods
    def getGuessColor(index)
        @board[index].getColor
    end

    def getGuessShape(index)
        @board[index].getShape
    end

    def getGuessFill(index)
        @board[index].getFill
    end

    def getGuessNum(index)
        @board[index].getNum
    end

end