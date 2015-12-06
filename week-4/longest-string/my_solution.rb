# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  #Your Solution Below

  # Your code goes here!
  #Make a variable for longest string
  long=nil
  #iterate through the array
  list_of_words.each do |word|
    long ||= word
    #Compare word length to long string length
    if long.length < word.length
      #change long to word if it is longer
      long = word
    end
  end
  #output the longest word
  return long
end
