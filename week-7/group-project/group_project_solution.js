/*As a user i’d like to do three things to a list of numbers.
Using “sum” and the list I want to add together all the numbers whether the list is even or odd in length.
I’d like to use “mean” to return the average of all the numbers in the list.
Finally I’d like to use “median” to return the median number of the list.*/

//Due to the rubric I collected a sample of everyones work for this file after running the code.
// ##PSEUDOCODE: RECIEVED FROM PERSON 2 AND FROM WHAT I'M BASING MY CODE ON
// input: An array of numbers
// output: 1) the sum of all the numbers inside the array, 2) the "mean" average of the numbers inside the array, 3) the median number from the array
// # Create an array of single-digit numbers
// # Iterate through the array of numbers to calculate and return its sum (non-destructively)
// # Define a method that accepts the array as an argument and returns the "mean" average
//   # Divide the sum of the array by the    amount of numbers inside the array
//   # Return the "mean average" number
// # Define a method that accepts the array as an argument and returns the "median" number
//   # Sort the array in ascending order
//     # IF array length odd?,
//       # Subtract the array(by length) by 1, and divide by 2
//       # return median value
//     # ELSE if array length even?,
//       # Take array(by length) and divide by 2,
//       # add this value to the value of
//       # The array(by length), subtracted by 1, divided by 2
//       # Take the sum of these index values and divide by 2
//       # return median value
//
//
//
// CODE:
/*
var numArray = [7,7,7,7,1,2];

function sum(array) {
  var indexes = array.length;
  var sum = 0
  for (var number = 0; number < indexes; number ++)
    sum += array[number];
  return sum
}

function mean(array) {
  var mean = (sum(array))/(array.length)
  return mean
}

function median(array) {
  array.sort( function(a,b) {return a - b;} );
  var half = Math.floor(array.length/2);
  if ((array.length % 2) != 0)
    return (array[half-1] + array[half]) / 2.0;
  else
    return array[half]
}
*/

// Person: 4
// I honestly think that the code is DRY enough as it is. I don't see how I could refactor it, and I think that the code would become less readable to me if it were any more compact.
// As a user, I want to put some numbers in and have the program display their sum, mean, and median.

// Person 1 again Release 6
//Finally the results of the game of telephone
//We passed the tests of getting the sum and the mean with flying colors, but didn't quite manage the median test.
