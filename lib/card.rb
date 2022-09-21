class Card
    def initialize(color, shape, fill, num)
        @color = color
        @shape = shape
        @fill = fill
        @num = num
    end

    def changeStatus(card)
        card.status = !card.status
    end

    def getCard
        "#{@color}, #{@shape}, #{@fill}, #{@num}"
    end

    def getColor
        "#{@color}"
    end

    def getShape
        "#{@shape}"
    end

    def getFill
        "#{@fill}"
    end

    def getNum
        "#{@num}"
    end

end