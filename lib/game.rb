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
        @deck = Board.initialize
        @board = Board.dealBoard

    end

end