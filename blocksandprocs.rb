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


=begin
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
=end

# contoh selanjutnya

# passing block sebagai parameter (gokils)

=begin
def profile desc_of_block, &block
    start_time = Time.now
    block.call
    duration = Time.now - start_time
    puts desc_of_block + ":" + duration.to_s + " detik"
end

profile "2500 doublings" do
    number = 1
    2500.times do
        number = number + number
    end
    puts number.to_s.length.to_s + " digit"
end

profile "count to a million" do
    number = 0
    1000000.times do
        number += 1
    end
end

=end

# contoh passing block sebagai parameter (simpler example)
def tester &block
    puts 'before block'
    block.call
    puts 'after block'
end

tester do
    puts 'ini dia blocknya'
end
