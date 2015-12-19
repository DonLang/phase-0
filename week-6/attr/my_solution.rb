#Attr Methods

# I worked on this challenge [by myself]

# I spent [2] hours on this challenge (almost exclusively due to a spelling error).

# Pseudocode

# Input:I'm designing two new classes so I guess the input would be the initial variable name.
# Output:A greeting with my name
# Steps: Build a Namedata object type
#Build a Greeting object type
#Design a Method in Greeting called hello
#have it put out the name in NameData
#Profit

class NameData
  attr_reader :name
  def initialize
    @name = "Don"
  end

end


class Greetings


def initialize
@greet = NameData.new

end
def hello
  p "Hello, #{@greet.name}!"
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
#What is a reader method?
#A method that allows you to read(as output) a class variable
# What is a writer method?
#A method that allows you to write(change) a class variable
# What do the attr methods do for you?
#They allow you to modify a particular instance of a Class by changing designated variables.
# Should you always use an accessor to cover your bases? Why or why not?
#Nope.  Sometimes you will want to give others access to class variables via the read, but not let them change the variable.
# What is confusing to you about these methods?
# I don't really know, most of the problems that i've had have involved leaving an i out of initialize.
