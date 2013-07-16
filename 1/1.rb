sum = 0
i = 3
j = 5
k = 15
limit = 1000

# Add up all multiples of 3
until i >= limit do
	sum += i
	i += 3
end

# Add up all multiples of 5
until j >= limit do
	sum += j
	j += 5
end

# Subtract the duplicates
until k >= limit do
	sum -= k
	k += 15
end

puts sum