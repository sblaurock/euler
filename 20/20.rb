#time	0m0.037s

require '../shared.rb'

sum = 0
base = 100

# Sum all digits of the factorial of 'base'
base.factorial.to_s.split('').map{ |i| sum += i.to_i }

puts sum