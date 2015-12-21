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

#I've been having quite a bit of difficulty refactoring my classes well. I don't see too many opportunities to clean this one up.




# Reflection
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
#Instance variables represent those characteristics that exist within a example of a group (examples: the fur color of a cat, a person's eye color, or being a biped).  Instance methods represent things that the group does, or might do (examples: a cat might hiss under certain circumstances, a person might smile, a biped might use its forelimbs to manipulate things).
# When should you use instance variables? What do they do for you?
# When you want to describe and/or use characteristics of an object.  They allow you to use the differences in instances of an object to define how it will respond using instance methods.  They are great for a series of objects that generally behave in a similar manner, save in certain circumstances.
# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# Flow control is used to select different outcomes depending on the data that is entered.  You use it by using the information given in an instance to determine it's path in life.  It wasn't too hard to figure out how flow control worked in this particular instance.
# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
#Probably because symbols are unable to be changed after assignment and therefore are treated a little different than other object types.  Symbols are easy to look up, and they always equal the same thing which is pretty useful when writing programs.  Sometimes you just need a constant.  Which was probably used when spec checking this file.
