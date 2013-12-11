var http = require('http');
var fs = require('fs');
var ntwitter = require('ntwitter');
var io = require('socket.io');


var server = http.createServer(function(request, response){
  fs.readFile(__dirname + '/index.html', function(error, data){
    if(error) {
      response.writeHead(404, {'Content-Type': 'text/html'});
      response.write("<html><body>No drank for you!</body></html>");
    } else {
      response.writeHead(200, {'Content-Type': 'text/html'});
      response.write(data);
    }
    response.end();
  });
});

server.listen(1234);


var client = new ntwitter({
  consumer_key: 'a4WsWZau21jc42pASmMvdg',
  consumer_secret: 'NspEhKliFZxSHM2s94TseYduNhLVQCcOHh1oWWAkQ',
  access_token_key: '56856416-ty9OleBuuQ2j2vWUbDUU8Kbjz3oRlA8ggC0iWBxqo',
  access_token_secret: 'Q4Dx9E0wfUIy5Cf3QQDJW8DCL59hhLdhkUb7vALuDJ0'
});

client.stream('statuses/filter', {'track': 'coffee,tea'}, function(stream){
  connection.on('data', function(tweet){
    if(tweet.text.match("coffee")) {
      coffee += 1;
    }
    if(tweet.text.match("tea")) {
      tea += 1;
    }
  });
  connection.on('error', function(error){
    console.log(error);
  });
});

