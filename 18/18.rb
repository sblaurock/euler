#time	0m0.06s

$numbers = []
$sums = []

# Read from our input file, adding numbers from each line to an array
File.open("input", "r").each_line do |line|
	$numbers.push(line.split(' '))
end

# Recurse through all paths, adding the sum of numbers in path to an array
def recurse y, x, sum
	if !$numbers[y]
		$sums.push(sum)

		return
	end

	_y = y
	_x = x
	_sum = sum
	_cur = $numbers[y][x].to_i

	recurse(y + 1, x, sum += _cur)
	recurse(_y + 1, _x + 1, _sum += _cur)
end

# Kick it off
recurse(0, 0, 0)

puts $sums.max