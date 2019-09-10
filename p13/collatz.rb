def collatz(n)
	if n%2==0
		n/2
	else
		3*n + 1
	end
end

def dynamic(i)
	c = collatz(i)
	if $results[c].nil?
		dynamic(c)
	end
	$results[i] = 1 + $results[c]
	if $results[i] > $maxresult
		$maxresult = $results[i]
		puts "New best: #{i} has a collatz length of #{$maxresult}"
	end
end

$results = {1 => 0}
$maxresult = 0
2.upto(1000000) do |i|
	if $results[i].nil?
		dynamic(i)
	end
end