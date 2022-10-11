require './ManagerTeacher'
require './Teacher'

teacher1 = Teacher.new(2000,200,100,'name1', '12', 'hometown1','1')
teacher2 = Teacher.new(2000,200,100,'name2', '12', 'hometown1','2')
teacher3 = Teacher.new(2000,200,100,'name3', '12', 'hometown1','3')

manager = ManagerTeacher.new()

manager.addTeacher(teacher1)
manager.addTeacher(teacher2)
manager.addTeacher(teacher3)
manager.getSalary('1')
manager.display()