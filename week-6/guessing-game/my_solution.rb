# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:A number that people should guess
# Output:A value high low correct and for the solved part a true or false
# Steps: Assign a grouping called GuessingGame
#Start by it having an characteristic of answer
#Build a method that takes a guess at at that answer
#Check to see if it is correct
#Check to see if it is high
#Check to see if it is low
#Return


# Initial Solution

class GuessingGame
  attr_writer :solve
  def initialize(answer)
    @answer = answer

  end
  def guess(attempt)
    @attempt = attempt
    if @attempt== @answer
      @attempt= :correct
    elsif @attempt < @answer
      @attempt= :low
    elsif @attempt > @answer
      @attempt= :high
    end
    return @attempt
  end
  def solved?
   return @attempt == :correct
 end
end
  # Make sure you define the other required methods, too





# Refactored Solution






# Reflection
