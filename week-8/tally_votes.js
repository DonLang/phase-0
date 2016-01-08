// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// input: votes
// output: officers with the most votes
// 1. iterate through names in votes
// 2. check to see if name is undefined
// 3. if name is undefined set votes == 0
// 4. increase votes by one for each instance of that name
// 5. initiate variables maxVote and maxName to store the max values of votes and the name of the person
//6. iterate throught the names
//7. check if their vote count is greater than maxVote count
//8. if it is bigger then set maxVote to that value and maxName to their name
//9. Set officer to the final value of maxName
// __________________________________________
// Initial Solution
// // for every name in votes variable
// for (var names in votes){
// //take the president position and if the person voted for is undefined we make equal to 0
//   if (voteCount.president[votes[names].president]== undefined
//   ){voteCount.president[votes[names].president]=0};
// // for each instance of someone voting for the person we increse the value of that name by one
//   voteCount.president[votes[names].president] += 1;

//   if (voteCount.vicePresident[votes[names].vicePresident]== undefined
//   ){voteCount.vicePresident[votes[names].vicePresident]=0};
//   voteCount.vicePresident[votes[names].vicePresident] +=1;

// if (voteCount.secretary[votes[names].secretary]== undefined
//   ){voteCount.secretary[votes[names].secretary]=0};
//   voteCount.secretary[votes[names].secretary] +=1;

// if (voteCount.treasurer[votes[names].treasurer]== undefined
//   ){voteCount.treasurer[votes[names].treasurer]=0};
//   voteCount.treasurer[votes[names].treasurer] +=1;

// }


// var maxVoteCount = 0;
// var maxName = "";
// for (var x in voteCount.president){
//   if ( voteCount.president[x] > maxVoteCount){
//     maxVoteCount = voteCount.president[x];
//     maxName = x;
//   }
// }
// officers.president = maxName;

// var maxVoteCount = 0;
// var maxName = "";
// for (var x in voteCount.vicePresident){
//   if ( voteCount.vicePresident[x] > maxVoteCount){
//     maxVoteCount = voteCount.vicePresident[x];
//     maxName = x;
//   }
// }
// officers.vicePresident = maxName;

// var maxVoteCount = 0;
// var maxName = "";
// for (var x in voteCount.secretary){
//   if ( voteCount.secretary[x] > maxVoteCount){
//     maxVoteCount = voteCount.secretary[x];
//     maxName = x;
//   }
// }
// officers.secretary = maxName;

// var maxVoteCount = 0;
// var maxName = "";
// for (var x in voteCount.treasurer){
//   if ( voteCount.treasurer[x] > maxVoteCount){
//     maxVoteCount = voteCount.treasurer[x];
//     maxName = x;
//   }
// }
// officers.treasurer = maxName;

//console.log(maxVoteCount);
//console.log(maxName);


// __________________________________________
// Refactored Solution


// for every name in votes variable
for (var names in votes){
//take the president position and if the person voted for is undefined we make equal to 0
  for (x in voteCount){
  if (voteCount[x][votes[names][x]]== undefined
  ){voteCount[x][votes[names][x]]=0};
// for each instance of someone voting for the person we increse the value of that name by one
  voteCount[x][votes[names][x]] += 1;}
}

  for (var office in voteCount){
    var maxVoteCount = 0;
    var maxName = "";
    for (var x in voteCount[office]){
    if ( voteCount[office][x] > maxVoteCount){
    maxVoteCount = voteCount[office][x];
    maxName = x;
  }
}
officers[office] = maxName;
}

// __________________________________________
// Reflection






// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)