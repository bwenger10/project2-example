require_relative 'deck'
class Board
    def initialize
        @deck = Deck.initialize
    end

    def dealBoard
        board = Array.new(12, Card)
        board.card.each do |i|
            board[i] = @deck.sample(1)
            board[i].status = true
            puts "#{board[i]}"
        end
    end

end