x = [1, 2, 3, 5, 6, 7, 12]
sqaured_x = []

x.each do |element|
	sqaured_x << element * element
end

# puts sqaured_x


# Ruby way

sqaured = x.collect { |num| num * num }

# puts sqaured


odd = x.select { |num| num % 2 != 0 }

# puts odd

sum = x.inject(0) do |s, el| 
	s += el 
end

puts sum