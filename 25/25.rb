#time	0m1.221s

require '../shared.rb'

limit = 1000

# Find the first Fibonacci term with at least 'limit' digits
i = 0
while (getFibonacci i).to_s.split('').size < limit
	i += 1
end

puts i