require './School'
require './Student'

school = School.new

student1 = Student.new('name1', '20', 'QN', 'nam', 't1')
school.addStudent(student1)

student2 = Student.new('name2', '12', 'DB', 'nu', 't2')
school.addStudent(student2)

student3 = Student.new('name3', '23', 'QN', 'nam', 't1')
school.addStudent(student3)

student4 = Student.new('name4', '23', 'DN', 'nam', 't1')
school.addStudent(student4)

student4 = Student.new('name5', '23', 'DN', 'nam', 't1')
school.addStudent(student4)

school.show_student
puts "Các học sinh 20 tuổi."
school.SearchStudent()

puts "\nSố lượng các học sinh có tuổi là 23 và quê ở DN: #{school.CountStudent(0)}"

# school.show_student