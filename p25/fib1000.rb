def find1000digitfib()
	fib = [0, 1, 1]
	result = 0
	while (Math.log(fib[1], 10) <= 1000-1) do
		if fib[1] % 2 == 0
			result += fib[1]
		end
		tmp = fib[0]
		fib[0] = fib[1]
		fib[1] += tmp
		fib[2] += 1
	end
	return fib[2]
end

puts find1000digitfib()