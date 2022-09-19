require_relative = 'lib/card'

class Deck
    def initialize
        @deck = Array.new(81, Card)
        fill = Array.new("solid", "striped", "open")
        shape = Array.new("diamond", "squiggle", "oval")
        color = Array.new("purple", "red", "green")
        num = Array.new("one", "two", "three")
        a = 0
        fill.each do |i|
            shape.each do |j|
                color.each do |k|
                    num.each do |l|
                        @deck[a] = Card.initialize(fill[i], shape[j], color[k], num[l])
                    end
                end
            end
        end
    end

end