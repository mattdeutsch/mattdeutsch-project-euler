require "prime.rb"

def smalldiv(input)
	result = 1
	Prime.each do |p|
		if p <= input
			pow = 1
			while (p**(pow+1)) < input
				pow += 1
			end
			result *= p**pow
		else
			return result
		end
	end
end

puts smalldiv(ARGV[0].to_i)