<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"	href="/resources/css/chat2.css"> 
</head>
<body>
<div class="chat">
  <div class="chat_header">
    <img class="chat_avatar" src="http://www.naturaloil.ph/wp-content/uploads/2015/11/John_Doe.jpg"></img>JOHN DOE
  </div>
  <div class="chat_s">
  </div>
  <div class="chat_input">
    <input placeholder="Type here..." class="chat_text" onkeypress="if(event.keyCode === 13){add()}">
    <button onclick="add()" class="chat_submit fa fa-send">send</button>
  </div>
  
</div>
<input type="hidden" id="userId" value="user1">
<input type="hidden" id="fromId" value="user2">
<!-- 	<h1 id="welcome"></h1> -->
<!-- 	<input id="message" type="text"><button onclick="sendMessage();">보내기</button> -->
	
<!-- 	<div id="chat"></div> -->
<!-- 	<input type="hidden" id="name" > -->
	
	
	
	
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script src="https://www.gstatic.com/firebasejs/4.1.1/firebase-app.js"></script>
	<script src="https://www.gstatic.com/firebasejs/4.1.1/firebase-database.js"></script>
	<script src="https://www.gstatic.com/firebasejs/4.2.0/firebase.js"></script>
	<script src="/resources/js/chat.js"></script>
	<script>

	  var config = {
			    apiKey: "AIzaSyCCz1QBgdGHOMtDsNBuVdP0vV4AEzMWSwQ",
			    authDomain: "fmc-test-1efbc.firebaseapp.com",
			    databaseURL: "https://fmc-test-1efbc.firebaseio.com",
			    projectId: "fmc-test-1efbc",
			    storageBucket: "fmc-test-1efbc.appspot.com",
			    messagingSenderId: "117555202324"
			  };
			  firebase.initializeApp(config);
			  var database = firebase.database();
// 		var provider = new firebase.auth.FacebookAuthProvider();
// 		provider.addScope('user_birthday');
// 		provider.setCustomParameters({
// 			  'display': 'popup'
// 		});
// 		firebase.auth().signInWithPopup(provider).then(function(result) {
// 			  // This gives you a Facebook Access Token. You can use it to access the Facebook API.
// 			  var token = result.credential.accessToken;
// 			  // The signed-in user info.
// 			  var user = result.user;
// 			  console.log("token1",token);
// 			  welcome.innerHTML = result.additionalUserInfo.profile.first_name + " 님 환영합니다.";
// 			  $("#name").val(result.additionalUserInfo.profile.first_name);
// 			  console.log(result.additionalUserInfo.profile);
// 			  // ...
			  
// 			}).catch(function(error) {
// 			  // Handle Errors here.
// 			  var errorCode = error.code;
// 			  var errorMessage = error.message;
// 			  // The email of the user's account used.
// 			  var email = error.email;
// 			  // The firebase.auth.AuthCredential type that was used.
// 			  var credential = error.credential;
// 			  // ...
// 			});
			 
		
		function add() {
			document.getElementsByClassName('chat_s')[0].innerHTML += '<div class="chat_bubble-2">' + $(".chat_text").val() + '</div>';
			writeMessage($(".chat_text").val());
			$(".chat_text").val("");
		}
		function writeMessage(content){
			database.ref().child('message/'+$("#fromId").val()).set({
				message:content
			})
		}
		var formref = database.ref().child('message/'+$("#userId").val());
		formref.on('child_changed', function(snap) {
			document.getElementsByClassName('chat_s')[0].innerHTML += '<div class="chat_bubble-1">' + snap.val() + '</div>';
			console.log(snap);
		});
		formref.on('child_added', function (snap) {
			document.getElementsByClassName('chat_s')[0].innerHTML += '<div class="chat_bubble-1">' + snap.val() + '</div>';
		});
	</script>
</body>
</html>