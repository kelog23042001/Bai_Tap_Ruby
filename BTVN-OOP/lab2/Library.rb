class Document
    attr_accessor :id, :nxb, :number
    def initialize(id, nxb, number)
        @id = id
        @nxb = nxb
        @number = number
    end

    def display
       puts "ID: #{@id} - NXB: #{@nxb} - Number: #{@number}"
    end
end

class Book < Document
     attr_accessor :actor, :pageNumber
     def initialize(id, nxb, number, actor, pageNumber)
        super(id, nxb, number)
        self.actor = actor
        self.pageNumber = pageNumber
     end
     def display
        puts "Book: "
        super
        puts "Actor: #{self.actor} - Page: #{self.pageNumber}"
     end
end

class Magazine < Document
    attr_accessor :issueNumber, :monthNumber
    def initialize(id, nxb, number, issueNumber, monthNumber)
        super(id, nxb, number)
        self.issueNumber = issueNumber
        self.monthNumber = monthNumber
    end
    def display
        puts "Magazine"
        super
        puts "Issue Number: #{self.issueNumber} - Month Number: #{self.monthNumber}"
    end
end

class Newspaper < Document
    attr_accessor :dayIssue
    def initialize(id, nxb, number, dayIssue)
        super(id, nxb, number)
        self.dayIssue = dayIssue
    end
    def display
        puts "Newspaper"
        super
        puts "Day issue #{self.dayIssue}"
    end
end

class ManagerDocument
    attr_accessor :DCMList


    DCMList = []

    def initialize()
    end

    def addDocument(document)
        DCMList << document
    end

    def searchDocument(type, id)
        DCMList.each do |dcm|
            if(dcm.class.name == type && dcm.id == id)
                dcm.display()
            end
        end
    end

    def deleteDocument(id)
        DCMList.delete_if { |dcm| dcm.id == id }
    end

    def showInfor
        DCMList.each do |val|
            puts "#{val.display}"
        end
    end
end

document = ManagerDocument.new()         
book = Book.new("b1", "nxb1", "number1", "actor1", "pagenumber1" )
document.addDocument(book)

magazine = Magazine.new("m1", "nxb1", "number1", "issueNumber1", "monthNumber1")
document.addDocument(magazine)

newspaper = Newspaper.new("n1", "nxb1", "number1", "dayIssue1")
document.addDocument(newspaper)

puts"Chua xoa"
document.showInfor

puts"tim kiem"
document.searchDocument("Book", "b1")

document.deleteDocument("b1")

puts "Sau khi xoa: "
document.showInfor

