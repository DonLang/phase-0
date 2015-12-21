# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Create a list with the letters in bingo
  #randomly pick one of the letters
  #randomly pick a number between 1 and 100

# Check the called column for the number called.


# If the number is in the column, replace with an 'x'
# Check to see if the number is in the column
# If it is destroy the number and replace it with an 'X'


# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end
#   def call
#     @bingo = ["B","I","N","G","O"]
#     @bingo_call = rand(0..4)
#     @number_call = rand(1..100)
#     puts "The number is #{@bingo[@bingo_call]} #{@number_call.to_s}"
#   end
#   def check
#     @bingo_board[@bingo_call].map! do |i|
#       if i == @number_call then

#         i ="X "
#       else
#         i = i
#       end
#     end
#      @bingo_board.each do |column|
#       puts column.join("  ")
#     end

#   end
# end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end
  def call
    @bingo = ["B","I","N","G","O"]
    @bingo_call = rand(0..4)
    @number_call = rand(1..100)
    puts "The number is #{@bingo[@bingo_call]} #{@number_call.to_s}"

  end
  def check
    @bingo_board[@bingo_call].map! {|i|  i == @number_call ? i="X " : i=i}
     @bingo_board.each {|column|puts column.join("  ")}
  end
end





#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
[22, 69, 75, 65, 73],
[83, 85, 97, 89, 57],
[25, 31, 96, 68, 51],
[75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
40.times do
new_game.call

 new_game.check
end
# Reflection
# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# Not too difficult, but I'm still working of keeping my Pseudocode agnostic.
# What are the benefits of using a class for this challenge?
# You can alter this particular instance of the class without changing all instances of the class which is quite useful.
# How can you access coordinates in a nested array?
# The same way you access coordinates in a regular array, just add an additional layer of depth to touch the nested array
# What methods did you use to access and modify the array?
# Just the old standbys of .map(used destructively !), and .each.
# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
# I learned the .delete_if and it's pair .keep_if methods.  They destructively sort an array depending on a condition, the first eliminating all values that prove true the other maintaining only values that prove true.  They are called by using array.delete_if{ |x| condition} and array.keep_if {|x| condition}.
# How did you determine what should be an instance variable versus a local variable?
# Since we were keeping all of our calculations contained within the class most of the variables seemed like they should be instance ones.
# What do you feel is most improved in your refactored solution?
# It is a little neater, but otherwise doesn't show a ton of improvement.

