# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
# create a method that take parameters of an array
  # set default quantity of 0 using hash
  # print the list to the console [can you use one of your other methods here?]
# output: a hash of the grocery list

# Method to add an item to a list
# input: item name, list and optional quantity
# steps: add new item to the list with an optional quantity
# output: the new list

# Method to remove an item from the list
# input: list and item
# steps: removing the item from the list
# output: The modified list

# Method to update the quantity of an item
# input: list, item and quantity
# steps: access the item and change the quantity
# output: the list with the modified quantity

# Method to print a list and make it look pretty
# input: the list
# steps: print the list and the quantities with in a neat and orderly fashion.
#output: The beautified list.

def new_list(tasty_food)
  grocery_list = Hash.new(0)
  groceries=tasty_food.split(" ")
  groceries.each do |food|
  grocery_list[food]= 1
  end
  return grocery_list
end

def new_item(add_item, quantity, grocery_list)
  grocery_list[add_item]=quantity
  return grocery_list
end

def remove_list(item, grocery_list)
  grocery_list.delete(item)
  return grocery_list
end

def add_quantity(item, quantity, grocery_list)
  grocery_list[item] = quantity
  return grocery_list
end

def prettify(grocery_list)
  grocery_list.each do |key, value|
    p key + " " + value.to_s
  end
  return grocery_list
end

my_list = new_list("carrots tamales kombucha banana ")

new_item("lemonade", 2, my_list)
new_item("tomatoes", 3, my_list)
new_item("onions", 1, my_list)
new_item("ice cream",4, my_list)
remove_list("lemonade", my_list)
add_quantity("ice cream", 1, my_list)
prettify (my_list)

#What did you learn about pseudocode working on this challenge?
#That I still have quite a bit to learn about effective pseudocode, and would like to learn more.
#What are the tradeoffs of using Arrays and Hashes for this challenge?
#If we had used an array we would've need to iterate through it to modify the items, and quantity.  The hashes allowed us to just use the groceries that we were adding and the quantity that we wanted which seemed more useful in this case.
#What kind of things can you pass into methods as arguements?
#I think you can pass any object
#How can you pass information between methods.
#By returning values that a method has worked on, or by calling a method within another method.
#What concepts were solidified in this challenge, and what concepts are still confusing?
#How methods return was clarified a bit, as were several elements on how to work with hashes.  It also helped clairfy why one would use hashes a bit.  Finally it cleared up that I get flustered randomly during paired challenges when I have less knowledge than I think I should.


