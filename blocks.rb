def apple
	color = 'red'
	name = 'apple'
	yield color, name
end

def mango
	name = 'mango'
	color = 'yellow'
	yield color if block_given?
end

lambda_to_print_color = lambda do |color_to_print| 
	puts color_to_print
end

color_and_name = lambda do | color, name | 
	puts "color: #{color}, name: #{name}"
end

# lambda_to_print_color.call('red')

# apple &color_and_name
# mango &lambda_to_print_color
# mango



def add(x)
	y = yield
	puts x + y
end

# return_2 = lambda { return 2 }
return_2 = lambda do
	2 
end

add(1) do
	2
end

add 1, &return_2