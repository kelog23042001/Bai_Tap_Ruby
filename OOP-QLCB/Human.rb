class CanBo
    attr_accessor :name_232, :age_232, :gender_232, :address_232
    def initialize()
        @name_232 = name_232
        @age_232 = age_232
        @gender_232 = gender_232
        @address_232 = address_232
    end

    def input_infor
        print "Nhập tên: "
        @name_232 = gets.chop
        print "Nhập tuổi: "
        @age_232 = gets.chop.to_i
        print "Nhập giới tính: "
        @gender_232 = gets.chop
        print "Nhập địa chỉ: "
        @address_232 = gets.chop
    end
    def display
        puts "Tên: #{@name_232} - Tuổi: #{@age_232} - Giới tính: #{@gender_232} - Địa chỉ: #{@address_232}"
    end
end

class CongNhan < CanBo
    attr_accessor :capbac_232_232
  
    def initialize()
        super()
        self.capbac_232_232 = capbac_232_232
    end
    def input_infor
        super
        print "Nhập cấp bậc (1 - 10): "
        self.capbac_232_232 = gets.chop.to_i
    end
    def display
        super
        puts "Cấp bậc: #{@capbac_232_232}"
    end
end

class KySu < CanBo
    attr_accessor :nganhDT_232
    def initialize()
        super()
        self.nganhDT_232 = nganhDT_232
    end
    def input_infor
        super
        print "Nhập ngành đào tạo: "
        self.nganhDT_232 = gets.chop
    end
    def display
        super
        puts "Ngành đào tạo: #{@nganhDT_232}"
    end
end

class NhanVien < CanBo
    attr_accessor :congviec_232
    def initialize()
        super()
        self.congviec_232 = congviec_232
    end
    def input_infor
        super
        print "Nhập công việc: "
        self.congviec_232 = gets.chop
    end
    def display
        super
        puts "Công việc: #{@congviec_232}"
    end
end

class QLCb
   

    puts "Nhập thông tin công nhân: "
    cn_232 = CongNhan.new
    cn_232.input_infor

    puts "\nNhập thông tin kỹ sư: "
    ks_232 = KySu.new
    ks_232.input_infor

    puts "\nNhập thông tin nhân viên"
    nv_232 = NhanVien.new
    nv_232.input_infor

    humanlist_232 = []

    humanlist_232 << cn_232
    humanlist_232 << ks_232
    humanlist_232 << nv_232

    puts "Danh sách các cán bộ: "
    humanlist_232.each do |val|
        puts "#{val.display}"
    end

    puts "\nNhập tên cần tìm kiếm: "
    fname_232 = gets.chop
        for i in (0..humanlist_232.length - 1) do
            if(humanlist_232[i].name_232 == fname_232)
               humanlist_232[i].display 
            end
        end 
end






