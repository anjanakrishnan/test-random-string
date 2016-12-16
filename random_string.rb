puts "Enter a number"
n = gets.chomp.to_i
string = (0...n).map { ('a'..'z').to_a[rand(n)] }
puts string
