class Student
    def initialize (id, name, age, address, grade1, grade2, grade3)
        @id = id
        @name = name
        @age = age
        @address = address
        @grade1 = grade1.to_f
        @grade2 = grade2.to_f
        @grade3 = grade3.to_f
    end

    def avgGrade
        return (@grade1 + @grade2 + @grade3)/3
    end

    def get_info 
        puts "Id: #{@id}, \nName: #{@name}, \nAge: #{@age}, \nAddress: #{@address}, \nAvg: #{avgGrade} "
    end
end

my_student = Student.new("1911505310232", "Nguyen Hoang Ke Long", "21", "Quang Nam","7", "8", "9")
puts my_student.get_info
