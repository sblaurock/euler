#time	0m10.715s

number = 600851475143
primes = []

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

# Find all the primes
i = 3
limit = Math.sqrt(number).floor
while i <= limit do
	primes.push(i) unless !isPrime? i
	i += 2
end

# Find the largest prime that is also a factor of 'number'
j = primes.length
begin
	j -= 1
	result = number / (primes[j]).to_f
end while result - result.floor != 0

puts primes[j]