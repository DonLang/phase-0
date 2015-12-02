puts "Hi, what is your first name?"
first_name = gets.chomp
puts "That is nice. What is your middle name?"
middle_name=gets.chomp
puts "One more question. What is your last name?"
last_name= gets.chomp
puts "So your name is " +first_name +" " + middle_name + " " + last_name + ".  That is a good name!"

puts "So what is your favorite number?"
number = gets.to_f
better = number +1
puts number.to_s + " is good, but " + better.to_s + " is better. Yay! you have a new favorite number."

