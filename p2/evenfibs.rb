def sumevenfibs(limit)
	fib = [0, 1]
	result = 0
	while (fib[1] <= limit) do
		if fib[1] % 2 == 0
			result += fib[1]
		end
		tmp = fib[0]
		fib[0] = fib[1]
		fib[1] += tmp
	end
	result
end

puts sumevenfibs(4000000)