class Student 
    attr_accessor :name, :age, :school
    def initialize(name, age, school)
      self.name = name
      self.age = age
      self.school = school
    end
  
    def display()
      puts "Name: #{self.name} - Age: #{self.age} - School: #{self.school}"
    end
  end