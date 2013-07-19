#time	0m28.564s

# Evaluate if a supplied number is divisible by every number from one to 20
def isDivisible? num
	_numbers = [20, 18, 17, 16, 15, 14, 13, 12, 11]
	_numbersLen = _numbers.length - 1
	_j = 0

	while _j <= _numbersLen do
		_result = num / _numbers[_j].to_f

		return false if _result - _result.floor != 0

		_j += 1
	end

	return true
end

# Increment until we find the first number divisible by all numbers in our interval
i = 0
while true do
	i += 19
	break if isDivisible? i
end

puts i