require './Human'
require './Hotel'

hotel = Hotel.new()

roomA = RoomA.new()
roomB = RoomB.new()
roomC = RoomC.new()

person1 = Human.new('Customer A', '12', '1', roomA, 2)
hotel.addHuman(person1)

person2 = Human.new('Customer B', '21', '2', roomC, 3)
hotel.addHuman(person2)

person3 = Human.new('Customer B', '22', '3', roomB, 2)
hotel.addHuman(person3)


hotel.show_human


puts "Sau khi xoá"  
hotel.delete_human("3")
hotel.show_human