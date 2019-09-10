pyramid = STDIN.read.split("\n").map{ |s| s.split().map(&:to_i) }.reverse

pyramid.each_with_index do |line, row|
	line.each_with_index do |num, col|
		next if line[col+1].nil?
		max = line[col] > line[col + 1] ? line[col] : line[col + 1]
		pyramid[row+1][col] += max
	end
end

puts pyramid[-1][0]