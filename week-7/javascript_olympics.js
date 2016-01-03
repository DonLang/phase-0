/// JavaScript Olympics

// I paired [ with:Devin Mandelbaum] on this challenge.

// This challenge took me [#] hours.


// Warm Up




// Bulk Up
//Pseudocode:
//input: an array of athletes with a name and an event
//output: a property that prints the name + won the event

function win (array) {
 for (var counter = 0; counter < array.length; counter += 1) {
   array[counter]["win"] = array[counter]["name"]+" won the " + array[counter]["event"];
   console.log(array[counter]["win"])
 }
;}


var sarah_hughes = { name: "Sarah Hughes", event: "Ladies' Singles"};
var michael_phelps = { name: "Michael Phelps", event: "Men's Singles"};
var athletes = [sarah_hughes, michael_phelps];
win(athletes);
sarah_hughes.win;

// Jumble your words
function reversed(string){
  return string.split('').reverse().join('');
}

//
var cat ="The cat in the hat";
console.log(reversed(cat));
// 2,4,6,8
function even(array){
 var new_arr = []
  for (var counter =0; counter < array.length; counter ++){
    if (array[counter]%2 == 0){
      new_arr.push(array[counter]);
    }
  }
  return new_arr;
}

//test code
var numbers= [1,2,3,4,5,6,7,99,22,44,68]
console.log(even(numbers))

// "We built this city"
function Athlete(name, age, sport, quote){
    this.name= name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;

    };



//test code
 var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
 console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
/*
What JavaScript knowledge did you solidify in this challenge?
I learned about constructor functions, the importance of correct syntax, and a little about built in functions in JavaScript.
What are constructor functions?
They are fuctions that make objects that contain certain characteristics, a bit similar to clasess in Ruby.
How are constructors different from Ruby classes (in your research)?
They use this.variable to designate property values, Ruby uses @ to designate instance variables.  Ruby classes objects also inherit a lot of methods just by by merrit of being part of a class, and objects created by JavaScript constructors are treated as ordinary objects that only have those additional methods directly assigned to them.  More of a Meta-object than a class of object. Plus quite a few nuances that this person (http://raganwald.com/2014/01/19/prototypes-are-not-classes.html) describes that I'm still trying to grasp.
*/