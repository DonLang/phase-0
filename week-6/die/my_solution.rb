# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: A series of variables representing the sides of a die.
# Output:either the # of sides of the die or a random roll of the die.
# Steps: Define a type of object Die that takes labels as its initial input
# Count the number of labels to determine the sides of the die output if requested
#Output a side of the die when asked for a random output


# # Initial Solution

# class Die
#   def initialize(labels)
#     @labels = labels
#     @sides = @labels.length
#     raise ArgumentError.new, "ArgumentError" if @sides < 1
#   end

#   def sides
#     return @sides
#   end

#   def roll
#     return @labels[rand(0..(@sides-1))]
#   end
# end


# Refactored Solution

#Much like the previous die this one doesn't leave much room for refactoring
class Die
  def initialize(labels)
    @labels = labels
    @sides = @labels.length
    raise ArgumentError.new, ("More sides please.") if @sides < 1
  end

  def sides
    return @sides
  end

  def roll
    return @labels[rand(0..(@sides-1))]
  end
end





# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
#There weren't a lot of differences between the two die classes.  The only real difference was that this one took an array and the other just took a number.  The changes were pretty mild.. adding a label class variable, and making the random number go from zero to array length minus one.
# What does this exercise teach you about making code that is easily changeable or modifiable?
#That simple code well written is easy to modify for other purposes.
# What new methods did you learn when working on this challenge, if any?
#None really.
# What concepts about classes were you able to solidify in this challenge?
#I solidified my awareness of class variables.