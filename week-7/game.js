// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission:Get a cat companion to ward off a grue attack
// Goals: Keep the cat; Not get eaten
// Characters:Player
// Objects:Player(alive), cat(nervous, content, happy)
// Functions:initial_encounter, pets, belly_trap, run

// Pseudocode
//Setup a 'player' object with cat_companion, health, edibility
//Setup a 'cat' object with nevous, petable,
//
//
//
/*

// Initial Code

var player = {
  health: 100,
  cat_companion: false,
  edibility: true,
  };


  var cat={
    nervous: true,
    petable: false,
    human_companion:false,

    };
    game()
    function game() {
     if (player["health"] === 100){
      alert ("You've entered a dungeon filled with dangerous Grues that live in the darkness.")
     };


      alert("You see a cat!");

      response = prompt('Do you pet it(pet), introduce yourself (hi), or run away(run)');

      if (response === 'pet' && cat["nervous"]){
        alert('The cat scratches you. You will likely die.');
        player.health -= 50;

      }
    else if (response === 'hi' && cat["nervous"]){
      cat["nervous"] = false;
      cat["petable"] = true;
      alert('The cat moves closer.');
      petting();
      return;
    }
  else if (response === 'run'){
    alert ("You run off in the darkness and are likely to be eaten by a grue.");
    alert ("A grue bites you.");
    player.health -= 25;

  }
  if (player.health <=0){
    alert("You have bled out, and were probably quite tasty.");
    return};

    game();


}
function petting() {
  //       alert('You have entered the dungeon');
  alert("The cat seems friendly");
  response = prompt('Do you pet it(pet), or run away(run)');
  if (response === 'pet'){
    alert('The cat rolls over and exposes a soft belly');
    belly_trap();
    return;
  }
else if (response === 'run'){
  alert ("You run off in the darkness and are likely eaten by a grue.");
  alert ("A grue bites you.");
    player.health -= 25;

}
else{
  alert("Grues love people who don't follow directions. You will likely be eaten soon.");
}
if (player.health <=0){
    alert("You have bled out, and were probably quite tasty.");
    return};
petting();

}
function belly_trap(){
  response = prompt('Do you pet the belly(pet), avoid the belly(avoid) or run away(run)');
  if (response === 'pet'){
    alert('It was a trap! You are mauled savagely');
    player.health -= 50;
  }
else if (response === 'avoid'){
  alert ("You are wise in the ways of cats, and avoid the trap. You have gained a cat companion.  Grues are allergic to cats. You win.");

    cat.human_companion = true;
    player.cat_companion = true;
    return;
  }
else if (response === 'run'){
  alert ("You run off in the darkness and are likely eaten by a grue.");
  alert ("A grue bites you.");
    player.health -= 25;

}
else{
  alert("Grues love people who don't follow directions. You will likely be eaten soon.");
}
if (player.health <=0){
    alert("You have bled out, and were probably quite tasty.");
    return};
belly_trap();
}

*/





// Refactored Code




var player = {
  health: 100,
  edibility: true,

  death: function() {
    if (player.health <= 0){
    alert("You have bled out, and were probably quite tasty.");
    return true;}
    else {return false};
  },
};


var cat={
  nervous: true,
  petable: false,


};

var directions = "Grues love people who don't follow directions. You will likely be eaten soon.";
game()
function game() {
 if (player["health"] === 100){
  alert ("You've entered a dungeon filled with dangerous Grues that live in the darkness.")
};

alert("You see a cat!");

response = prompt('Do you pet it(pet), introduce yourself (hi), or run away(run)');

if (response === 'pet' && cat["nervous"]){
  alert('The cat scratches you. You will likely die.');
  player.health -= 50;

}
else if (response === 'hi' && cat["nervous"]){
  cat["nervous"] = false;
  cat["petable"] = true;
  alert('The cat moves closer.');
  petting();
  return;
}
else if (response === 'run'){
  run();
}
else{alert(directions);}

if (player.death()){
  return};

  game();
}
function petting() {
  //       alert('You have entered the dungeon');
  alert("The cat seems friendly");
  response = prompt('Do you pet it(pet), or run away(run)');
  if (response === 'pet'){
    alert('The cat rolls over and exposes a soft belly');
    belly_trap();
    return;
  }
  else if (response === 'run'){
    run();
  }
  else{
    alert(directions);
  }
  if (player.death()){
  return};
    petting();

  }
  function belly_trap(){
    response = prompt('Do you pet the belly(pet), avoid the belly(avoid) or run away(run)');
    if (response === 'pet'){
      alert('It was a trap! You are mauled savagely');
      player.health -= 50;
    }
    else if (response === 'avoid'){
      alert ("You are wise in the ways of cats, and avoid the trap. You have gained a cat companion.  Grues are allergic to cats. You win.");

      cat["human_companion"] = true;
      player["cat_companion"] = true;
      return;
    }
    else if (response === 'run'){
      run();
    }
    else{
      alert(directions);
    }
    if (player.death()){
  return};

      belly_trap();
    }



    function run(){ if (edibility=== true){
      alert ("You run off in the darkness and are likely eaten by a grue.");
      alert ("A grue bites you.");
      player.health -= 25;}
    }





// Reflection
//What was the most difficult part of this challenge?
// Figuring out what game to make, I am not that creative about games as of yet.
// What did you learn about creating objects and functions that interact with one another?
// Punctuation is quite important, but otherwise I didn't learn too much.
//Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
//I unfortunately didn't learn many built-in methods that I could use.
//How can you access and manipulate properties of objects?
//Similar to nested objects in ruby you can access them by using their location on the object.
//
//
//
//
//