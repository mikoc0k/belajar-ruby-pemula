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


# contoh jika tidak dikasih method initialize
class Song
    
end

lagu = Song.new('jowi', 'jowo', 1400) # tidak boleh ada spasi antara Song.new dan parameter
p lagu
# output error karena objek lagu diisi parameter yang tidak terdefinisi di class Song
# membuat class dan method

=end
class Song
    def initialize(name, artist, duration)
        @name = name # @ cara menandai variabel sbg instance
        @artist = artist
        @duration = duration
    end
end

# @instance variabel memiliki ingatan utk simpan ke dalam objek
joko_song = Song.new('jowi', 'jo woki', 12000)
# p joko_song # sama dengan puts joko_song.inspect
puts joko_song
# joko_song.to_s
puts
prabowo_song = Song.new('rawowo','prwbowo', 16891)
# p prabowo_song
puts prabowo_song
# prabowo_song.to_s

=begin
class Songong
    def initialize(name, artist, duration)
        @name = name
        @artist = artist
        @duration = duration
    end
    def to_s
        "song : #{@name}--#{@artist}: #{@duration}"
    end
end

joko_songong = Songong.new('jowi', 'jo woki', 12000)
# p joko_songong
puts joko_songong.to_s
=end