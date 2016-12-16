puts "Enter a number"
n = gets.chomp.to_i
string = (0...n).map { ('a'..'z').to_a[rand(n)] }
arr=Array.new
(0..n).flat_map{|n| string.to_a.combination(n).map(&:join)}.each do |c|
	arr.push(c.chars.to_a.permutation.map &:join)			
end
puts arr
