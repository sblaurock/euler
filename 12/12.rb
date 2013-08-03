#time	0m7.518s

limit = 500
primesLimit = 10000
$primes = [2]

# Evaluate the nth triangle number (with caching)
$triangles = []
def getTriangle num
	if num === 1
		return num
	end

	if $triangles[num]
		return $triangles[num]
	else
		return $triangles[num] = (getTriangle num - 1) + num
	end
end

# Evaluate if a passed integer is prime
def isPrime? num
	if num % 2 === 0
		return false
	else
		_limit = Math.sqrt(num).floor
		_i = 3

		while _i <= _limit
			return false unless num % _i != 0

			_i += 2
		end

		return true
	end
end

# Pre-populate a list of primes
i = 3
while i <= primesLimit
	$primes.push(i) if isPrime? i
	i += 2
end

# Return the prime factor for a supplied number
def getPrimeFactor num
	_i = 0
	begin
		_prime = $primes[_i]
		_limit = Math.sqrt(num)

		if(_prime > _limit)
			return num
		else
			_result = num / _prime.to_f
			_i += 1
		end
	end while  _result - _result.floor != 0

	return _prime
end

# Calculate the number of divisors based on prime factorization
def getDivisorCount num
	_divisors = []
	_count = 1

	while !isPrime? num
		_factor = getPrimeFactor num
		_current = _divisors[_factor]
		_divisors[_factor] = _current != nil ? _current + 1 : 1
		num /= _factor
	end

	_current = _divisors[num]
	_divisors[num] = _current != nil ? _current + 1 : 1

	_divisors.each {|value|
		if value != nil
			_count *= value + 1
		end
	}

	return _count
end

# Find the first triangle number to have over 'limit' divisors
i = 1
begin
	triangle = getTriangle i
	count = getDivisorCount triangle
	i += 1
end while count < limit

puts triangle