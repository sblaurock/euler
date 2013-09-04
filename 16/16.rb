#time	0m0.02s

num = 2
limit = 1000
sum = 0

# 'num' to the power of 'limit'
i = 1
while i < limit
	num *= 2
	i += 1
end

# Add all digits in 'num'
num.to_s.split('').each { |j| sum += j.to_i }

puts sum