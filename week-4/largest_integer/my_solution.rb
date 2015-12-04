# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
#define a method largest_integer such that it takes an array of numbers
def largest_integer(list_of_nums)


  # Your code goes here!
  #set the default value of the largest number to nothing
  largest= nil
  #go through each of the numbers
  list_of_nums.each do |num|
    #if the there is only one number then make largest that number
    largest ||= num
    #test that number against others to see if they are larger
    if num > largest
      #if they are make them the new largest champion
      largest = num
    end
  end
  #Output the victor
  return largest
end
