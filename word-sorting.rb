puts "Cuentame tu vida"
sentence = gets.chomp
sentence_array = sentence.split(" ")
puts sentence_array.sort_by(&:downcase)