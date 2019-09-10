def diffsquaresum(k)
	sqaureofsum = ((k*(k+1))/2) ** 2
	sumofsquare = (k*(k+1)*(2*k+1))/6
	return sqaureofsum - sumofsquare
end

puts diffsquaresum(ARGV[0].to_i)