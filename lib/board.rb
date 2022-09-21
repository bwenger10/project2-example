require_relative 'deck'
require_relative 'card'
class Board
    def initialize
        @board = Array.new
        @deck = Deck.new
        @deck.printDeck
    end

    def dealBoard
        @deck.fillDeck
        i = 0
        loop do
            i = i + 1
            @board << @deck.pullCard
            #puts "card added to board\n"
            #puts "#{@board[i-1].getCard}"
            if i == 12
                break
            end
        end
    end

    def drawNewCards(ind1, ind2, ind3)
        
        @board.insert(ind1) << @deck.pullCard
        @board.insert(ind2) << @deck.pullCard
        @board.insert(ind3) << @deck.pullCard
        
    end

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