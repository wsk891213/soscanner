<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"	href="/resources/css/chat.css"> 
<c:import url="/WEB-INF/views/include/basicIncludeTop.jsp"></c:import>
</head>
<body>
<c:import url="/WEB-INF/views/include/navBar.jsp"></c:import>
<div class="main-wrapper-onepage main oh">
		<!-- Page Title -->
		<section class="page-title text-center"	style="background-image: url(/resources/images/newsospic.jpg);">
		<div class="container relative clearfix">
			<div class="title-holder">
				<div class="title-text">
					<h1 class="color-white heading-frame">SOSCAN</h1>
				</div>
			</div>
		</div>
		</section>
<div class="chat">
  <div class="chat_header">
    <img class="chat_avatar" src="${nextUserPic.u_path }">chat</img>
  </div>
  
  <div class="chat_s">
  </div>
  <div class="chat_input">
    <input placeholder="Type here..." class="chat_text" onkeypress="if(event.keyCode === 13){add()}">
    <button onclick="add()" class="chat_submit fa fa-send">send</button>
  </div>
  
</div>
<input type="hidden" id="userId" value="${user.u_email }">
<input type="hidden" id="fromId" value="${nextUser.u_email}">
<!-- 	<h1 id="welcome"></h1> -->
<!-- 	<input id="message" type="text"><button onclick="sendMessage();">보내기</button> -->
	
<!-- 	<div id="chat"></div> -->
<!-- 	<input type="hidden" id="name" > -->
	
	<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
	</div>
		<c:import url="/WEB-INF/views/include/basicIncludeBottom.jsp"></c:import>
	
	<script defer src="https://www.gstatic.com/firebasejs/4.3.0/firebase-app.js"></script>
	<script defer src="https://www.gstatic.com/firebasejs/4.3.0/firebase-database.js"></script>
	<script src="https://www.gstatic.com/firebasejs/4.3.0/firebase.js"></script>
<!-- 	<script src="/resources/js/chat.js"></script> -->
	<script>

	var config = {
			apiKey : "AIzaSyCCz1QBgdGHOMtDsNBuVdP0vV4AEzMWSwQ",
			authDomain : "fmc-test-1efbc.firebaseapp.com",
			databaseURL : "https://fmc-test-1efbc.firebaseio.com",
			projectId : "fmc-test-1efbc",
			storageBucket : "fmc-test-1efbc.appspot.com",
			messagingSenderId : "117555202324"
		};
		firebase.initializeApp(config);
		var database = firebase.database();
	  var userId = $("#userId").val();
	  var uId = userId.split("@")[0];
	  var formId = $("#fromId").val();
	  var fId = formId = formId.split("@")[0];
	  function add() {
	 	document.getElementsByClassName('chat_s')[0].innerHTML += '<div class="chat_bubble-2">' + $(".chat_text").val() + '</div>';
	 	document.getElementsByClassName('chat_s')[0].innerHTML += '<img style="float: right; width: 40px; height: 40px;" src="${userPic.u_path}"><span style="float: right;">${user.u_email}</span></img><br><br>';
		writeMessage($(".chat_text").val());
		$(".chat_text").val("");
	  }
	  function writeMessage(content){
		database.ref().child('message/'+uId).set({
			message:content
		})
      }
	  var formref = database.ref().child('message/'+fId);
	  formref.on('child_changed', function(snap) {
	 	document.getElementsByClassName('chat_s')[0].innerHTML += '<div class="chat_bubble-1">' + snap.val() + '</div>';
	 	document.getElementsByClassName('chat_s')[0].innerHTML += '<img style="float: left; width: 40px; height: 40px;" src="${nextUserPic.u_path}"><span style="float: left;">${nextUser.u_email}</span></img><br><br>';
		console.log(snap);
	  });
	  formref.on('child_added', function (snap) {
		document.getElementsByClassName('chat_s')[0].innerHTML += '<div class="chat_bubble-1">' + snap.val() + '</div>';
		document.getElementsByClassName('chat_s')[0].innerHTML += '<img style="float: left; width: 40px; height: 40px;" src="${nextUserPic.u_path}"><span style="float: left;">${nextUser.u_email}</span></img><br><br>';
	  });
	</script>
</body>
</html>