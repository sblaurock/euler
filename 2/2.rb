#time		0m0.003s

sum = 0
prev = 1
prevPrev = 0

# Sum all even Fibonacci numbers below 4 million
i = 0
until i >= 4000000 do
	sum += i unless i & 1 === 1
	i = prev + prevPrev
	prevPrev = prev
	prev = i
end

puts sum