# print "========CÂU 1========="
# print "\nNhập số lượng phần tử: "
# n = gets.chop
# n = n.to_i
# sum = 0
# adv = 0
# arr = Array.new(n)
# for i in 0..n-1 do
#     print "Nhập phần tử arr[",i,"] = " 
#     arr[i] = gets.chop.to_i
# end
# print "Phần tử đã nhập"
# for i in 0..n-1 do
#     sum += arr[i]
#     adv = sum/n
#     print  "arr[",i,"] = ", arr[i], " " 
# end
# print "\nTổng mảng: ",sum
# print "\nTrung bình:", adv

# print "\n========CÂU 2========="
# print "\nNhập cạnh thứ nhất: "
# edge1 = gets.chop.to_i
# print "Nhập cạnh thứ hai: "
# edge2 = gets.chop.to_i
# print "Nhập cạnh thứ ba: "
# edge3 = gets.chop.to_i

# if edge1 < (edge2 + edge3) or edge2 < (edge1 + edge3) or edge3 < (edge1 + edge2)
#     print "3 cạnh tạo thành một tam giác"
#     p = edge1 + edge2 + edge3
#     c = p/2
#     s = Math.sqrt(c*(c - edge1) * (c - edge2) * (c - edge3))
#     print "\nChu vi tam giác: ", p
#     print "\nDiện tích tam giác: ", s
# else
#     print "3 cạnh không tạo thành một tam giác"
# end
# print "\n========CÂU 3========="

# print "\nNhập họ tên: "
# name = gets.chop
# while name.length == 0 do
#     print "\nYêu cần nhập họ tên người dùng!!!"
#     print "\nNhập họ tên: "
#     name = gets.chop
# end
# print "Họ và tên đã nhập: ", name
# print "\n========CÂU 4========="
# arr = Array.new(3)
# tg = 0
# for i in 0..2 do
#     print "\nNhập số nguyên thứ ",i + 1," = " 
#     arr[i] = gets.chop.to_i
# end
# #  for i   in 0..1
# #     for j  in i..2
# #         if(arr[i] > arr[j])
# #             tg = arr[i]
# #             arr[i] = arr[j]
# #             arr[j] = tg
# #         end
# #     end
# # end
# arr = arr.sort{|a,b| b<=>a}
# print "\n Sắp xếp giảm dần: ", arr
# arr = arr.sort{|b,a| b<=>a}
# print "\n Sắp xếp tăng dần: ", arr
print "\n========CÂU 5========="

songuyen = 3
sothuc = 3.1
kytu = "NguyenHoangKeLong"
print "\nSố nguyên: ", songuyen
print "\nSố thực: ", sothuc
print "\nKý tự: S", kytu
