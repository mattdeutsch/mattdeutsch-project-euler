def dumb_sum(input)
	sum = 1
	2.upto(Math.sqrt(input)) do |i|
		if input % i == 0
			sum += i
			sum += input / i
		end
	end
	sum
end

puts dumb_sum(dumb_sum(220))

amic = 0
1.upto(10000) do |i|
	d1 = dumb_sum(i)
	d2 = dumb_sum(d1)
	if i == d2 && i != d1
		amic += i
	end
end
puts amic