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
            puts "#{@board[i-1].getCard}"
            if i == 12
                break
            end
        end
    end

end