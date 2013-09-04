#time	0m0.02s

limit = 100

def sumOfSquares limit
	_i = 0
	_sum = 0

	while _i <= limit do
		_sum += _i * _i
		_i += 1
	end

	return _sum
end

def squareOfSums limit
	_i = 0
	_sum = 0

	while _i <= limit do
		_sum += _i
		_i += 1
	end

	return _sum * _sum
end

puts (squareOfSums limit) - (sumOfSquares limit)