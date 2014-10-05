#time 0m3.454s

require '../shared.rb'

maxPrimes = 0
product = 0
limit = 1000
start = -999

# Loop through possible formulas to find which yields most consecutive primes
i = start
while i < limit
	j = start
	while j < limit
		n = 1
		begin
			n += 1
		end while (n * n + i * n + j).abs.prime?

		if n > maxPrimes
			maxPrimes = n
			product = i * j
		end

		j += 1
	end

	i += 1
end

puts product