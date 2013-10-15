#time	0m13.45s

limit = 10000
$sums = []
sum = 0

# Calculate the sum of all divisors of a number (needs better caching)
def getDivisorSum num
	_sum = 0
	_limit = 1
	_i = (num / 2).floor

	while _i >= _limit do
		_sum += _i if num % _i === 0
		_i -= 1
	end

	return _sum > 0 ? _sum : 1
end

# Loop through 1 to 'limit', caching results and adding amicable numbers to 'sum' 
i = 1
while i < limit do
	if !$sums[i]
		divisorSum = getDivisorSum(i)
		$sums[i] = divisorSum
	end

	if !$sums[divisorSum]
		$sums[divisorSum] = getDivisorSum(divisorSum)
	end

	if $sums[divisorSum] === i
		sum += (divisorSum + i) if divisorSum != i
	end

	i += 1
end

puts sum