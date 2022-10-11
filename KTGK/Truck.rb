class Truck < Vehicle
    attr_accessor :TrongTai_232
    def initialize(id_232, hsx_232, nsx_232, type_232, price_232, numberPlate_232, color_232, TrongTai_232)
        super(id_232, hsx_232, nsx_232, type_232, price_232, numberPlate_232, color_232)
        self.TrongTai_232 = TrongTai_232
    end

    def display
        super
        puts "TrongTai_232: #{self.TrongTai_232}"
        end
end