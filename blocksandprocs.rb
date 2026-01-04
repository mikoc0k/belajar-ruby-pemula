=begin
# method mengembalikan procs
def compose proc1, proc2
  Proc.new do |x|
    proc2.call(proc1.call(x))
  end
end

# misal kita buat 2 procs
squareit = Proc.new { |x| x * x }
doubleit = Proc.new { |x| x * 2 }

squarethendouble = compose(squareit,doubleit)
doublethensquare = compose(doubleit,squareit)
puts squarethendouble.call(5)
puts doublethensquare.call(5)
=end 

# procedur tanpa parameter
say_hello = Proc.new do
    puts 'hello'
end

say_hello.call

# procedur dengan parameter
count_gula = Proc.new do |gula|
    puts "harga #{gula} kg gula adalah = #{gula * 16000} "
end

count_gula.call(50)
count_gula.call(22)