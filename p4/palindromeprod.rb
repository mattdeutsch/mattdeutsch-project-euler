def splitdigs(k)
	diglist = []
	while k > 0 do
		diglist = [k % 10] + diglist
		k = k / 10
	end
	diglist
end

def ispalin(k)
	x = splitdigs(k)
	while x.count != 0
		if x[0] == x[-1]
			x.delete_at(0)
			x.delete_at(-1)
		else
			return false
		end
	end
	return true
end

largestpalin = 0
100.upto(999) do |i|
	i.upto(999) do |j|
		prod = i*j
		if ispalin(prod)
			if prod > largestpalin
				largestpalin = prod
			end
		end
	end
end

puts largestpalin