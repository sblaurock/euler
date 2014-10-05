#time 0m0.879s

$cache = []
sum = 0
limit = 100000

# Returns the factorial of a number (with caching)
def factorial num
	if (num == 0 || num == 1)
		return 1
	end

	if $cache[num]
		return $cache[num]
	end

	return $cache[num] = factorial(num - 1) * num
end

i = 10
while i <= limit
	# Add if sum of factorials of digits comprising number equal number itself
	sum += i if i === i.to_s.split('').map{ |n| factorial n.to_i }.inject(:+)
	i += 1
end

puts sum