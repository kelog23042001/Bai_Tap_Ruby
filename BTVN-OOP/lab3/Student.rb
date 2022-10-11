class Student
    attr_accessor :id, :name, :addres, :priority 
    def initialize(id, name, addres, priority)
        @id = id
        @name = name
        @addres = addres
        @priority = priority.to_i
    end

    def display
       puts "ID: #{@id} - Name: #{@name} - Address: #{@addres} - Priority: #{@priority}"
    end
end

class CandidateA  < Student
     attr_accessor :math, :physical, :chemistry
     def initialize(id, name, address, priority, math, physical, chemistry)
        super(id, name, address, priority)
        self.math = math.to_f
        self.physical = physical.to_f
        self.chemistry =chemistry.to_f
     end
     def display
        puts "Candidate A: "
        super
        puts "Math: #{self.math} - Physical: #{self.physical} - Chemistry: #{self.chemistry}"
     end
end

class CandidateB < Student
    attr_accessor :math, :chemistry, :biological
    def initialize(id, name, address, priority, math, chemistry, biological)
        super(id, name, address, priority)
        self.math = math.to_f
        self.chemistry = chemistry.to_f
        self.biological = biological.to_f
    end
    def display
        puts "Candidate B: "
        super
        puts "Math: #{self.math} - Chemistry: #{self.chemistry} - Biological: #{self.biological}"
    end
end

class CandidateC < Student
    attr_accessor :literature, :history, :geography
    def initialize(id, name, address, priority, literature, history, geography)
        super(id, name, address, priority)
        self.literature = literature.to_f
        self.history = history.to_f
        self.geography = geography.to_f
    end
    def display
        puts "Candidate C: "
        super
        puts "Literature: #{self.literature} - History: #{self.history} - Geography: #{self.geography}"
    end
end

class ManagerStudent
    attr_accessor :StudentList

    StudentList = []

    def initialize()
    end

    def addStudent(student)
        StudentList << student
    end

    def searchStudentByClass(type, id)
        StudentList.each do |stu|
            if(stu.class.name == type && stu.id == id)
                stu.display()
            end
        end
    end

    def searchStudentById(id)
        StudentList.each do |stu|
            if(stu.id == id)
                stu.display()
            end
        end
    end

    def deleteStudent(id)
        StudentList.delete_if { |stu| stu.id == id }
    end

    def showInfor
        StudentList.each do |stu|
            puts "#{stu.display}"
        end
    end

end

student = ManagerStudent.new()         
canidateA = CandidateA.new("ca1", "name1", "address1", "1", 7, 8, 9 )
student.addStudent(canidateA)

canidateB = CandidateB.new("cb1", "name1", "address1", "2", 6, 7, 8 )
student.addStudent(canidateB)

canidateC = CandidateC.new("cc1", "name1", "address1", "3", 7, 8, 9 )
student.addStudent(canidateC)

student.showInfor
print "Nhập số báo danh cần tìm: "
findId = gets.chop
puts "Học sinh cần tìm: "
student.searchStudentById(findId)





