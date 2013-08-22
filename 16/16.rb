#time	0m0.005s

num = 2
limit = 1000
sum = 0

i = 1
while i < limit
	num *= 2
	i += 1
end

num.to_s.split('').each { |j| sum += j.to_i }

puts sum