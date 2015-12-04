# Smallest Integer

# I worked on this challenge [by myself, with: ].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
#define a method smallest_integer such that it takes an array of numbers
def smallest_integer(list_of_nums)
  # Your code goes here!
  #set the default value of the smallest number to nothing
  smallest= nil
  #go through each of the numbers
  list_of_nums.each do |num|
    #if the there is only one number then make smallest that number
    smallest ||= num
    #test that number against others to see if they are smaller
    if num < smallest
      #if they are make them the new smallest champion
      smallest = num
    end
  end
  #Output the victor
  return smallest
end
