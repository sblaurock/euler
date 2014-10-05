#time 0m0.086s

require '../shared.rb'

start = 10
limit = 99
productNumerator = 1
productDenominator = 1

# Loop through all combinations, disregarding "trivial" examples
numerator = start
while numerator <= limit
	denominator = numerator + 1
	while denominator <= limit
		if denominator % 10 != 0
			stringNumerator = numerator.to_s
			stringDenominator = denominator.to_s

			stringNumerator.split('').each{|digit|
				replacedNumerator = stringNumerator.sub(digit, '')
				replacedDenominator = stringDenominator.sub(digit, '')

				# If fractions are equivalent after substitution, multiply numerator and denominator
				if replacedNumerator.length === 1 && replacedDenominator.length === 1
					if (numerator.to_f / denominator.to_f) === (replacedNumerator.to_f / replacedDenominator.to_f)
						productNumerator *= numerator
						productDenominator *= denominator
					end
				end
			}
		end

		denominator += 1
	end

	numerator += 1
end

# Pre-calculate all divisors of 'numerator' and 'denominator'
numeratorDivisors = productNumerator.divisors
denominatorDivisors = productDenominator.divisors.sort().reverse()

# Locate the largest divisor 'numerator' and 'denominator' have in common to reduce fraction
denominatorDivisors.each{|divisor|
	if numeratorDivisors.include? divisor
		productNumerator /= divisor
		productDenominator /= divisor

		break
	end
}

puts productDenominator