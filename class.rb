class Car
	@@counter = 1

	def initialize color='red'
		@color = color
		@@counter += 1
		puts "This is a #{@color} car."
	end

	def say msg
		puts msg
	end

	def method_missing method_name_as_symbol
		msg = method_name_as_symbol.to_s.split('_').last
		say msg
	end
end

blue_car = Car.new 'blue'
red_car = Car.new

blue_car.say_hello

blue_car.say_deflated