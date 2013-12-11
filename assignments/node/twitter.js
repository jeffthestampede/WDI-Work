var ntwitter = require('ntwitter');

var client = new ntwitter({
  consumer_key: 'a4WsWZau21jc42pASmMvdg',
  consumer_secret: 'NspEhKliFZxSHM2s94TseYduNhLVQCcOHh1oWWAkQ',
  access_token_key: '56856416-ty9OleBuuQ2j2vWUbDUU8Kbjz3oRlA8ggC0iWBxqo',
  access_token_secret: 'Q4Dx9E0wfUIy5Cf3QQDJW8DCL59hhLdhkUb7vALuDJ0'
});

var coffee = 0;
var tea = 0;

setInterval(function(){
  var lines = process.stdout.getWindowSize()[1];
    for(var i = 0; i < lines; i += 1){
      console.log("\n");
    }
  console.log("coffee: " + coffee);
  console.log("tea: " + tea);
}, 1000);

client.stream('statuses/filter', {'track': 'coffee,tea'}, function(connection){
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
