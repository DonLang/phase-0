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