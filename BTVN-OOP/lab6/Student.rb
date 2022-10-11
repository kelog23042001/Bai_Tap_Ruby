class Student
    attr_accessor :name, :age, :address, :gender, :clas
    def initialize(name, age, address, gender, clas)
        self.name = name
        self.age = age.to_i
        self.address = address
        self.gender = gender
        self.clas = clas
    end
    def display
        puts "Name: #{self.name} - Age: #{self.age} - Address: #{self.address} - Gender: #{self.gender} - Clas: #{self.clas}"
    end
end 