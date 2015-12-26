/*input an integer
output string consisting of the integer with commas inserted
convert the integer into a string
determine if the string is smaller than 3 numbers then output the integer as a string
if larger than three reverse insert a comma every three digits
reverse again then output
*/
//   function separate_comma(number){
//   number = number.toString();



//   var result = "";
//   if (number.length <= 3)
//     return number;
//   else if (number.length % 3 > 0){
//     var front = number.length% 3;}
//   else{
//     front = 3
//   }
//     result = result + number.slice(0,front)
//   for (var counter = 0+front; counter < number.length; counter += 3) {
//     result = result + ","+ number.slice(counter, counter+3 )
//   };
//   return result;




// }

/* Refactor */



 function separate_comma(number){

  number = number.toString();
  var size = number.length
  var result = "";

  if (size <= 3)
    return number;
  else if (size % 3 > 0){
    var front = size % 3;}
  else{
    front = 3;
  }

    result = result + number.slice(0,front)

  for (var counter = 0+front; counter < size; counter += 3) {
    result = result + ","+ number.slice(counter, counter+3 )
  };
  return result;

}


  // console.log (separate_comma(3300))
  // console.log (separate_comma(312345678900))

  function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}


assert(
  typeof separate_comma(330) === 'string',
 "The output of separate_comma should be a string.",
 "1. "
)

assert(
  separate_comma(330) === "330",
 "A value of 330 should return a string of 330.",
 "2. "
)
assert(
  separate_comma(3300300) === "3,300,300",
 "A value of 3330 should return a string of 3,330.",
 "3. "
)

