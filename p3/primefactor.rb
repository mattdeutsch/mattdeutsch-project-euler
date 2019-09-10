def largestpfactor(input, startingpoint)
	if input <= 3
		return input
	end
	startingpoint.upto(input) do |x|
		if input % x == 0
			prev = largestpfactor(input / x, x)
			if x > prev
				return x
			else
				return prev
			end
		end
	end
end

puts largestpfactor(600851475143, 2)