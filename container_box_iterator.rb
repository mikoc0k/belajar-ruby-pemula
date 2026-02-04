# Containers

# contoh array

nilai_a = [3.14, 'pie', 99]
puts nilai_a.class
puts nilai_a.length
puts nilai_a[0]
puts nilai_a[1]

nilai_b = Array.new
puts nilai_b.class
puts nilai_b.length
nilai_b[0] = 'adili'
nilai_b[1] = 'jokowi'
p nilai_b

skor_math = [77,67,60,60,88,76,90,55,65]
puts skor_math[-1]
puts skor_math[-2]

# index array dengan pair of number : xyz[a: start,count]
p skor_math[1,4]
p skor_math[4,1]