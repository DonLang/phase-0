#Your Names
# 1)Donald Lang
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

# define method - parameters: items to make & # of ingred

def serving_size_calc(item_to_make, num_of_ingredients)

  # defines a hash that has items & amt of ingred nec to make items

  library = {"cookie" => 1, "brownie" => 2,  "pie" => 7, "cake" =>  5}
  #  error_counter = 2

  # iterates through library & compares to item to make
  # subtracts from error counter when lib item does not equal item to make

  #library.each do |food, servings|
    # what happens when you don't specify separate key, value variables in the pipes??
    # library[food] == ??
    # p food
  # if library[food] != library[item_to_make]
   #  error_counter -= 1
   # end
  #end


  # if error counter > 0, creates arg error to say not a valid input
  unless library.include?(item_to_make) # Run the code! :-)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  # calculate # of servings we're making
  # creating a var serving size of the values of the library
  # using the key that matches item_to_make

  serving_size = library[item_to_make]

  # calc whether there are remaining ingred using modulo

  remaining_ingredients = num_of_ingredients % serving_size



  # if there are no ingredients remaining, print how many to make
  # if there are ingred remaining, print how many to make, and how many
  # leftover ingred we have
  leftovers= Array.new


    library.each do |key, value|
      if remaining_ingredients / value > 0
        leftovers << key
      end



  end
  leftovers = leftovers.join(", ")


  if remaining_ingredients == 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: #{leftovers}"
  end
    #identify remaining ingredients
    # determine the highest value of pastry that we can make
    #make new hash

end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
