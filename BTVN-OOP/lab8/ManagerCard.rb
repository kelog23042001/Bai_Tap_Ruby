class ManagerCard
    attr_accessor :ListCard;
    ListCard = []
  
    def addCard(card)
      ListCard << card
    end

    def removeCard(id)
        ListCard.delete_if { |card| card.id == id }
    end
  
    def display()
      ListCard.each do |card| card.display() end
    end
    
  end