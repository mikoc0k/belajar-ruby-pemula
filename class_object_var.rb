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
=begin
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
=end

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

# instance var hanya bisa diakses dari dalam lewat method to_s
=end

=begin

# instance var bisa diakses dari luar dg cara manual
class Sing_Song
    def initialize(name, artist, duration)
        @name = name
        @artist = artist
        @duration = duration
    end
    def name
        @name
    end
    def artist
        @artist
    end
    def duration
        @duration
    end
end

bitch_jokowi = Sing_Song.new('kowe ji', 'jocowee', 4665)
puts bitch_jokowi
p bitch_jokowi
puts bitch_jokowi.name
puts bitch_jokowi.artist
puts bitch_jokowi.duration

=end

# instance dapat diakses dari luar dengan shorthand attr_reader
=begin

class SingSing
    def initialize(name, artist, duration)
        @name = name
        @artist = artist
        @duration = duration
    end
    attr_reader :name, :artist, :duration
end

wowo_singing = SingSing.new('i love sawit','prawowo',54000)
puts wowo_singing.name + ' ' + wowo_singing.duration.to_s + ' menit' +' from : '+ wowo_singing.artist

=end

=begin
=end
# inheritance

class Karaoke < SingSing
    def initialize(name, artist, duration, lyric)
        super(name, artist, duration)
        @lyric = lyric
    end
end

