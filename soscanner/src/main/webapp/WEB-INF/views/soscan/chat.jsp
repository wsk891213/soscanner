<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>



	<h1 id="welcome"></h1>
	<input id="message" type="text"><button onclick="sendMessage();">보내기</button>
	
	<div id="chat"></div>
	<input type="hidden" id="name" >
	
	
	
	
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script src="https://www.gstatic.com/firebasejs/4.1.1/firebase-app.js"></script>
	<script src="https://www.gstatic.com/firebasejs/4.1.1/firebase-database.js"></script>
	<script src="https://www.gstatic.com/firebasejs/4.1.1/firebase-messaging.js"></script>
	<script src="https://www.gstatic.com/firebasejs/4.2.0/firebase.js"></script>
	<script>
	  var $message = $("#message").text();
	  var $chat = $("#chat");
	  var welcome = document.getElementById("welcome"); 
	  var config = {
			    apiKey: "AIzaSyCCz1QBgdGHOMtDsNBuVdP0vV4AEzMWSwQ",
			    authDomain: "fmc-test-1efbc.firebaseapp.com",
			    databaseURL: "https://fmc-test-1efbc.firebaseio.com",
			    projectId: "fmc-test-1efbc",
			    storageBucket: "fmc-test-1efbc.appspot.com",
			    messagingSenderId: "117555202324"
			  };
			  firebase.initializeApp(config);
		var provider = new firebase.auth.FacebookAuthProvider();
		provider.addScope('user_birthday');
		provider.setCustomParameters({
			  'display': 'popup'
		});
		firebase.auth().signInWithPopup(provider).then(function(result) {
			  // This gives you a Facebook Access Token. You can use it to access the Facebook API.
			  var token = result.credential.accessToken;
			  // The signed-in user info.
			  var user = result.user;
			  console.log("token1",token);
			  welcome.innerHTML = result.additionalUserInfo.profile.first_name + " 님 환영합니다.";
			  $("#name").val(result.additionalUserInfo.profile.first_name);
			  console.log(result.additionalUserInfo.profile);
			  // ...
			  
			}).catch(function(error) {
			  // Handle Errors here.
			  var errorCode = error.code;
			  var errorMessage = error.message;
			  // The email of the user's account used.
			  var email = error.email;
			  // The firebase.auth.AuthCredential type that was used.
			  var credential = error.credential;
			  // ...
			});
			 
		
		function chat_refresh(){
			var keyView = firebase.database().ref('chatEx/'+$("#name").val());
			keyView.on('child_added', function(snapshot){
				
				var chatObj = snapshot.val();
				
				$chat.append(
					chatObj.nick +
					chatObj.message
				)
			});
		}
		function sendMessage() {
			firebace.database().ref('chatEx/'+$("#name").val()).push({
				nick: name,
				message: message
			})
		}
		
		
	</script>
</body>
</html>