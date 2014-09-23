#time 0m0.073s

size = 1001
sum = 1

# Get value at corner of "spiral" based on distance from center.
# 'quadrant' 1 matches top right corner - increment clockwise.
def cornerValue distance, quadrant
	_sum = 1
	_const = 2 ** 3

	_i = 0 and while _i <= distance - 1
		_sum += (quadrant * 2) + _const * _i
		_i += 1
	end

	return _sum
end

distance = 1
while distance <= size / 2
	(1..4).each do |quadrant|
		sum += cornerValue distance, quadrant
	end

	distance += 1
end

puts sum