def count3n5s(k)
	result = 0
	1.upto(k-1) do |x|
		if x % 5 == 0 || x % 3 == 0
			result += x
		end
	end
	result
end

puts count3n5s(1000)