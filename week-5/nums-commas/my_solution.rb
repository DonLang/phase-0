# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?  The input is a number
# What is the output? (i.e. What should the code return?) The number with commas inserted every three spaces
# What are the steps needed to solve the problem?
#Define a method separate_comma which takes the parameter of a number
#Determine if the numbers length is greater than 3 spaces
#Create another variable as the output
#Put the old variable into the new variable 3 pieces at a time with a comma separator
#return the new variable



# 1. Initial Solution
def separate_comma(number)
  number = number.to_s
  control = number.length%3
  if control == 0
    control = 3
  end
  counter = 1
  commafied = ""
  while counter + control < number.length
    commafied=  "," + number[-counter-2] + number[-counter-1] +number[-counter] + commafied
    counter += 3
  end
  new_counter = 0
  while new_counter < control
    commafied = number[control -1-new_counter] + commafied
    new_counter +=1
  end
  return commafied
end



# 2. Refactored Solution




# 3. Reflection