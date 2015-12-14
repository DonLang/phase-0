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
# def separate_comma(number)
#   number = number.to_s
#   control = number.length%3
#   if control == 0
#     control = 3
#   end
#   counter = 1
#   commafied = ""
#   while counter + control < number.length
#     commafied=  "," + number[-counter-2] + number[-counter-1] +number[-counter] + commafied
#     counter += 3
#   end
#   new_counter = 0
#   while new_counter < control
#     commafied = number[control -1-new_counter] + commafied
#     new_counter +=1
#   end
#   return commafied
# end



# 2. Refactored Solution

def separate_comma(number)
  number = number.to_s.split("")
  control = number.length%3
  if control == 0
    control =3
  end
  length = number.length - control
  commafied = []
  new_counter=0
  while new_counter < control
    commafied.push number.delete_at(0)
    new_counter +=1
  end
  while length > 0
    commafied << ","
    3.times do |x|
      commafied.push number.delete_at(0)
    end
    length -= 3
  end
  return commafied.join("")
end

separate_comma(193788999)

# # 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
#I tried breaking it down quite a few ways, and finally settled on a kinda fun destructive tactic.
# Was your pseudocode effective in helping you build a successful initial solution?
#Somewhat I'm still working on pseudocode, and making it work for my mind.  I tend to over complicate things when analyzing them.
# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
#I changed it to use both push and delete_at which deconstructed the previous array while recreating it anew elsewhere.
# How did you initially iterate through the data structure?
#I'm still at times addicted to while loops.
# Do you feel your refactored solution is more readable than your initial solution? Why?
#They are both rather clunky, and not as readable as I would like.