# Idea: Instead of exponentially recursing, save results to previous calls
# Edit calls to the function to match the memo

# Assumes input is of the form 0-n
# Assumes n \leq 9
# Returns a list of strings, in lexicographic order.
def lexicograph(n)
	puts "lexicograph(#{n})"
	if n == 0
		return ["0"]
	end
	result = []
	previous_ordering = lexicograph(n-1)
	0.upto(n) do |k|
		# puts "k: #{k}"
		previous_ordering.each do |perm|
			# puts "perm: #{perm}"
			val = perm.clone
			(n-1).downto(k) do |i|
				# puts "i: #{i}"
				val.gsub!(i.to_s, (i+1).to_s)
			end
			result << k.to_s + val
		end
	end
	puts "returning #{n}"
	return result
end

puts lexicograph(9)[1_000_000 - 1]