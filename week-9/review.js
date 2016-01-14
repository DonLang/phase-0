/*Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
# create a method that take parameters of an array
  # set default quantity of 1
  # print the list to the console [can you use one of your other methods here?]
# output: a grocery list

# Method to add an item to a list
# input: item name, list and optional quantity
# steps: add new item to the list with an optional quantity
# output: the new list

# Method to remove an item from the list
# input: list and item
# steps: removing the item from the list
# output: The modified list

Method to update the quantity of an item
input: list, item and quantity
steps: access the item and change the quantity
output: the list with the modified quantity

Method to print a list and make it look pretty
input: the list
steps: print the list and the quantities with in a neat and orderly fashion.
output: The beautified list.*/

var list = [];

def Grocery(item, quantity=1){
this.item = item;
this.quantity = quantity;
}

