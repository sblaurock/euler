#time	0m0.170s

require '../shared.rb'

limit = 10000
$sums = []
sum = 0

# Loop from 2 to 'limit', caching results and adding amicable numbers to 'sum' 
i = 2
while i < limit do
	if !$sums[i]
		divisorSum = i.properDivisors.inject(:+)
		$sums[i] = divisorSum
	end

	if !$sums[divisorSum]
		$sums[divisorSum] = divisorSum.properDivisors.inject(:+)
	end

	if $sums[divisorSum] === i
		sum += (divisorSum + i) if divisorSum != i
	end

	i += 1
end

puts sum