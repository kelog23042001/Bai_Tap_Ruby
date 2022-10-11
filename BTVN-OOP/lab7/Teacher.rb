class Teacher
    attr_accessor :salary, :bonus, :penaty, :realSalary, :name, :age, :hometown, :id
    def initialize(salary,bonus,penaty,name,age,hometown,id)
        self.name = name
        self.age = age.to_i
        self.hometown = hometown
        self.id = id
        self.salary = salary.to_f
        self.bonus = bonus.to_f
        self.penaty = penaty.to_f
        # self.realSalary = realSalary
    end
    def display
        puts "Name: #{self.name} - Bonuses: #{self.bonus} - Penaty: #{self.penaty} - Name: #{self.name} - Age: #{self.age} - Hometown: #{self.hometown} - ID: #{self.id} - RealSalary: #{self.realSalary}"
    end
end