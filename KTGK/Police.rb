# require './Car'
# require './Motorcycel'
# require './Truck'
# require './Vehicle'

class Vehicle
    attr_accessor :id_232, :hsx_232, :nsx_232, :type_232, :price_232, :numberPlate_232, :color_232

    def initialize()
        self.id_232 = id_232
        self.hsx_232 = hsx_232
        self.nsx_232 = nsx_232
        self.type_232 = type_232
        self.price_232 = price_232
        self.numberPlate_232 = numberPlate_232
        self.color_232 = color_232
    end
    
    def input
        print "Nhap id: "
        self.id_232 = gets.chop
        print "Nhap hang san xuat: "
        self.hsx_232 = gets.chop
        print "Nhap nam san xuat: "
        self.nsx_232 = gets.chop
        print "Nhap loai xe: "
        self.type_232 = gets.chop
        print "Nhap gia: "
        self.price_232 = gets.chop
        print "Nhap bien so: "
        self.numberPlate_232 = gets.chop
        print "Nhap mau sac: "
        self.color_232 = gets.chop
    end

    def display
        puts "Id: #{self.id_232} - HSX: #{self.hsx_232} - NSX: #{self.nsx_232} - Type: #{self.type_232} - Price: #{self.price_232} - NumberPlate: #{self.numberPlate_232} - Color: #{self.color_232}"
    end
end

class Truck < Vehicle
    attr_accessor :tt_232
    def initialize()
        super()
        self.tt_232 = tt_232
    end

    def input
        super()
        print "Nhap trong tai: "
        self.tt_232 = gets.chop
    end
    def display
        super
        puts "TrongTai_232: #{self.tt_232}\n"
    end
end

class Motorcycel < Vehicle
    attr_accessor :cx_232, :dt_232

    def initialize()
        super()
        self.cx_232 = cx_232
        self.dt_232 = dt_232
    end

   def input
        super()
        print "Nhap cong xuat: "
        self.cx_232 = gets.chop
        print "Nhap dung tich: "
        self.dt_232 = gets.chop
   end
    def display
        super
        puts "Cong Xuat: #{self.cx_232} - Dung tich: #{self.dt_232}\n"
    end
end

class Car < Vehicle
    attr_accessor :soCho_232, :kieuDongCo_232, :nhienLieu_232, :soTuiKhi_232, :ngayDangKiem_232

    def initialize()
        super()
        self.soCho_232 = soCho_232
        self.kieuDongCo_232 = kieuDongCo_232
        self.nhienLieu_232 = nhienLieu_232
        self.soTuiKhi_232 = soTuiKhi_232
        self.ngayDangKiem_232 = ngayDangKiem_232
    end

    def input
        super
        print "Nhap so cho: "
        self.soCho_232 = gets.chop
        print "Nhap kieu dong co: "
        self.kieuDongCo_232 = gets.chop
        print "Nhap so nhien lieu: "
        self.nhienLieu_232 = gets.chop
        print "Nhap so tui khi: "
        self.soTuiKhi_232 = gets.chop
        print "Nhap ngay dang kiem: "
        self.ngayDangKiem_232 = gets.chop
    end
    def display
        super
        puts "So cho: #{self.soCho_232} - Kieu Dong Co: #{self.kieuDongCo_232} - Nhien Lieu: #{self.nhienLieu_232} - So Tui Khi: #{self.soTuiKhi_232} - Ngay Dang Kiem: #{self.ngayDangKiem_232}\n"
    end
end

class Police
    attr_accessor :ListVehical_232

    ListVehical_232 = []

    def addVehicle(vehicle_232)
        ListVehical_232 << vehicle_232
    end

    def Show_Vehicel()
        ListVehical_232.each do |veh_232|
            veh_232.display()
        end
    end

    def removeVehicle(id_232)
        ListVehical_232.delete_if { |veh_232| veh_232.id_232 == id_232 } 
        Show_Vehicel()
    end

    def searchHangSX(hang_232)
        ListVehical_232.each do |veh_232|
            if(veh_232.type_232 == hang_232 )
                veh_232.display()
            end
        end
    end
    def searchColor(color_232)
        ListVehical_232.each do |veh_232|
            if(veh_232.color_232 == color_232 )
                veh_232.display()
            end
        end
    end
    def searchBienSo(bienso_232)
        ListVehical_232.each do |veh_232|
            if(veh_232.numberPlate_232 == bienso_232  )
                veh_232.display()
            end
        end
    end
end

police_232 = Police.new
truck_232 = Truck.new
car_232 = Car.new
motocycel_232 = Motorcycel.new
loop do
puts "1. Thêm các phương tiện: "
puts "2. Hiển thị các phương tiện: "
puts "3. Tìm kiếm các phương tiện: "
puts "4. Xoá các phương tiện: "
puts "5. Thoát chương trình. "
print "Nhap lua chon"
luachon_232 = gets.chop.to_i
case luachon_232
    when 1
        puts "1. Nhập xe máy: "
        puts "2. Nhập xe tải: "
        puts "3.Nhập ô tô: "
        print "Nhập loại xe muốn thêm: \n"      
        type_veh_232 = gets.chop.to_i
        case type_veh_232
            when 1
                car_232.input
                police_232.addVehicle(car_232)
        end
end

end 

# puts "Nhap thong tin xe tai: "
# truck_232.input
# puts "\nNhap thong tin o to: "
# car_232.input
# puts "\nNhap thong tin xe may: "
# motocycel_232.input



# police_232.addVehicle(truck_232)
# police_232.addVehicle(car_232)
# police_232.addVehicle(motocycel_232)

# police_232.Show_Vehicel()

# puts "\n===============================\n"

# print "Nhap hang xe muon tim kiem: "
# serHangXe_232 = gets.chop
# puts "Danh sach can tim kiem: "
# police_232.searchHangSX(serHangXe_232)
# puts "==================================\n"
# print "Nhap bien so xe muon tim kiem: "
# serBienSo_232 = gets.chop
# puts "Danh sach can tim kiem: "
# police_232.searchHangSX(serBienSo_232)
# puts "==================================\n"
# print "Nhap mau muon tim kiem: "
# serColor_232 = gets.chop
# puts "Danh sach can tim kiem: "
# police_232.searchHangSX(serColor_232)

# puts "\n===============================\n"

# print "Nhap id muon xoa: "
# delId_232 = gets.chop
# puts "Danh sach sau khi xoa:"
# police_232.removeVehicle(delId_232)

