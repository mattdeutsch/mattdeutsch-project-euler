def reciprocal_repeat(input)
	digs = 10
	done = false
	pastdigs = [digs]
	result = []
	# while not done
	loop do
		# How many times does it go into digs?
		# n / digs gets added to solution as a digit
		# n % digs becomes the new digs
		# 0 gets added to the end of n % digs
		# eventually, check if digs has been done before.
		result << digs / input
		digs = (digs % input) * 10
		if pastdigs.include? digs
			# puts "#{result}, #{pastdigs}"
			return pastdigs.length - pastdigs.find_index(digs)
		end
		pastdigs << digs
	end
end

puts reciprocal_repeat(991)

maxi = 0
max_at = 0
(1..1000).each do |i|
	test = reciprocal_repeat(i)
	if test > maxi
		maxi = test
		max_at = i
	end
end

puts "#{maxi}, #{max_at}"