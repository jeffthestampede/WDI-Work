var http = require('http');

var server = http.createServer(function(request, response){
  response.writeHead(200, {"Content-Type": "application/javascript"});
  //var url = "http://api.rottentomatoes.com/api/public/v1.0/lists/movies/box_office.json?apikey=8ty2r2nhkhkhuvzyn6m29ccb&limit=10";
  //var data = JSON.parse(url);
  response.write('callback([{"title": "Star Trek Into Darkness","value": 89},{"title": "Iron Man 3","value": 83},{"title": "The Great Gatsby","value": 84},{"title": "Pain & Gain","value": 59},{"title": "The Croods","value": 83},{"title": "42","value": 88},{"title": "Oblivion","value": 66},{"title": "Mud","value": 88},{"title": "Peeples","value": 65},{"title": "The Big Wedding","value": 69}])');
  //response.write('callback(data)');
  response.end();
});

server.listen(1234);

// var http = require('http');

// var server = http.createServer(function(request, response) {
//   response.writeHead(200, {"Content-Type":'application/json'});
//   response.write(JSON.stringify([{title: "Star Trek Into Darkness",value: 89},{title: "Iron Man 3",value: 83},{title: "The Great Gatsby",value: 84},{title: "Pain & Gain",value: 59},{title: "The Croods",value: 83},{title: "42",value: 88},{title: "Oblivion",value: 66},{title: "Mud",value: 88},{title: "Peeples",value: 65},{title: "The Big Wedding",value: 69}]));
//   response.end();
// });

// server.listen(1234);
