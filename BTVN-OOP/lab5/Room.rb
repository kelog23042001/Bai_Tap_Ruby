class Room
    attr_accessor :price, :type

    def initialize(price, type)
        self.price = price
        self.type = type
    end

    def display
        puts "Price: #{self.price} - Type: #{self.type}"
    end
end

class RoomA < Room
    def initialize()
        super(500, "A")
    end
    def display
        super
    end
end

class RoomB  < Room
    def initialize()
        super(300, "B")       
    end
    def display
        super
    end
end

class RoomC < Room
    def initialize()
        super(100, "C")
    end
    def display
        super
    end
end