const app = require('express')();
const http = require('http').Server(app);
const io = require('socket.io')(http);
const mongoose = require('mongoose');
const Msg = require('./models/Messages');
require('dotenv').config({path:"variables.env"});


io.on('connection', function(socket){
  console.log('한명의 유저가 접속을 했습니다.');
  // console.log(socket);
  
  Msg.find().then(result=>{
    socket.emit("out_message", result);
  })

  socket.on("req_message", msg=>{
    const message = new Msg(msg);
    message.save().then(()=>{
      io.emit("res_message",msg);
    });
  });
  
  socket.on("disconnect",async()=>{
    console.log("user disconnected");
  });
});

http.listen(82, (err)=>{
  if(err){
    console.log(err);
  }else{
    console.log('listening on *:82');
    mongoose.connect(process.env.MONGO_DB,{ useNewUrlParser: true},(err)=>{
      if(err){
        console.log(err);
      }else{
        console.log("mongoDB connected...");
      }
    });
  }
});