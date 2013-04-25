// Create an array that contains a few of your favorite things (fruits, vegetables, colors, sports teams, whatever). Write some code in JavaScript that outputs strings like (for an array of arbitrary length):

// My #1 favorite baseball team is the New York Mets.
// My #2 favorite baseball team is the San Francisco Giants.

var teams = ["Lakers", "Clippers", "Dodgers", "Chargers", "Golden State Warriors", "Lakers", "Clippers", "Dodgers", "Chargers", "Golden State Warriors", "Lakers", "Clippers", "Dodgers", "Chargers", "Golden State Warriors", "Lakers", "Clippers", "Dodgers", "Chargers", "Golden State Warriors", "Lakers", "Clippers", "Dodgers", "Chargers", "Golden State Warriors", "Lakers", "Clippers", "Dodgers", "Chargers", "Golden State Warriors"];

function favoriteTeams(teams) {
  function ordinalize(number) {
    var x = number.toString();
    if (x === "11") {
      return ("11th");
    } else if (x === "12") {
      return ("12th");
    } else if (x === "13") {
      return ("13th");
    } else if ((x[x.length - 1]) === "1") {
      return (x + "st");
    } else if ((x[x.length - 1]) === "2") {
      return (x + "nd");
    } else if ((x[x.length - 1]) === "3") {
      return (x + "rd");
    } else {
      return (x + "th");
    }
  }
  var i; //i is a counter
  for(i=0; i < teams.length; i += 1) {
  console.log("My " + ordinalize(i+1) + " favorite sports team is the " + teams[x] + ".");
  }
}

console.log(favoriteTeams(teams));