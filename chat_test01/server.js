var app = require('express')();
var http = require('http').Server(app);
var io = require('socket.io')(http);

io.on('connection', function(socket){
  console.log('한명의 유저가 접속을 했습니다.');
  
  socket.on("req_message" , (msg)=>{
    io.emit("res_message",msg);
  });
  

  socket.on("disconnect",async()=>{
    console.log("user disconnected");
  });
});

http.listen(82, function(){
  console.log('listening on *:82');
});