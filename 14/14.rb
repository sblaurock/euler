#time	0m42.785s

limit = 1000000
longest = 0
number = 0

# For all odd numbers under 'limit', follow the sequence while keeping track of chain length
i = 1
while i < limit do
	current = i
	length = 1

	begin
		if current % 2 === 0
			current = current / 2
		else
			current = (3 * current) + 1
		end

		length += 1
	end while current != 1

	if length > longest
		longest = length
		number = i
	end
	
	i += 2
end

puts number