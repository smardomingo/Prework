#for number in 1..50
#	if number % 3 == 0 && number % 5 == 0
#		puts "FizzBuzz"
#	elsif number % 3 == 0	
#		puts "Fizz"
#	elsif number % 5 == 0
#		puts "Buzz"
#	else
#		puts number
#	end
#end

(1..50).each do |x|
	if x % 3 == 0 && x % 5 == 0
		puts "FizzBuzz"
	elsif x % 3 == 0	
		puts "Fizz"
	elsif x % 5 == 0
		puts "Buzz"
	else
		puts x
	end
end