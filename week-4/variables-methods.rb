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
#
#How do you define a local variable?
#A local variable is a variable that exists only within a method or statement block.  It is used to store information within that section of the program. From what I’ve been able to tell from the few sites I’ve checked out the naming convention is to start with either a lowercase letter or a _.
# How do you define a method?
#Methods are parts of your program that do things. Variables represent the properties of an object, and methods do things to those objects.  From what I can tell the naming convention for variables is that they start with a lowercase letter so they aren’t confused with constants.
 #What is the difference between a local variable and a method?
#Covered in the previous question variables represent the properties of an object and method do things to objects.  Local variables exist only within a method or statement block, and methods don’t share that limitation.
 #How do you run a ruby program from the command line?
#ruby filename.rb
 #How do you run an RSpec file from the command line?
#rspec specfile.rb
 #What was confusing about this material? What made sense?
#As usual the reflection is a bit confusing(I never know what to say), but the material was quite simple.  So far so good.
#address
#https://github.com/DonLang/phase-0/blob/master/week-4/address/my_solution.rb
#math
#https://github.com/DonLang/phase-0/blob/master/week-4/math/my_solution.rb