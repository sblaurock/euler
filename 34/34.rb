#time 0m0.858s

require '../shared.rb'

$cache = []
sum = 0
limit = 100000

i = 10
while i <= limit
	# Add if sum of factorials of digits comprising number equal number itself
	sum += i if i === i.to_s.split('').map{ |n| getFactorial n.to_i }.inject(:+)
	i += 1
end

puts sum