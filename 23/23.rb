#time 0m2.96s

abundantNumbers = []
abundantNumberSums = {}
limit = 28123

# Calculate the sum of all divisors of a number
def getDivisorSum num
  _divisors = [1]
  _limit = Math.sqrt(num)
  _i = 2

  while _i <= _limit do
    if num % _i === 0
      _divisors.push(num / _i) unless _divisors.include?(num / _i)
      _divisors.push(_i) unless _divisors.include?(_i)
    end

    _i += 1
  end

  return _divisors.inject(:+)
end

i = 12
while i <= limit do
  abundantNumbers.push(i) if getDivisorSum(i) > i

  i += 1;
end

# Get combined sum of every two abundant numbers and append to hash.
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

# Sum every positive integer until 'limit' that isn't the sum of two abundant numbers.
puts (0..limit).select{ |n| !abundantNumberSums.key?(n) }.inject(:+)