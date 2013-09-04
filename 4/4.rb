#time 0m3.96s

palindromes = []

# Evaluate if a supplied number is a palindrome
def isPalindrome? string
	_string = string.to_s.split('')
	_len = _string.length
	_halfLen = (_len / 2).floor
	_i = 0

	while _i <= _halfLen do
		return false if _string[_i] != _string[(_len - 1) - _i]

		_i += 1
	end

	return true
end

# Loop through all three digit combinations and push to an array if product is a palindrome
for i in 100..999
	for j in 100..999
		product = i * j
		palindromes.push(product) if isPalindrome? product
	end
end

puts palindromes.max