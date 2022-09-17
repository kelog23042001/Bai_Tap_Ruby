class SinhVien
    def initialize()
        
    end   

    def info(name, age, msv, toan, hoa, ly)
        self.name = name
        @age = age
        @msv = msv
        @math = math
        @chem = hoa
        @phy = phy
    end 

    def inpSinhVien()
        print "Nhập tên sinh viên: "
        @name = gets.chop
        print "Nhập tuổi: "
        @age = gets.chop.to_i
        print "Nhập mã sv: "
        @msv = gets.chop
        print "Nhập điểm toán: "
        @math = gets.chop.to_f
        print "Nhập điểm lý: "
        @phy = gets.chop.to_f
        print "Nhập điểm hoá: "
        @chem = gets.chop.to_f
    end
    
    def outSinhvien
        puts "Mã SV: #{@msv}"
        puts "Họ tên: #{@name}"
        puts "Tuổi: #{@age}"
        puts "Điểm toán: #{@math}"
        puts "Mã lý: #{@phy}"
        puts "Mã hoá: #{@selfchem}"
        puts "Điểm trung bình: #{agvSub()}"
    end

    def agvSub()
        sum = @math + @chem + @phy
        agv = sum / 3
        return agv 
    end
end

sv = SinhVien.new()
sv.inpSinhVien()
sv.outSinhvien