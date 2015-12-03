# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# error.rb is the name of the file.
# 2. What is the line number where the error occurs?
# 170 the end of the program.
# 3. What is the type of error message?
# It is a syntax error.
# 4. What additional information does the interpreter provide about this type of error?
# It got an end of input instead of a end keyword.
# 5. Where is the error in the code?
# Line 15ish.  There is no end marker for the while loop.
# 6. Why did the interpreter give you this error?
# The program was searching for a closing marker and got to the bottom and still didn't find it.

# --- error -------------------------------------------------------

south_park = 3

# 1. What is the line number where the error occurs?
# I occurs on line 36.
# 2. What is the type of error message?
# undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
# south_park is a top level (main) object that has no definition
# 4. Where is the error in the code?
# Line 36. The south_park has nothing that indicates what it is which confusing to the poor program.
# 5. Why did the interpreter give you this error?
# It likes to know what south_park means.

# --- error -------------------------------------------------------

def cartman(*) end

# 1. What is the line number where the error occurs?
# 51
# 2. What is the type of error message?
#undefined method
# 3. What additional information does the interpreter provide about this type of error?
# cartman is the method's name and it is a main object
# 4. Where is the error in the code?
# Line 51. We need to define cartman and figure out what parameters it takes.
# 5. Why did the interpreter give you this error?
# Programs hate undefined methods.  They are confusing to thier logical brains.

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase

# 1. What is the line number where the error occurs?
# It occurs in line 71.
# 2. What is the type of error message?
# wrong numbers of arguments
# 3. What additional information does the interpreter provide about this type of error?
# We've given one argument for a method that takes 0 arguments.
# 4. Where is the error in the code?
# The error is either in calling cartmans_phrase with ('I hate Kyle') or with the cartman_phrase not taking parameters.  Either fix works, but since cartman_phrase doesn't do anything to the parameter I changed that.
# 5. Why did the interpreter give you this error?
# We attempted to pass ('I hate Kyle') to a method that didn't know what to do with the parameter.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says ('something rude')

# 1. What is the line number where the error occurs?
# It occurs on line number 89.
# 2. What is the type of error message?
# wrong number of arguements.
# 3. What additional information does the interpreter provide about this type of error?
# We've given 0 arguments for a method that takes 1 argument
# 4. Where is the error in the code?
#Line 89. cartman_says doesn't have a parameter, and the method uses the parameter.
# 5. Why did the interpreter give you this error?
# We tried to call the method without a parameter.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Kyle')

# 1. What is the line number where the error occurs?
# 106
# 2. What is the type of error message?
# Wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# There is one arguments when there should be two.
# 4. Where is the error in the code?
# Line 110 that is missing the name parameter.
# 5. Why did the interpreter give you this error?
# We attempted to pass only one parameter to a method that requires two.

# --- error -------------------------------------------------------

 "Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# It happens on line 125.
# 2. What is the type of error message?
# String can't be coerced into Fixnum
# 3. What additional information does the interpreter provide about this type of error?
# It is a type error so we are attempting to do something to a object that doesn't work for that type of object.
# 4. Where is the error in the code?
# Line 125, the string should be multiplied by 5 not 5 multiplied string number of times. So we have two options change the string to and integer (.to_i) or move the 5.  I decided to move the 5.
# 5. Why did the interpreter give you this error?
# It had no idea what we ment by "Respect my authoritay!" number of times.

# --- error -------------------------------------------------------

amount_of_kfc_left = 0/20


# 1. What is the line number where the error occurs?
# It happens at line 140.
# 2. What is the type of error message?
# divided by 0
# 3. What additional information does the interpreter provide about this type of error?
# Nope that is pretty much the story.
# 4. Where is the error in the code?
# 140 we tried to divide by zero, and are punished. I'm guessing they have 0 chicken left and there was formerly 20 pieces. So I switched the it so it is 0/20.
# 5. Why did the interpreter give you this error?
# We tried to divide by zero.  That doesn't really work if you are a program or a human.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# It occurs on line 156.
# 2. What is the type of error message?
# Cannot load such file.
# 3. What additional information does the interpreter provide about this type of error?
# It shows the location that the file should be at.
# 4. Where is the error in the code?
# 156 the file that is being searched for isn't there.  There is no such file relative to the command. Rather than build the file I just commented this one out.
# 5. Why did the interpreter give you this error?
# It couldn't find the file that was required.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
#Which error was the most difficult to read?
#Probably the require relative one, but they were all fairly easy to read.
#How did you figure out what the issue with the error was?
#The error was fairly obvious each time, but what I could do with my current toolset to fix them took a little bit of time to figure out.
#Were you able to determine why each error message happened based on the code?
#Yes that was why I chose to fix the errors rather than just comment them out most of the time.
#When you encounter errors in your future code, what process will you follow to help you debug?
#Check the line that was mentioned in error first, if that fails I'd probably reindent to catch open methods.
