#time	0m0.01s

$cache = []
sum = 0
base = 100

# Returns the factorial of a number (with caching)
def factorial num
	if (num == 0 || num == 1)
		return 1
	end

	if $cache[num]
		return $cache[num]
	end

	return $cache = factorial(num - 1) * num
end

# Sum all digits of the factorial of 'base'
factorial(base).to_s.split('').map{ |i| sum += i.to_i }

puts sum