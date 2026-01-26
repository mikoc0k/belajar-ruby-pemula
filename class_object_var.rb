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
    def to_s
        "song : #{@name}--#{@artist}: #{@duration}"
    end
end

wowo_singing = SingSing.new('i love sawit','prawowo',54000)
puts wowo_singing.name + ' ' + wowo_singing.duration.to_s + ' menit' +' from : '+ wowo_singing.artist

=end

=begin
# inheritance

class Karaoke < SingSing
    def initialize(name, artist, duration, lyric)
        super(name, artist, duration)
        @lyric = lyric
    end
    attr_reader :lyric
end

prawowo_karaoke = Karaoke.new('pra ewe', 'prabowo', '44600','nguwawor pol bingit ya')
puts "#{prawowo_karaoke.artist} nyanyi lagu berjudul : #{prawowo_karaoke.name} selama #{prawowo_karaoke.duration} menit"
puts "liriknya : #{prawowo_karaoke.lyric}"

=end

# writable attributes
=begin

class Song
    def initialize(duration)
        @duration = duration
    end
    attr_reader :duration
    def duration=(newduration)
        @duration = newduration
    end
end

asing = Song.new(69)
puts asing.duration
asing.duration=100000
puts asing.duration
=end
# cara diatas bisa ditulis ulang lebih singkat dengan attr_writer

=begin
# virtual atribut
class Sing
    def initialize(name, duration, artist)
        @name = name
        @duration = duration
        @artist = artist
    end
    attr_reader :name, :duration, :artist
    def durationInMinutes
        @duration / 60.0
    end
    def durationInMinutes=(value)
        @duration = (value*60).to_i
    end
end

asing_sing = Sing.new('tanam-tanam sawit', 600, 'praowo') # duration masih = 600
asing_sing.durationInMinutes=1 # durasi diset ke = 1
puts asing_sing.duration # 1 menit tadi dikembalikan ke duration menjadi 60 detik
puts asing_sing.durationInMinutes # durationInMinutes merubah 60s jadi 1 menit

=end

=begin
=end

class Media
    def initialize(title)
        @title = title
    end
    attr_reader :title
    def to_uppercase
        @title.upcase
    end
    def title=(string)
        @title = string.downcase
    end
end

m = Media.new('belajar ruby')
m.title = 'BELAJAR RUBY'
puts m.title
puts m.to_uppercase