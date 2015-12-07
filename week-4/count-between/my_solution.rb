# Count Between

# I worked on this challenge [by myself ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  # Your code goes here!
  #Define a variable to count the number of variables in the array between the bounds
  count=0
  #Iterate through the array
  list_of_integers.each do |check|
    #Add to the count if check is between the bounds
    if lower_bound<=check && check <=upper_bound
      count += 1
    end
  end
  #Output the count
  return count
end
