#time	0m1.555s

require '../shared.rb'

number = 600851475143
primes = []

# Find all the primes
i = 3
limit = Math.sqrt(number).floor
while i <= limit do
	primes.push(i) unless !isPrime? i
	i += 2
end

# Find the largest prime that is also a factor of 'number'
j = primes.length
begin
	j -= 1
	result = number / (primes[j]).to_f
end while result - result.floor != 0

puts primes[j]