inputstr = STDIN.read.gsub("\n", "")

def calcproduct(inputstr)
	initresult = 1
	0.upto(12) do |c|
		 initresult *= inputstr[c].to_i
	end
	return initresult
end

maxresult = 1
index = 0
while inputstr[index + 12] != nil do
	if calcproduct(inputstr[index..(index+12)]) > maxresult
		maxresult = calcproduct(inputstr[index..(index+12)])
	end
	index += 1
end

puts maxresult