#Viết lệnh hiển thị xin chào + tên SV + mã SV
puts "Xin chào - Nguyễn Hoàng Kế Long - 1911505310232"

#Nhập 1 số, in ra số đó
print "Nhập một số: "
so = gets
puts "Số đã nhập: #{so} "

#So sánh 2 số nhập từ bàn phím, in ra số lớn nhất
puts "So sánh 2 số"
print "Nhập số thứ 1: "
sothu1 = gets
print "Nhập số thứ 2: "
sothu2 = gets

puts "Số thứ 1: #{sothu1}Số thứ 2: #{sothu2}"

if sothu1 > sothu2
    puts "Giá trị lớn nhất: #{sothu1}"
else
    puts "Giá trị lớn nhất: #{sothu2}"
end