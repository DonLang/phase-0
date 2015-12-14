# Pad an Array

# I worked on this challenge [by  with: Chris Wong]

# I spent [1] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# array, minimum size for the array, optional array padded argument

# What is the output? (i.e. What should the code return?)
# A padded array

# What are the steps needed to solve the problem?
# Determine if the minimum size is greater than the array length
#Add the optional array padded arguement to the array a number of times equal difference between the array length and min_size

#Return array

# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#   # Your code here
#     new_array= array
#   padding = min_size - array.length
#   if padding > 0
#     padding.times do |filler|
#       new_array << value
#     end
#   end
#   return new_array
# end

# def pad(array, min_size, value = nil) #non-destructive
#   new_array= Array.new
#   array.length.times do |x|
#     new_array << (array[x])
# end
#   padding = min_size - array.length
#   if padding > 0
#     padding.times do |filler|
#       new_array << value
#     end
#   end
#   return new_array
# end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
 # Your code here
 array.fill(value, array.length..(min_size-1))
end

def pad(array, min_size, value = nil) #non-destructive
 # Your code here
 new_array= Array.new
 length = array.length
 length.times {|x| new_array << (array[x])}
 new_array.fill(value, length..(min_size-1))
end


# 4. Reflection
# Were you successful in breaking the problem down into small steps?
#Yeah that worked wonderfully
# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
#We had some difficulties figuring out what non-destructive code required of us, but as soon as we got it it worked well.
# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
#Our first solution passed the destructive tests, but we had to fiddle with it a bit to get the nondestructive part right.
# When you refactored, did you find any existing methods in Ruby to clean up your code?
#Oh yes .fill was perfect!
# How readable is your solution? Did you and your pair choose descriptive variable names?
#I hope so.  We tried.
# What is the difference between destructive and non-destructive methods in your own words?
#Destructive methods transform the original data, and non-destructive methods create data that doesn't alter the original info.