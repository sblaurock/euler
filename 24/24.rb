#time	0m5.47s

digits = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
target = 1000000

# Return all permutations of an array, and sort it in ascending order.
permutations = digits.permutation.to_a.sort();

puts permutations[target - 1].join('')