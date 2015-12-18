# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: credit card number of 16 digits
# Output: true or false reading when we check the validity of the numbers
# Steps:
# - set up an instance of credit card
# - initialize by verifying if it is a 16 digit number
# - raise an argument error if it is not

# - start with 2nd to last digit, double every other digit until we reach the first digit
#   - break apart the digits we doubled into single digits
#   - add all digits together and
#   - if divisible by 10, then it is a valid card number.



# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
#   def initialize(card_number)
#     @card_number = card_number.to_s
#     raise ArgumentError.new("Card Number must be 16 digits") unless @card_number.length == 16

# end

#   def check_card
#     @card_array = @card_number.split("")
#     16.times do |i|
#       if i % 2 == 0
#         @card_array[-i] = (@card_array[-i].to_i * 2).to_s
#       end
#     end
#     @card_array =@card_array.join("").split("")
#     @verify = 0
#     @card_array.each do |number| @verify = @verify +       number.to_i
#     end
#     return @verify % 10 == 0
#   end
# end
# Refactored Solution
class CreditCard
  def initialize(card_number)
    @card_number = card_number.to_s
    raise ArgumentError.new("Card Number must be 16 digits") unless @card_number.length == 16

end

  def check_card
    @card_array = @card_number.split("")
    16.times do |i|
      if i % 2 == 0
        @card_array[-i] = (@card_array[-i].to_i * 2).to_s
      end
    end
    @card_array =@card_array.join("").split("")
    @verify = 0
    @card_array.each {|number| @verify = @verify +number.to_i}

    return @verify % 10 == 0
  end

end





# Reflection

# What was the most difficult part of this challenge for you and your pair?
# Getting started on Pseudocode and small typing errors. For the most part we went quite quickly.
# What new methods did you find to help you when you refactored?
# What concepts or learnings were you able to solidify in this challenge?
#I solidified my understanding of the syntax of error messages.
