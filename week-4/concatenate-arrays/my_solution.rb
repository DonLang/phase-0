# Concatenate Two Arrays

# I worked on this challenge [by myself ].


# Your Solution Below
# Define a METHOD that takes two arrays as input
def array_concat(array_1, array_2)
  # Your code here
  #Iterate over the length of array
  array_2.each do |section|
    #add each section of the array to the other
    array_1.push(section)
  end
  # Output the combination of both the array
  return array_1
end
