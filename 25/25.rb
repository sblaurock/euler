#time	0m2.12s

$cache = [0, 1]
limit = 1000

# Returns the Fibonacci number at position 'num' (with caching)
def fibonacci num
	_cached = $cache[num]

	if _cached
		return _cached
	else
		return $cache[num] = fibonacci(num - 1) + fibonacci(num - 2)
	end
end

# Find the first Fibonacci term with at least 'limit' digits
i = 0
while fibonacci(i).to_s.split('').size < limit
	i += 1
end

puts i