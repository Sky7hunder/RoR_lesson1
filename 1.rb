puts 'Enter integer numbers in console'
int1 = gets.chomp
int2 = gets.chomp
regexp = /\A[-+]?\d+\z/

until int1 =~regexp && int2 =~regexp
  puts "Entered number was incorrect"
  puts "Please, enter integer numbers again"
  int1 = gets.chomp
  int2 = gets.chomp
end

sum = int1.to_i + int2.to_i
puts sum.to_s
