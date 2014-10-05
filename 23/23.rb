#time 0m2.817s

require '../shared.rb'

abundantNumbers = []
abundantNumberSums = {}
limit = 28123

i = 12
while i <= limit do
	abundantNumbers.push(i) if i.properDivisors.inject(:+) > i

	i += 1;
end

# Get combined sum of every two abundant numbers and append to hash
i = 0
sum = 0
length = abundantNumbers.count - 1
while i < length do
	j = i

	while j < length do
		sum = abundantNumbers[j] + abundantNumbers[i];

		break if sum > limit

		abundantNumberSums[sum] = true

		j += 1
	end

	i += 1
end

# Sum every positive integer until 'limit' that isn't the sum of two abundant numbers
puts (0..limit).select{ |n| !abundantNumberSums.key?(n) }.inject(:+)