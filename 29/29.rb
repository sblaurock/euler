#time 0m0.055s

terms = []

(2..100).each do |a|
	(2..100).each do |b|
		terms.push(a ** b)
	end
end

puts terms.uniq.count