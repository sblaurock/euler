#time 0m0.052s

$limit = 200
$ways = 0
$coins = [1, 2, 5, 10, 20, 50, 100, 200]

# Recurse through combinations of items, incrementing when sum equals limit
def spiral level, total
	if level === 0
		$ways += 1

		return
	end

	_i = 0
	_amount = 0
	while _amount <= $limit
		_amount = _i * $coins[level]
		_total = total + _amount

		return if _total > $limit

		spiral level - 1, _total

		_i += 1
	end
end

spiral $coins.length - 1, 0

puts $ways