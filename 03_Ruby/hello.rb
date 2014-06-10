puts 'Hello World'

puts 'What is your name?'
name = gets.chomp
puts "Hi #{name}!"

fruits = %w( apples oranges pears )

puts fruits[0] if fruits[1] == 'oranges'
fruits.each { |fruit|  puts fruit }

cars = {
	au: 'audi',
	m: 'mercedes',
	v: 'volvo'
}

cars[:v] = 'Volvo' unless cars[:m] == 'audi'
cars.each { |short, car|  puts car }

