#time 0m3.065s

maxPrimes = 0
product = 0
limit = 1000
start = -999

# Evaluate if a passed integer is prime
def isPrime? num
  if num % 2 === 0
    return false
  else
    _limit = Math.sqrt(num).floor
    _i = 3

    while _i <= _limit
      return false unless num % _i != 0

      _i += 2
    end

    return true
  end
end

# Loop through possible formulas to find which yields most consecutive primes
i = start
while i < limit
  j = start
  while j < limit
    n = 1
    begin
      n += 1
    end while isPrime? (n * n + i * n + j).abs

    if n > maxPrimes
      maxPrimes = n
      product = i * j
    end

    j += 1
  end

  i += 1
end

puts product