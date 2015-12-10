# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:A variable called sides
# Output:number of sides or a random number between 1 and sides
# Steps: make a class Die with the characteristic of sides
#make the sides greater than 1 have an error if it isn't
#Make a method that returns sides if called
#Make a method that generates a random number between 1 and sides when called.



# 1. Initial Solution

class Die
  def initialize(sides)
      @sides =sides
       raise ArgumentError.new, "ArgumentError" if @sides < 1
  end

  def sides
    return @sides
  end

  def roll
    return rand(1..@sides)
  end

end


# 3. Refactored Solution


#I'm pretty happy with the original solution, and don't see a need to refactor really.




# 4. Reflection
# What is an ArgumentError and why would you use one?
#An ArgumntError is a error message that is raised when there isn't a more specific Error message to raise, and you could use one to indicate input is wrong or undesireable.
# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
#I got to play with rand which seems like it could be useful.
# What is a Ruby class?

# Why would you use a Ruby class?
# What is the difference between a local variable and an instance variable?
# Where can an instance variable be used?