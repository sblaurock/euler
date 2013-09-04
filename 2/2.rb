#time	0m0.02s

number = 4000000
sum = 0
prev = 1
prevPrev = 0

# Sum all even Fibonacci numbers below 'number'
i = 0
until i >= number do
	sum += i unless i & 1 === 1
	i = prev + prevPrev
	prevPrev = prev
	prev = i
end

puts sum