require './ManagerCard'
require './Card'
require './Student'

student1 = Student.new('name1', 'age1', 'class1')
student2 = Student.new('name2', 'age2', 'class2')
student3 = Student.new('name3', 'age3', 'class3')

card = Card.new(1, student1, 'borrowDate1', 'paymentDate1', 'bookId1')
card1 = Card.new(2, student2, 'borrowDate2', 'paymentDate2', 'bookId2')
card2 = Card.new(3, student3, 'borrowDate3', 'paymentDate3', 'bookId3')

managerCard = ManagerCard.new()
managerCard.addCard(card)
managerCard.addCard(card1)
managerCard.addCard(card2)

managerCard.display()

puts "\nSau khi xoa"
managerCard.removeCard(1)
managerCard.display()