#time	0m0.05s

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

	_sum = sum + $numbers[y][x].to_i
	y += 1

	recurse(y, x, _sum)
	recurse(y, x + 1, _sum)
end

# Kick it off
recurse(0, 0, 0)

puts $sums.max