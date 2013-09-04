#time	0m0.02s

sum = 0
digits = 10

# Read from our input file, adding the significant digits on each line to 'sum'
File.open("input", "r").each_line do |line|
	sum += line.to_s[0, digits + 1].to_i
end

puts sum.to_s[0, digits]