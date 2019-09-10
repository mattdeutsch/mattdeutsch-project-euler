1.upto(1000) do |i|
	i.upto(1000) do |j|
		k = 1000 - i - j
		if i**2 + j**2 == k**2
			puts "#{i}, #{j}, #{k}\n"
		end
	end
end