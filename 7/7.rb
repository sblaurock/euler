#time	0m1.159s

# Let's just assume we know that 2 is prime - it breaks our increment rule
counter = 1
limit = 10001

# Evaluate if a passed integer is prime
def isPrime? num
	_limit = Math.sqrt(num)
	_i = 3

	while _i <= _limit
		return false unless num % _i != 0

		_i += 2
	end

	return true
end

# Loop until our prime count hits the limit
i = 1
begin
	i += 2
	counter += 1 if isPrime? i
end while counter != limit

puts i