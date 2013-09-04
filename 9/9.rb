#time	0m0.03s

limit = 1000
loopLimit = limit / 2

# Loop through possible combinations to find the triplet that matches our criterion
a = 1
while a < loopLimit
	b = a + 1
	while b < loopLimit
		c = limit - a - b

		if c * c - (a * a + b * b) === 0
			puts a * b * c
			exit
		end

		b += 1
	end

	a += 1
end