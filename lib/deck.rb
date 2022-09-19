class Deck
    "def createDeck
        fill = Array.new("solid", "striped", "open")
        shape = Array.new("diamond", "squiggle", "oval")
        color = Array.new("purple", "red", "green")
        num = Array.new("one", "two", "three")
        Card = Struct.new(:color, :shape, :fill, :num)
        card = Card.new()
        deck = Array.new(81, Card)
        i = 0
        j = 0
        k = 0
        l = 0
        fill.each do |i|
            shape.each do |j|
                color.each do |k|
                    num.each do |l|
                        deck.card.num = num[l]
                        l = l + 1
                        if(l = 3)
                            l = 0
                        end
                    end
                    deck.card.color = color[k]
                    k = k + 1
                    if(k = 3)
                        k = 0
                    end
                end
                deck.card.shape = shape[j]
                j = j + 1
                if(j = 3)
                    j = 0
                end
            end
            deck.card.fill = fill[i]
            i = i + 1
            if(i = 3)
                i = 0
            end
        end

    end"

    def initialize()
        deck = Array.new(81, Card)
        fill = Array.new("solid", "striped", "open")
        shape = Array.new("diamond", "squiggle", "oval")
        color = Array.new("purple", "red", "green")
        num = Array.new("one", "two", "three")
        a = 0
        fill.each do |i|
            shape.each do |j|
                color.each do |k|
                    num.each do |l|
                        deck[a] = Card.initialize(fill[i], shape[j], color[k], num[l])
                    end
                end
            end
        end
    end

end