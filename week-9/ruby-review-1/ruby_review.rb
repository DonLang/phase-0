# I worked on this challenge [by myself].
# This challenge took me [.5] hours.


# Pseudocode
=begin
input: A list of numbers
build a METHOD that changes out those numbers divisible by 15 with fizzbuzz
build a METHOD that changes out those numbers divisible by 5 with buzz
build a METHOD that changes out those numbers divisible by 3 with fizz
output:A list of numbers with only numbers divisable by 15 "FizzBuzz" 5 "Buzz" 3 "Fizz" replaced
=end


# Initial Solution

# def super_fizzbuzz(array)
#   array.map do |x|
#     if x % 15 ==0
#       x = "FizzBuzz"
#     elsif x % 5 == 0
#       x = "Buzz"
#     elsif x % 3 == 0
#       x = "Fizz"
#     else
#       x = x
#     end
#   end

# end



# Refactored Solution

def super_fizzbuzz(array)
  array.map do |x|
    if x % 15 ==0
      x = "FizzBuzz"
    elsif x % 5 == 0
      x = "Buzz"
    elsif x % 3 == 0
      x = "Fizz"
    else
      x = x
    end
  end

end




# Reflection
# What concepts did you review in this challenge?
# Iteration, if statements and modulo.
# What is still confusing to you about Ruby?
# Pseudocode (particularly of easy problems) is still pretty confusing
# What are you going to study to get more prepared for Phase 1?
# Still sticking with JavaScript for what I'll be studying more of, and switching between languages.