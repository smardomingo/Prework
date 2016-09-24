name = "Sara"
puts "Hi #{name}"
puts "What's your name?"
name = gets.chomp
IO.write('name.txt', name)
puts "Hello, #{name}."
puts "Give me a number"
first_number = gets.chomp.to_i
puts "Give me another number"
second_number = gets.chomp.to_i
puts "#{first_number} x #{second_number} = #{first_number * second_number}"

file_contents = IO.read("ruby.rb")
puts "The source file contains: #{file_contents}"