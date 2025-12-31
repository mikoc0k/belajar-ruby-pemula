# def say_moo(number)
#   puts 'moooo ...' * number
# end
# say_moo(5)
#
# def tambah(a,b)
#   a + b
# end
#
# puts tambah(5,3)
#
# def bagi(a,b)
#   return nil if b == 0
#   a / b
# end
#
# puts bagi(24,4)
# puts bagi(9,0)
# p bagi(9,0)

# local variable
# def dobel num
#   angka = num * 2
#   puts "#{num} x 2 = #{angka}"
# end
# dobel(3)
# # puts angka.to_s # tidak bisa memanggil variabel di dalam method

# def littlePest var
#   var = nil
#   puts 'haha'
# end
#
# var = 'blablabla'
# littlePest(var)
# puts var

def say_moo(numbers)
  puts 'moo...' * numbers
  'yellow marine'
end

say_mo_3 = say_moo(3)
puts say_mo_3