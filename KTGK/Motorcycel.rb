class Motorcycel < Vehicle
    attr_accessor :CongXuat_232, :DungTich_232

    def initialize(id_232, hsx_232, nsx_232, type_232, price_232, numberPlate_232, color_232, CongXuat_232, DungTich_232)
        super(id_232, hsx_232, nsx_232, type_232, price_232, numberPlate_232, color_232)

        self.CongXuat_232 = CongXuat_232
        self.DungTich_232 = DungTich_232
    end

    def display
        super
        puts "Cong Xuat: #{self.CongXuat_232} - Dung tich: #{self.DungTich_232}"
    end
end