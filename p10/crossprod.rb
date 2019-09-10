ARRAYLEN = 20
numinput = STDIN.read.split("\n").map{ |s| s = s.split(" ").map(&:to_i) }

maxprod = 0

# go left/right
0.upto(ARRAYLEN - 1) do |row|
	0.upto(ARRAYLEN - 5) do |col|
		prod = (
			numinput[row][col] *
			numinput[row][col + 1] * 
			numinput[row][col + 2] * 
			numinput[row][col + 3]
		)
		maxprod = prod if prod > maxprod
	end
end

# go up/down
0.upto(ARRAYLEN - 5) do |row|
	0.upto(ARRAYLEN - 1) do |col|
		prod = (
			numinput[row][col] *
			numinput[row + 1][col] *
			numinput[row + 2][col] *
			numinput[row + 3][col]
		)
		maxprod = prod if prod > maxprod
	end
end

# go diagonally NW/SE, rows and cols go up at same time
0.upto(ARRAYLEN - 5) do |row|
	0.upto(ARRAYLEN - 5) do |col|
		prod = (
			numinput[row][col] *
			numinput[row+1][col+1] *
			numinput[row+2][col+2] *
			numinput[row+3][col+3]
		)
		maxprod = prod if prod > maxprod
	end
end

# go diagonally NE/SW, rows go up as cols go down
0.upto(ARRAYLEN - 5) do |row|
	4.upto(ARRAYLEN - 1) do |col|
		prod = (
			numinput[row][col] *
			numinput[row + 1][col - 1] *
			numinput[row + 2][col - 2] *
			numinput[row + 3][col - 3]
		)
		maxprod = prod if prod > maxprod
	end
end

puts maxprod