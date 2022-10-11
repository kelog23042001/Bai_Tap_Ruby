require './Teacher'

 class ManagerTeacher
    attr_accessor :TeacherList
    TeacherList = []

    def initialize
    end

    def addTeacher(teacher)
        TeacherList << teacher
    end

    def removeTeachert(id)
        TeacherList.delete_if { |teacher| teacher.id == id }
    end

    def getSalary(id)
        TeacherList.each do |teacher|
            if(teacher.id.eql?(id))
                teacher.realSalary = teacher.salary + teacher.bonus - teacher.penaty
            end
        end
    end

    def display
        TeacherList.each do |teacher|
            teacher.display()
        end
    end
 end