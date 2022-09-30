class CanBo
    attr_accessor :name, :age, :gender, :address
    def initialize()
        @name = name
        @age = age
        @gender = gender
        @address = address
    end

    def input_infor
        print "Nhập tên: "
        @name = gets.chop
        print "Nhập tuổi: "
        @age = gets.chop.to_i
        print "Nhập giới tính: "
        @gender = gets.chop
        print "Nhập địa chỉ: "
        @address = gets.chop
    end
    def display
        puts "Tên: #{@name} - Tuổi: #{@age} - Giới tính: #{@gender} - Địa chỉ: #{@address}"
    end
end

class CongNhan < CanBo
    attr_accessor :rank
  
    def initialize()
        super()
        self.rank = rank
    end
    def input_infor
        super
        print "Nhập cấp bậc (1 - 10): "
        self.rank = gets.chop.to_i
    end
    def display
        super
        puts "Cấp bậc: #{@rank}"
    end
end

class KySu < CanBo
    attr_accessor :nganhDT
    def initialize()
        super()
        self.nganhDT = nganhDT
    end
    def input_infor
        super
        print "Nhập ngành đào tạo: "
        self.nganhDT = gets.chop.to_i
    end
    def display
        super
        puts "Ngành đào tạo: #{@nganhDT}"
    end
end

class NhanVien < CanBo
    attr_accessor :conngviec
    def initialize()
        super()
        self.conngviec = conngviec
    end
    def input_infor
        super
        print "Nhập công việc: "
        self.conngviec = gets.chop.to_i
    end
    def display
        super
        puts "Công việc: #{@conngviec}"
    end
end

class QLCb
   

    puts "Nhập thông tin công nhân: "
    cn = CongNhan.new
    cn.input_infor

    puts "\nNhập thông tin kỹ sư: "
    ks = KySu.new
    ks.input_infor

    puts "\nNhập thông tin nhân viên"
    nv = NhanVien.new
    nv.input_infor

    humanlist = []

    humanlist << cn
    humanlist << ks
    humanlist << nv

    puts "Danh sách các cán bộ: "
    humanlist.each do |val|
        puts "#{val.display}"
    end

    puts "\nNhập tên cần tìm kiếm: "
    fname = gets.chop
        for i in (0..humanlist.length - 1) do
            if(humanlist[i].name == fname)
               humanlist[i].display 
            end
        end 
end






