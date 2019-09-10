require "prime.rb"

def calcnumoffactors(input)
	result = 1
	Prime.each do |p|
		# see how many times p divides our give number
		if p > input
			return result
		end
		pow = 0
		# puts input
		# puts p
		while (input % p**(pow + 1) == 0)
			pow += 1
		end
		# puts pow
		result *= (pow + 1)
	end
end

maxdivisors = 1
tri = 0
index = 1
while 1
	tri += index
	numdiv = calcnumoffactors(tri)
	if numdiv > maxdivisors
		puts "New high score: #{tri} has #{numdiv} divisors"
		maxdivisors = numdiv
	end
	if calcnumoffactors(tri) > 500
		break
	end
	index += 1
end

puts tri

puts calcnumoffactors(5)
puts calcnumoffactors(30)