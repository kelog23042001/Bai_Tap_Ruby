class Human

    def initialize(name, gender, height, weight, phone)
        @name = name
        @gender = gender
        @height = height
        @weight = weight
        @phone = phone
    end

    def display
        puts "  Name: #{@name} Gender:#{@gender} Height: #{@height} Weight: #{@weight} Phone: #{@phone}"
    end

end

class Pupil < Human
    attr_accessor :id, :classs, :school, :grade1, :grade2, :grade3
    def inputPupil(i,c, s, g1, g2, g3)
        @id = i
        @classs = c 
        @school =s
        @grade1 = g1
        @grade2 = g2
        @grade3 = g3
    end
    def display
        super
        puts "  Id: #{self.id} Class: #{self.classs} School: #{self.school} Grade1: #{self.grade1} Grade2: #{self.grade2} Grade3: #{self.grade3}  Avg: #{avgGrade}
        " 
    end

    def avgGrade()
         (self.grade1 + self.grade2 + self.grade3)/3
    end

end

pulpil1 = Pupil.new("Nguyen Hoang Ke Long 1", "Nam", "180", "80","123")
pulpil1.inputPupil("1911505310232", "19T2", "SPKT", 1, 2, 3)

pulpil2 = Pupil.new("Nguyen Hoang Ke Long 2", "Nam", "180", "80","123")
pulpil2.inputPupil("1911505310232", "19T2", "SPKT", 4, 5, 6)

pulpil3 = Pupil.new("Nguyen Hoang Ke Long 3", "Nam", "180", "80","123")
pulpil3.inputPupil("1911505310232", "19T2", "SPKT", 7, 8, 9)

plist = []

plist << pulpil1
plist << pulpil2
plist << pulpil3

puts "Điểm trung bình khi chưa sắp xếp"
plist.each do |value|
    puts "#{value.display}"
end

puts "Điểm trung bình khi sắp xếp"
list = plist.sort_by {|p| -p.avgGrade}
list.each do |value|
    puts "#{value.display}"
end




