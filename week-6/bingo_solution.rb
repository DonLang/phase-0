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


# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

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
    @bingo_board[@bingo_call].map! do |i|
      if i == @number_call
        i ="X "
      else
        i = i
      end
    end
     @bingo_board.each do |column|
      puts column.join("  ")
    end

  end
end

# Refactored Solution



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
#Reflection
