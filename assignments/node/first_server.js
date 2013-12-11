var net = require('net');

var server = net.createServer(function(connection){
  var date = new Date();
  connection.write(date.toString() + "\n");
  connection.end();
  connection.on('error', function(){});
});

console.log("Server about to start listening");

server.listen(1234);

