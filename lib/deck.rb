require_relative = 'card'

class Deck
    def initialize
        @deck = Array.new()
    end

    def fillDeck
        fill = Array["solid", "striped", "open"]
        shape = Array["diamond", "squiggle", "oval"]
        color = Array["purple", "red", "green"]
        num = Array["one", "two", "three"]
        #Figure out how to use each index
        fill.each_index do |i|
            shape.each_index do |j|
                color.each_index do |k|
                    num.each_index do |l|
                        @deck << Card.new(fill[i], shape[j], color[k], num[l])
                    end
                end
            end
        end
    end

    def printDeck
        @deck.each do |m|
            puts m
        end
    end

    def pullCard
        rNum = rand(@deck.length)
        @deck.delete_at(rNum)
        #@deck.sample(1)
    end

end