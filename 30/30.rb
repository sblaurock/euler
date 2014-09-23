#time 0m2.484s

sum = 0
power = 5

# Supplying an input of more than 6 characters will never yield an output of more than 6 characters.
limit = (9 ** power) * 6

i = 2
while i < limit
	digits = i.to_s.split('')
	total = 0

	digits.each do |digit|
		total += digit.to_i ** power
	end

	sum += i if total === i

	i += 1
end

puts sum