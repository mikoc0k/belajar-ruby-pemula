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
# cara diatas bisa ditulis ulang lebih singkat dengan attr_writer
=end

# menggunakan attr_writer
=begin
class Song_asong
    def initialize(dosa)
        @dosa = dosa
    end
    attr_reader :dosa
    attr_writer :dosa
end
awowo = Song_asong.new(4554)
puts awowo.dosa
awowo.dosa=20000
puts awowo.dosa

=end

=begin
# virtual atribut 
# atribut yang dihitung/diproses tapi tidak disimpan
# contoh : 
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
# contoh lain virtual attributs
=begin

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
=end

=begin
def nama
    return @nama
end

adalah bentuk panjang dari 

attr_reader :nama

-----------------------

def nama=(newnama)
    @nama = newnama
end

adalah bentuk panjang dari

attr_writer :nama

=end

=begin
# Class Var dan Class method

# class var
# diawali doble @, contoh -> @@username
# class var berbagi dengan semua objek di dalam class
# jika instance var @var dimiliki masing2 objek,
# class var @@var saling berbagi antar objek
class Nyanyi
    @@plays=0
    def initialize(title, artist, duration)
        @title = title
        @artist = artist
        @duration = duration
        @plays = 0
    end
    def play
        @plays +=1
        @@plays +=1
        "this song - #@plays | total played : #@@plays"
    end
end

s1 = Nyanyi.new('maafkan joko wee', 'gibran', 1449)
s2 = Nyanyi.new('hidup koko wee', 'mas ow o',9822)

s1.play
puts s1.play
puts s2.play

=end

# contoh lain
=begin
class Mobil
    @@total = 0
    def initialize(warna)
        @warna = warna
        @@total += 1
    end
    attr_accessor :warna
    # Class method untuk mengakses variabel kelas @@total
    def self.total
        @@total
    end
end

sedan = Mobil.new('hytam')
pickap = Mobil.new('kuning')
pickap.warna = 'ungu'
puts pickap.warna
puts Mobil.total
=end

# contoh lain
=begin
=end

class Buku
    @@total_buku = 0
    def initialize(judul,harga)
        @judul = judul
        self.harga = harga
        @@total_buku += 1 # Increment class variable when a new book is created
    end

    attr_reader :harga # Add a getter for price

    def judul
        @judul.upcase
    end
    def judul=(string)
        @judul = string
    end
    def harga=(nilai_baru) # Setter for price with validation
        if nilai_baru < 0
            # puts 'harga tidak boleh negatif' # Fixed missing apostrophe
            # Optionally, you could raise an error or keep the old value:
            raise ArgumentError, 'Harga tidak boleh negatif'
        else
            @harga = nilai_baru
        end # Added missing 'end' for the if statement
    end
    def self.total_buku #class Method. gunanya untuk memanggil class var
        @@total_buku
    end

end

buku1 = Buku.new('jokowi sang pahlawan', 7500)
buku2 = Buku.new('wowo sang raja sawit', 11000)
buku3 = Buku.new('raja jawa', 20000)

puts buku1.judul
puts buku1.harga
puts buku2.judul
puts buku2.harga
puts 'jumlah buku adalah : ' + Buku.total_buku.to_s
puts buku3.harga
puts Buku.total_buku.to_s