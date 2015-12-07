# Factorial

# I worked on this challenge [by with:Everett Golden ].


# Your Solution Below
#Define a Method that takes a number
def factorial(number)
  #Make a variable to represent the total
  total = 1
  #Make sure the number is greater than zero
  if number > 0
    # Make a counter
    counter = 1
    #While the counter is less than the number multiply it to the total
    while counter <= number
      total = total * counter
    #increment  the counter
    counter += 1
  end
end
  #output the total
  return total
end


