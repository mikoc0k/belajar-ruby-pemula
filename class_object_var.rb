=begin



# Number
nums = 8
4.times do
    print nums.class, " ", nums, "\n" #method dari Integer
    nums *= nums
end


3.times {print "X \n"}
2.upto(7) { |element| print element }
puts
10.downto(3) { |element| print element }
puts
50.step(70,3) { |angka| print angka, "" }


=end

# String
=begin


# escape sequence
print "that\'s right\n"


=end

=begin

=end
# membuat class dan method

class Song
    def initialize(name, artist, duration)
        @name = name # @ cara menandai variabel sbg instance
        @artist = artist
        @duration = duration
    end
end

# @instance variabel memiliki ingatan utk simpan ke dalam objek