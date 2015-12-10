# Calculate the mode Pairing Challenge

# I worked on this challenge [by  with:Karen Ball ]

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# an array
# What is the output? (i.e. What should the code return?)
# an array of the most frequent items
# What are the steps needed to solve the problem?

# define function (mode) that takes parameter of an array
# define a new hash
# iterate through the array and
# count the number of times each item occurs
# add the item to the hash with value
# determine which is most frequent
# put all instances of the most frequent into an array
# return array
#
#

# 1. Initial Solution

# def mode(array)
#   array_items = Hash.new(0)
#   array.each do |item|
#     array_items[item] += 1
#   end
#   kitten = array_items.max_by{|k,v| v}
#   max = kitten[1]

#   array_items = array_items.sort_by{|k,v| v}
#   array_items.reverse!

#   return_array = []
#   array_items.each do |i, q|

#     if q == max
#       return_array << i

#     end

#   end

#   return return_array.sort
# end



# 3. Refactored Solution

def mode(array)
  array_items = Hash.new(0)

  array.each {|item| array_items[item] += 1}

  max_value = array_items.max_by{|k,v| v}[1]
  return_array = []

  array_items.each do |item, quantity|
    if quantity == max_value
      return_array << item
    end

  end

  return return_array
end

# 4. Reflection

# Which data structure did you and your pair decide to implement and why?
#We utilized a hash.  It seemed like the most convenient way to organize the data in a easily sortable fashion.
# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
#This was a bit harder to recognize the steps necessary than the last.
# What issues/successes did you run into when translating your pseudocode to code?
# Our order of operations was a bit wonky on the pseudocode, but we figured it out fine.
# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
#We mostly used .each to iterate. We also used max_by which was useful in converting the hash back to an array.