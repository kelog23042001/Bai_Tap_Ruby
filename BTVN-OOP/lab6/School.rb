require './Student'

class School
    attr_accessor :SchoolList

    SchoolList = []

    def initialize()
        
    end
    def addStudent(student)
        SchoolList << student
    end

    def show_student
        SchoolList.each do |student|
            student.display()
        end
    end

    def SearchStudent()
        SchoolList.each do |student|
            if (student.age == 20 )
                student.display()
            end
        end
    end

    def CountStudent(count)
        SchoolList.each do |student|
            if (student.age == 23 && student.address == "DN")
                count = count + 1
            end
        end 
        return count
    end

end