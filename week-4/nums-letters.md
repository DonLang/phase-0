#####What does puts do?
It prints to the console on a new line, but returns nil.
#####What is an integer? What is a float?
An integer is a number with no decimal point, and a float is a number with decimal point.
#####What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
Float division allows for fractional remnants, and integer division rounds down to the nearest whole number.  I’d probably use the same commerce driven example most people use something like... If you have 23 dollars and want to buy drinks at 5 dollars a drink then you have enough for 4 drinks, not 4.6 drinks.
‘’’ruby
#PSEUDOCODE
#Create a variable for the number of days in a year (average)
days = 365.25
#Create a variable for the number of hours in a day
hours = 24
#Multiply the two variables to find out hours in a year
hours_in_a_year = hours * days
#Create a variable for the number of years in a decade
years =10
#Create a variable for the number of minutes in a hour
minutes = 60
#Multiply the minutes, years, and hours in a year
minutes_in_a_year = hours_in_a_year + years + minutes
#Print out the minutes in a decade and hours in a year
puts minutes_in_a_decade
puts hours_in_a_year ‘’'


#####How does Ruby handle addition, subtraction, multiplication, and division of numbers?
By using the symbols +,-,/,* it can handle addition, subtraction, division(that result in an integer), or multiplication,  If you have division that results in a remainder then you would have to either set the variables to floats (using .to_f ) or user %(modulo) to get the remainder. Ruby rounds down unless you specifically request that it does.

#####What is the difference between integers and floats?
 As mentioned above integers are numbers without decimal places and floats are numbers with decimal places.

#####What is the difference between integer and float division?
integer division rounds down to the nearest number, and float division shows the actual amount of the answer.

#####What are strings? Why and when would you use them?
Strings are groups of letters, digits, punctuation, symbols, and spaces.  They are used when you want to manipulate text, and use the format of a_string = ‘ stuff‘ or a_string = “stuff". You use them when you want to work with symbols rather that with numbers, and can perform arithmetic on them to add them together, multiplication to copy them multiple times, or you can apply many methods to them like .reverse or .upcase.

#####What are local variables? Why and when would you use them?
 Local variables are variables that exist only in the method in which they are used.  They allow you to do things inside a method without impacting the variables that live outside it.

#####How was this challenge? Did you get a good review of some of the basics?
It was fun.  A good review of the basics without any real problems.

[basic math](basic-math.rb)
[simple string](simple-string.rb)
[defining variables](defining-variables.rb)