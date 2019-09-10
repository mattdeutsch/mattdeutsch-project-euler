require "prime"

$primememo = {}

def isprime(input)
	unless primememo[input].nil?
		return $primememo[input]
	end
	Prime.each do |p|
		if p == input
			$primememo[input] = true
			return true
		end
		if input % p == 0
			$primememo[input] = false
			return false
		end
	end
end

def evalformula(a, b)
	n = 0
	numprime = 0
	while isprime(n**2 + a*n + b) do
		numprime += 1
		n++
	end
	return numprime
end

maxlen = 0
max_at = [0, 0]
((-1000)..(1000)).each do |i|
	((-1000)..(1000)).each do |j|
		v = evalformula(i, j)
		if v > maxlen
			puts "New best: prime length of #{v}, achieved at (a, b) = (#{i}, #{j})"
			maxlen = v
			max_at = [i, j]
		end
	end
end