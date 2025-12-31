bahasa = ['german', 'japan','aceh','jawa','italia']

# multiline
# bahasa.each do |lang|
#   puts 'i love ' + lang
# end

# rubyish way- ekspresif
# bahasa.each { |lang| puts "i love #{lang}" }

# x = 99
# [1,3,7].each {|x| puts x} # ekspresif way
# puts x

# iterator biasanya pake do .. end
# untuk menandai block
# while, if wajib diakhiri end
# 3.times do
#   puts "jokowi-ijazah palsu"
# end
#
# i=1
# while i<10
#   puts "ke-#{i}"
#   i += 1
# end

hewan = ['sapi', 'gorila', 'kuda','harimau', 'gajah']
# puts hewan #mencetak semua elemen di array di baris terpisah
# puts #mencetak newline : baris kosong
# puts hewan.to_s #mencetak array
# puts hewan.join('_') #gabung elemen dengan separator _
# puts hewan.join('--')+'--yahoo 3'
# 10.times do
#   puts []
# end

# push and pop method
# charts = []
# charts.push 'jokowi'
# charts.push 'prabowo'
# charts.push 'bahlil'
# puts charts.to_s
# puts charts[0]
# puts charts.last # cek elemen terakhir
# puts charts.length # cek banyak elemen
# puts charts.pop # buang elemen terakhir (bahlil)
# puts charts.to_s

# method : sort

nilaiKelas = [77,60,68,72,81,70,66,62,85]
puts nilaiKelas.sort.to_s
puts nilaiKelas.to_s #variabel awal tidak berubah
copyNilaiKelas = Array.new nilaiKelas
puts copyNilaiKelas.to_s
puts copyNilaiKelas.sort!.to_s #mengubah nilai copyNilaiKelas
puts copyNilaiKelas.to_s # nilai variabel berubah dengan sort!

p copyNilaiKelas.sort { |a,b| b <=> a} # urutan descending

# pakai sort biasa
p hewan.sort { |a,b| b.length <=> a.length} # urut berdasar panjang element
# atau menggunakan sort_by
p hewan.sort_by {|a| a.length}