#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
  attr_accessor :name
  def inital
    @name = "Don"
  end

end


class Greetings
attr_accessor :name

def initalize
@cat = NameData.new
@name = @cat.name
end
def hello
  puts "Hello, #{@name}!"
end

end

hi = Greetings.new
hi.hello


# Reflection
#part 1
# What are these methods doing?
#They are modifying class variables.
# How are they modifying or returning the value of instance variables?
#They are accessing the variables and setting them equal to new values using methods within the class.
#part 2
# What changed between the last release and this release?
# They added the attr_reader with for age to more cleanly read the age variable
# What was replaced?
# what_is_age was replaced with the attr_reader to share the instance variable
# Is this code simpler than the last?
# Yes it is.
#part 3
# What changed between the last release and this release?
#They introduced the attr_writer to age.
# What was replaced?
#With the intro of attr_writer change_my_age was no longer neccessary.
# Is this code simpler than the last?
# Yes it is simpler
#part 4
#
