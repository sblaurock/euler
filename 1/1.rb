#time 	0m0.003s

sum = 0
limit = 1000

# Add up all multiples of 3
i = 3
until i >= limit do
	sum += i
	i += 3
end

# Add up all multiples of 5
j = 5
until j >= limit do
	sum += j
	j += 5
end

# Subtract the duplicates
k = 15
until k >= limit do
	sum -= k
	k += 15
end

puts sum