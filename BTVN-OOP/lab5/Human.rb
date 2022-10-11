class Human
    attr_accessor :name, :age, :id, :room, :numberRent
    def initialize(name, age, id, room, numberRent)
        self.name = name
        self.age = age
        self.id = id
        self.room = room
        self.numberRent = numberRent
    end
    def Input_Humab
        print "Nhập tên: "
        self.name = gets.chop
        print "Nhập tuổi: "
        self.age = gets.chop.to_i
        print "Nhập id: "
        self.id = gets.id
        print "Nhập phòng: "
        self.room = gets.room
        print "Nhập số ngày thuê: "
        self.numberRent = gets.numberRent.to_i
    end
    def display
        puts "Id: #{self.id} Name: #{self.name} - Age: #{self.age} - Room: #{self.room.type} - Number: #{self.numberRent}"
    end
end