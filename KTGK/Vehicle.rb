class Vehicle
    attr_accessor :id_232, :hsx_232, :nsx_232, :type_232, :price_232, :numberPlate_232, :color_232

    def initialize(id_232, hsx_232, nsx_232, type_232, price_232, numberPlate_232, color_232)
        self.id_232 = id_232
        self.hsx_232 = hsx_232
        self.nsx_232 = nsx_232
        self.type_232 = type_232
        self.price_232 = price_232
        self.numberPlate_232 = numberPlate_232
        self.color_232 = color_232
    end
    

    def display
        puts "Id: #{self.id_232} - HSX: #{self.hsx_232} - NSX: #{self.nsx_232} - Type: #{self.type_232} - Price: #{self.price_232} - NumberPlate: #{self.number_232} - Color: #{self.color_232}"
    end
end