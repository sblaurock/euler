#time	0m0.02s

size = 20
lattice = []

# Number of nodes is one larger than size
nodes = size + 1

# Instantiate our lattice
for i in 0..nodes
	row = []

	for j in 0..nodes
		row[j] = 1
	end

	lattice[i] = row
end

# Traverse through the lattice setting the value of position equal to sum of adjacent values
y = 1
while y < nodes do
	x = 1
	while x < nodes do
		lattice[y][x] = lattice[y - 1][x] + lattice[y][x - 1]

		x += 1
	end

	y += 1
end

puts lattice[size][size]