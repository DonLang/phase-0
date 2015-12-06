# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  # Your code goes here!
  #Make a variable for shortest string
  short=nil
  #iterate through the array
  list_of_words.each do |word|
    short ||= word
    #Compare word length to short string length
    if short.length > word.length
      #change short to word if it is shorter
      short = word
    end
  end
  #Output short
  return short
end
