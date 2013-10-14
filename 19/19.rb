#time	0m0.05s

# Initialize variables based off the given information
$monthCounts = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
curDay = 1
curMonth = 1
curYear = 1900
curDOW = 1 # Monday
startYear = 1901
endDay = 31
endMonth = 12
endYear = 2000
numFirstSundays = 0

def getMonthDays month, year
	_monthDays = $monthCounts[month]

	# Handle leap years (hey February, you kind of suck)
	if month === 2
		if year % 100 === 0
			if year % 400 === 0
				_monthDays += 1
			end
		elsif year % 4 === 0
			_monthDays += 1
		end
	end

	return _monthDays
end

# Loop through days between start and end date, logging Sundays that fell on first of month after 'startYear'
while curYear <= endYear do
	while curMonth <= endMonth do
		while curDay <= getMonthDays(curMonth, curYear) do
			if curDay === 1 && curDOW === 0
				numFirstSundays += 1 unless curYear < startYear
			end

			curDOW = curDOW === 6 ? 0 : curDOW + 1
			curDay += 1
		end

		curDay = 1
		curMonth += 1
	end

	curMonth = 1
	curYear += 1
end

puts numFirstSundays