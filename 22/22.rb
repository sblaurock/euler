#time	0m0.03s

names = []
total = 0
offset = 64 # Start of alphabet ASCII values

# Read from our input file, add names to an array and sort alphabetically
names = File.read('names.txt').gsub!('"', '').split(',').sort();

# Loop through all the names, adding the calculated values and positions of each
i = 0
while i < names.length do
	name = names[i]
	nameValue = 0

	# Loop through all characters in name to calculate value from distance in alphabet
	j = 0
	while j < name.length do
		nameValue += name[j] - offset
		j += 1
	end

	i += 1
	total += nameValue * i
end 

puts total