puts "Enter a number"
n = gets.chomp.to_i
string = (0...n).map { ('a'..'z').to_a[rand(n)] }
arr=Array.new
(0..n).flat_map{|n| string.to_a.combination(n).map(&:join)}.each do |c|
	arr.push(c.chars.to_a.permutation.map &:join)			
end
puts arr
words = {}
File.open("/usr/share/dict/words") do |file|
  file.each do |line|
     words[line.strip] = true
  end 
end
arr.each do |a|
  	if words[a.to_s.strip] == true
		puts a
        end
end
