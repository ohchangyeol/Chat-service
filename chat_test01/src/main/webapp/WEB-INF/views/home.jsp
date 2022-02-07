<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>소켓 서버</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

		<style>
		#messages { list-style-type: none; margin: 0; padding: 0; }
		#messages li { padding: 5px 10px; }
		/* #messages li:nth-child(odd) { background: #eee; } */
		#messages span {display: inline-block; padding: 5px; border-radius: 3px;}
		.left{text-align: left;}
		.right{text-align: right;}
		.card{display: grid; grid-template-columns: 1fr; grid-template-rows: 1fr 5fr 1fr;}
		.right span{background-color: rgb(214, 189, 221);}
		.left span{background-color: rgb(178, 198, 241);}
		</style>
  	</head>
  	<body>
		<div class="row">

		<!-- 대기실 -->
		<div class="col-lg-4">
			<div class="card">
				<div class="card-header">
					대기실
					<input id="user-id" type="text">
				</div>
				
				<div class="card-footer">
					<ul id="messages"></ul>
				</div>

				<div class="card-body">
					<form action="">
					<div class="input-group mb-3">
						<input type="text" class="form-control" id="m" autocomplete="off" />
						<div class="input-group-append">
						<button id="msg-send" class="btn btn-primary" placeholder="message">Send</button>
						</div>
					</div>
					</form>
				</div>
			</div>
		</div>
		
	
		<script src="http://localhost:82/socket.io/socket.io.js"></script>
		<script src="https://code.jquery.com/jquery-1.11.1.js"></script>
		<script>
			$(document).ready(function(){
				var socket = io("http://localhost:82");
				
				$('#msg-send').click(() => {
					const data = {
						"user" : $('#user-id').val(),
						"message" : $('#m').val()
					}
					socket.emit('req_message', data );
					$('#m').val('');
					return false; 
				});
				socket.on('res_message', (res) => {
					console.log(res);
					const rep_user = res.user;
	
					if ($('#user-id').val() == rep_user){
						// $('#messages').append($('<li class ="right">').text(res.message));
						$('#messages').append($('<li class ="right">').append($("<span>").text(res.message)));
					}else{
						$('#messages').append($('<li class ="left">').append($("<span>").text(res.message)));
						// $('#messages').append($('<li class ="left">').text(res.message));
					}			
				});
			});
		</script>
	</body>
</html>