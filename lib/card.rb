class Card
    def initialize(color, shape, fill, num)
        @color = color
        @shape = shape
        @fill = fill
        @num = num
        @status = false
    end

    def changeStatus(card)
        card.status = !card.status
    end

    def getCard
        "#{@color}, #{@shape}, #{@fill}, #{@num}"
    end

end