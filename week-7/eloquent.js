
// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!


// Program Structure
// Write your own variable and do something to it.
var five = "5";
console.log(five + 5);

//Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.
prompt ("What is your favorite food?","");
console.log("Hey! That is my favorite too!");


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
not_triangle = "#######"
for (var number = 1; number <= 7; number = number + 1)
  console.log(not_triangle.substring(0,number));


// Functions

// Complete the `minimum` exercise.

function min(x,y){
  if (x > y)
  return y;
  else if (x<y)
  return y;}
console.log(min(0, 10));

console.log(min(0, -10));



// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = { name: "Donald",
  age: 38,
  "food": ["citrus","pumpkin curry", "duck"],
  quirk: "I'm more likely to cuddle, or grab a blanket than turn up the heat."};
  console.log(me["quirk"]);
  console.log(me.food);
