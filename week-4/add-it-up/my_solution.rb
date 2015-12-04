# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array of numbers
# Output: Sum of all numbers in the array
# Steps to solve the problem.
#1. DEFINE method called total that takes a group of numbers
#2. DEFINE variable called sum
#3. SEQUENCE itterate through numbers in array adding them to sum
#4. OUTPUT sum of all numbers


# 1. total initial solution
#def total (nums)
#  sum = 0
#  nums.each do |number|
#    sum += number
#  end
#  return sum
#end


# 3. total refactored solution
def total (nums)
  nums.inject{|number,x| number + x }
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: An array of strings
# Output:A sentence
# Steps to solve the problem.
#1. DEFINE method called sentence_maker that takes a group of strings
#2. DEFINE variable called sentence
#3. SEQUENCE itterate through strings in array adding them to sentence
#4. OUTPUT finished sentence





# 5. sentence_maker initial solution
#def sentence_maker (words)
#  sentence = ""
#  words.each do |word|
#    sentence += word.to_s + " "
#  end
#  return sentence.chop.capitalize + "."
#end

# 6. sentence_maker refactored solution
def sentence_maker (words)

  sentence = words.join(" ")
  return sentence.capitalize + "."
end