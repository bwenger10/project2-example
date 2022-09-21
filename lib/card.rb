class Card
    #initialization
    def initialize(color, shape, fill, num)
        @color = color
        @shape = shape
        @fill = fill
        @num = num
    end

    #getter methods

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