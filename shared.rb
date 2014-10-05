# Define caches for defined shared methods.
$factorial_cache = []
$fibonacci_cache = []

class Fixnum
	# Returns the factorial of a number (with caching)
	def factorial
		if (self == 0 || self == 1)
			return 1
		end

		if $factorial_cache[self]
			return $factorial_cache[self]
		end

		return $factorial_cache[self] = (self - 1).factorial * self
	end

	# Evaluate if a passed integer is prime
	def prime?
		if self % 2 === 0
			return false
		else
			_limit = Math.sqrt(self).floor
			_i = 3

			while _i <= _limit
				return false unless self % _i != 0

				_i += 2
			end

			return true
		end
	end

	# Returns an array of all divisors of a number
	def divisors
		_divisors = []
		_limit = Math.sqrt(self).floor
		_i = 1

		while _i <= _limit do
			if self % _i === 0
				_divisors.push(self / _i) unless _divisors.include?(self / _i)
				_divisors.push(_i) unless _divisors.include?(_i)
			end

			_i += 1
		end

		return _divisors
	end

	# Returns an array of all proper divisors of a number
	def properDivisors
		_divisors = self.divisors

		_divisors.delete(self)

		return _divisors
	end

	# Returns the Fibonacci number at position (with caching)
	def fibonacci
		return self if self <= 1

		_cached = $fibonacci_cache[self]

		if _cached
			return _cached
		else
			return $fibonacci_cache[self] = (self - 1).fibonacci + (self - 2).fibonacci
		end
	end
end