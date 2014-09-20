#time	0m4.451s

limit = 1000
highestDenominator = 0
longestCycle = 0
precision = 10000

i = 2;
while i < limit
	decimal = (10 ** precision / i).to_s

	j = 1
	while j < precision - 1
		if decimal[0, j] === decimal[j, j]
			if j > longestCycle
				longestCycle = j
				highestDenominator = i
			end

			break
		end

		j += 1
	end

	i += 1
end

puts highestDenominator