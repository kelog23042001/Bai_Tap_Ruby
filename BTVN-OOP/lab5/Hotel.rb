require './Room'
require './Human'

class Hotel
    attr_accessor :Hotelist

    Hotelist = []

    def initialize()
    end

  
    def addHuman(human)
        Hotelist << human
    end

    def delete_human(id)
        Hotelist.delete_if { |per| per.id == id }
    end

    

    def CalculateRoom(id)
        Hotelist.each do |per|
            if per.id.equal?(id)
                per.display()
                puts "Rent: #{per.numberRent.to_i * per.room.price.to_f} "
            end
        end
    end

    def show_human
        Hotelist.each do |per|
            puts "#{per.display}"
        end
    end
end


