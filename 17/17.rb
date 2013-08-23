#time	0m0.016s

onesPlace = ['', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
tensPlace = ['', '', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
limit = 1000
count = 0

i = 1
while i <= limit do
	string = ' '
	digits = ("%04d" % i).to_s.split('')
	
	# Thousands place
	thousands = digits[0].to_i
	if thousands != 0
		string += onesPlace[thousands] + ' thousand'
	end
	
	# Hundreds place
	hundreds = digits[1].to_i
	if hundreds != 0
		if thousands != 0
			string += ' and '
		end
		
		string += onesPlace[hundreds] + ' hundred'
	end
	
	# Tens place
	tens = digits[2].to_i
	if tens > 1
		if thousands != 0 or hundreds != 0
			string += ' and '
		end
		
		string += tensPlace[tens]
	end
	
	# Handle numbers that break the traditional pattern (11 - 19)
	ones = digits[3].to_i
	if tens === 1
		tens -= 1
		ones += 10
	end
	
	# Ones place
	if ones != 0
		if thousands != 0 or hundreds != 0 or tens != 0
			string += ' '
			
			if tens < 2
				string += 'and '
			end
		end
		
		string += onesPlace[ones]
	end
	
	count += string.delete(' ').length
	i += 1
end

puts count