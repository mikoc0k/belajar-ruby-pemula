# Some basic Ruby

=begin
def say_goodnight(name)
  'goodnight, ' + name
end

puts say_goodnight('Alice')
puts say_goodnight('Bob')

=end

=begin

# cara membuat array
# ada 2 cara
# cara-1 :
array1 = []
array1[0] = 'kambing'
array1[1] = 'kodok'
print array1
puts "\n -------"
# cara-2 :
array2 = Array.new
array2[0] = 'jeruk'
array2[1] = 'nanas'
print array2

=end

=begin

# cara membuat hash

# cara-1 :
# simbol sebagai key
presiden_gemblung = {
  nama: 'jokowee',
  skill: 'goblok pasif',
  harta: 1000000000,
}

print "\n #{presiden_gemblung}"

# cara-2 :
# hash rocket => sebagai key
presiden_kita = {
  'nama' => 'sby',
  'skill' => 'pelukis aktif',
  'harta' => 2000000000,
}

print "\n #{presiden_kita}"


# cara -3 :
# dengan Hash.new
presiden_baru = Hash.new
presiden_baru['nama'] = 'owo' # string sebagai key
presiden_baru['skill'] = 'pecinta saweet'
presiden_baru[:kolor] = 'merah' # simbol sebagai key
print "\n #{presiden_baru}"


# cara -4 :
# menggunakan method Hash[] daftar argumen
buah_favorit = Hash[:satu, 'apel', :dua, 'jeruk']
print buah_favorit


# cara -5 :
# pakai shorthand
nama = 'jock o wee'
skill = 'nipu negoro'
presiden_palsu = {
  nama:,
  skill:,
  }
  
print presiden_palsu
  
=end

=begin

# kontrol struktur
# if else dan while
# unless dan until

count = 4
if count > 10
  puts 'selamat kamu lolos'
else
  puts 'kamu gagal'
end



# if menggunakan statement modifier
nilai = 33
puts 'lulus ujian' if nilai >= 75 # logika identik dengan di bawah ini
puts 'gagal ujian' unless nilai >= 75


antrian = 0
while antrian < 9
  puts "nomor antrianmu : #{antrian+1}"
  antrian += 1
end


# block dan iterator

def call_block
  yield
  yield
end

call_block { puts 'hidup kowo-jee'}

def sapa_nama(nama)
    yield(nama)
  end
  
  
  sapa_nama('jo-kowai') { |name| puts "halo, namaku #{name}" } # yield dengan parameter
  sapa_nama('wiwowo') { |name| puts "ini presiden kita, #{name} adalah pecinta sawit"}
  # pakai method yang sama tetapi blocknya bisa beda-beda
  # sangat efektif daripada fixed method,harus ganti logika di dalam methodnya
  
=end

=begin

# sintatik sugar %w
# bikin string jadi array

array_buah_lokal = %w(mangga pisang jeruk apel mamalemon)
print array_buah_lokal
# kita repeat pake method each

array_buah_lokal.each { |element| puts "\n buah lokal - #{element} " }

# contoh lain
sambal = ['matah', 'terasi', 'bawang','dabu-dabu','rica-rica','kecombrang',]
puts sambal
sambal.each.with_index(1) { | items,i | puts " no.#{i} - sambal #{items} " } #variasi lain dari each
# bisa dikombinasi dg method lain sebelum with_index
# contoh : sambal.map.with_index(1)
# each_with_index untuk menampilkan index otomatis dari 0
puts " \n"
sambal.each_with_index { | items,i | puts " no.#{i} - sambal #{items} " }


# simple looping dengan times
5.times { |i| puts "perulangan ke-#{i+1}" }
5.times { puts 'helo' }
3.upto(6) { |number| puts number }
puts 'halo'
puts 'haaloo'
=end

=begin

# mencetak berformat
printf "Number: %5.2f , String: %s \n" , 1.23, "helo"
number = 12.4544212
printf "angka: %3.3f \n", number

=end

line = gets # "gets" adalah method menerima inputan dari keyboard
print line