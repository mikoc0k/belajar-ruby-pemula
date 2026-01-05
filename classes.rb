=begin
# a = Array.new + [12345]
# puts a.to_s
# puts a
#
# b = String.new + 'hello'
# puts b.to_s
#
# c = Time.new
# puts c.to_s
#
# puts [] + [9999]
# puts '' + 'hlao'
#
# puts Time.mktime(2000, 1, 12,12,12,12)
# puts Time.mktime(1976,8,3,10,11,12)

# Array dan Hash
color_array = []
color_hash = {}

color_array[0] = 'pisang'
color_array[1] = 'jambu'
puts color_array.to_s

color_array.each do |color|
  puts color.to_s
end

# color_hash['strings'] = 'red'
# color_hash['numbers'] = 'green'
# puts color_hash.to_s
#
# color_hash.each do |key,value|
#   puts "#{key} - #{value}"
# end
#
# # membuat hash dengan method new
# weird_hash = Hash.new
# weird_hash[1] = 'pisang'
# weird_hash[2] = 'jambu'
# puts weird_hash.to_s
#
# # extending classes
# # instance method di dalam class bawaan
# class Integer
#   def to_english #method yang bisa dipanggil seperti method built-in, harus dijadikan instance method dari class built-in
#     if self == 5
#       english = 'five'
#     else
#       english = 'fifty-eight'
#     end
#     english
#   end
# end
#
# puts 5.to_english #dipanggil seperti ini karena di attach ke class built-in
# # dipanggil dengan format : object(d0t)method
#
# # jika tidak menggunakan cara diatas, maka methodnya digunakan seperti fungsi
#
# # method biasa
# def to_en(value)
#   value == 5 ? "five" : "fifty-eight"
# end
# to_en(7)
#
# # class method, bikin class sendiri bukan yang sudah ada di ruby
# class BikinSendiri
#   def  self.to_inggris(value)
#     puts 'haloo'
#   end
# end
#
# BikinSendiri.to_inggris(5)

# bikin class lagi dari contoh pine.fm
# pada kode ini tidak memiliki state (tidak memiliki memori)
# sekali pakai, setelah itu nilainya berubah
# class Dice
#   def roll
#     1 + rand(6)
#   end
# end
# dadu = [Dice.new, Dice.new, Dice.new]
# dadu.each do |dadu|
#   puts dadu.roll
# end

# module class -  tanpa mengotori built-in class
# bikin module dulu baruu di masukkan ke class
# module BikinanSendiri
#   def to_eng('kata')
#     put 'halo'
#   end
# end
#
# class Integer
#   include BikinanSendiri
# end

# Instance variable
# memiliki state (stateful)

# class Dice
#   def roll
#     @numbershow = 1 + rand(6)
#   end
#   def showval
#     @numbershow
#   end
# end

# dadu = Dice.new
# dadu.roll
# puts dadu.showval
# puts dadu.showval
#
# dadu.roll
# puts dadu.showval
# puts dadu.showval

#cara panggil tanpa membuat objek
# memanggil langsung via class
# puts Dice.new.roll
# puts Dice.new.showval

# kendala Dice diatas adalah kita selalu roll dulu sebelum bisa melihat hasil dadunya
# maka dari itu baikny menggunakan method initialize
# initialize otomatis tersedia tiap objek baru dibuat dengan namaClass.new

# class Dice
#   def initialize
#     roll
#   end
#   def roll
#     @numbershow = 1 + rand(6)
#   end
#   def showval
#     @numbershow
#   end
# end
#
# # kita panggil hasil dadu tanpa bikin variabel
# puts Dice.new.showval

# contoh lain

class Dragon
  def initialize name
    @name = name
    @asleep = false
    @stuffInBelly = 10
    @stuffInIntestine = 0
    puts @name + 'is born'
  end
  def feed
    puts 'you feed' + name
    @stuffInBelly = 0
    passageOfTime
  end
  def walk
    puts 'you walk' + @name
    @stuffInIntestine = 0
    passageOfTime
  end
  def putToBed
    puts 'you put' + @name + 'to bed'
    @asleep = true
    3.times do
      if @asleep
        passageOfTime
      end
      if @asleep
        puts @name + 'snores, filling the room in smoke'
      end
    end
  if @asleep
    @asleep = false
    puts @name + 'wake up slowly'
  end
  end
  def toss
    puts 'you toss' + @name + 'up into air'
    puts 'he giggles, since hinges your eyebrows'
    passageOfTime
  end
  def rock
    puts 'you rock' + @name + 'gently'
    @asleep = true
    puts 'he briefly dozes off ... '
    passageOfTime
    if @asleep
      @asleep = false
      puts '... but wakes when you stop'
    end
  end

  private
  def hungry?
    @stuffInBelly <= 2
  end
  def poopy?
  @stufInIntestine >= 8
end
def passageOfTime
  if @stuffInBelly > 0
    @stuffInBelly -= 1
    @stuffInIntestine += 1
  else
    if @asleep = false
      puts 'he awakes suddenly'
    end
    puts @name + 'is starving. he ates you'
    exit
  end
  if hungry?
    if @asleep = false
      puts 'he wakes up suddenly'
    end
    puts @name + '\s stomach grumbles ...'
  end

  if poopy?
    if @asleep
      @asleep = false
      puts 'he wakes up suddenly'
    end
    puts @name + ' does the potty dance'
  end
end
end

=end

Car = Class.new do
  def halo
    "helo dunia"
  end
end

lambo = Car.new
puts lambo.halo