# Define caches for defined shared methods.
$factorial_cache = []
$fibonacci_cache = []

# Returns the factorial of a number (with caching)
def getFactorial num
	if (num == 0 || num == 1)
		return 1
	end

	if $factorial_cache[num]
		return $factorial_cache[num]
	end

	return $factorial_cache[num] = getFactorial(num - 1) * num
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

# Calculate all divisors of a number
def getDivisors num
	_divisors = []
	_limit = Math.sqrt(num).floor
	_i = 1

	while _i <= _limit do
		if num % _i === 0
			_divisors.push(num / _i) unless _divisors.include?(num / _i)
			_divisors.push(_i) unless _divisors.include?(_i)
		end

		_i += 1
	end

	return _divisors
end

# Calculate all proper divisors of a number
def getProperDivisors num
	_divisors = getDivisors num

	_divisors.delete(num)

	return _divisors
end

# Returns the Fibonacci number at position (with caching)
def getFibonacci num
	return num if num <= 1

	_cached = $fibonacci_cache[num]

	if _cached
		return _cached
	else
		return $fibonacci_cache[num] = getFibonacci(num - 1) + getFibonacci(num - 2)
	end
end