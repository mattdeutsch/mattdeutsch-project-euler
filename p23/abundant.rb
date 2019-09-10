def dumb_sum(input)
	sum = 1
	2.upto(Math.sqrt(input)) do |i|
		if input % i == 0
			sum += i
			sum += input / i if i != input / i
		end
	end
	sum
end

require "set"

abundants = (1..28123).to_a.delete_if {|x| dumb_sum(x) <= x }
notfound = (1..28123).to_a.to_set
abundants.each do |i|
	puts "#{i}"
	abundants.each do |j|
		notfound.delete(i+j)
	end
end
puts notfound.reduce(&:+)