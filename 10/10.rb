#time	0m25.076s

# Let's just assume we know that 2 is prime - it breaks our increment rule
sum = 2
number = 2000000
divisors = []

# Evaluate if a passed odd integer is prime
def isPrime? num
	_limit = Math.sqrt(num).floor
	_i = 3

	while _i <= _limit
		return false unless num % _i != 0

		_i += 2
	end

	return true
end

# Populate an array of primes below the square root of 'number' and add them to our sum
i = 3
limit = Math.sqrt(number).floor
while i <= limit do
	if isPrime? i
		divisors.push(i)
		sum += i
	end

	i += 2
end

# Add primes to sum between 'limit' and 'number', skipping any divisible by a value in 'divisors'
j = limit % 2 === 0 ? limit + 1 : limit
divisorsLen = divisors.length
while j < number do
	k = 0
	while k < divisorsLen
		break if j % divisors[k] === 0

		k += 1
	end

	sum += j if k === divisorsLen
	j += 2
end

puts sum