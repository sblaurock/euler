#time 0m11.872s

$length = 9
products = []

def pandigital? num
	_sorted = num.to_s.split('').sort().join('')
	_comparison = '123456789'

	return _comparison[0, $length] === _sorted
end

i = 1
while i < 9999
	j = 1
	while j < 99
		product = i * j

		break if product.to_s.length > $length

		if pandigital? (i.to_s + j.to_s + product.to_s).to_i
			products.push(product) unless products.include? product
		end

		j += 1
	end

	i += 1
end

puts products.inject(:+)