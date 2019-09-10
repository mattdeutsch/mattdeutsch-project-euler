def lengthof3dignum(num)
	numlengths  = {0=>"", 1=>"one", 2=>"two", 3=>"three", 4=>"four", 5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine"}
	teenlengths = {0=>"ten", 1=>"eleven", 2=>"twelve", 3=>"thirteen", 4=>"fourteen", 5=>"fifteen", 6=>"sixteen", 7=>"seventeen", 8=>"eighteen", 9=>"nineteen"}
	tylengths   = {2=>"twenty", 3=>"thirty", 4=>"forty", 5=>"fifty", 6=>"sixty", 7=>"seventy", 8=>"eighty", 9=>"ninety"}
	if num < 10
		return numlengths[num].length
	end
	if num < 20
		return teenlengths[num%10].length
	end
	if num < 100
		return tylengths[num/10].length + numlengths[num%10].length
	end
	if num == 1000
		return "one".length + "thousand".length
	end
	if num % 100 == 0
		return numlengths[num/100].length + "hundred".length
	end
	return numlengths[num/100].length + "hundred".length + "and".length + lengthof3dignum(num % 100)
end

puts 1.upto(1000).to_a.map{ |i|
	puts "#{i} has #{lengthof3dignum(i)} letters"
	lengthof3dignum(i)
	}.reduce(&:+)