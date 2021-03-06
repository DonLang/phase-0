// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM

bodyElement = $('body');
header = $(':header');
mascot = $('.mascot');

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
$('h1:first').css({
  'color': 'blue',
  'border': '0px solid black',
  'visibility': 'visible',

});

$('img').css({
  border: '1px solid blue',
});

$('.mascot h1').html('Squirrels 2016');
//RELEASE 4: Event Listener
  // Add the code for the event listener here
$('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://globe-views.com/dcim/dreams/squirrel/squirrel-04.jpg')
  });
$('img').on('mouseleave', function(e){
    e.preventDefault()
    $(this).attr('src', 'imgs/dbc_logo.png')
  });
//RELEASE 5: Experiment on your own

$('img').animate({
  width: '50%',
  marginLeft: '30%',
  borderWidth: '20px',
}, 3000 );





})  // end of the document.ready function: do not remove or write DOM manipulation below this.
// Reflection
// What is jQuery?
// An easier way of applying JavaScript to your website.
// What does jQuery do for you?
// Makes it easy to select html objects and modify them.  It also allows you to manipulate the DOM as it interacts with your site.
// What did you learn about the DOM while working on this challenge?
// It showed me a tiny bit of the magic that you can use jQuery for when altering your site.  It was nice to learn that you have that much control over your site and how a browser interacts with it.