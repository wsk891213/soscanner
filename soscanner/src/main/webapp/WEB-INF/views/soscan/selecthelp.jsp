<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SOScan</title>
<!-- <script src="https://www.gstatic.com/firebasejs/4.2.0/firebase.js"></script> -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<c:import url="/WEB-INF/views/include/basicIncludeTop.jsp"></c:import>
</head>
<body>
	<div>
		<c:import url="/WEB-INF/views/include/navBar.jsp" />
	</div>
	<section class="page-title text-center"
		style="background-image: url(/resources/images/newsospic.jpg);">
	<div class="container relative clearfix">
		<div class="title-holder">
			<div class="title-text">
				<h1 class="color-white heading-frame">SOScan</h1>
				<ol class="breadcrumb">
					<li class="active">Help AnyOne</li>
				</ol>
			</div>
		</div>
	</div>
	</section>
	<br>
	<br>
	<div class="container" id="askdiv">
		<h2 class="intro-heading heading-frame">I need your help</h2>
		<form class="aForm" action="#" id="aForm">
			<div class="row">
				<div class="col-md-6">
					<input name="userId" id="userId" type="text" placeholder="Name*">
				</div>
			</div>
			<textarea name="content" id="content" placeholder="Message"
				style="resize: none;"></textarea>
			<input class="btn btn-lg btn-color btn-submit" type="submit" value="Help Message">
			<div class="message" id="msg"></div>
		</form>
	</div>
	<a href="chat">채팅</a>
	<a href="chat2">채팅2</a>
	<br>
	<br>
	<br>


	<div>
		<c:import url="/WEB-INF/views/include/footer.jsp" />
	</div>
	<c:import url="/WEB-INF/views/include/basicIncludeBottom.jsp"></c:import>
	
	<script src="https://www.gstatic.com/firebasejs/4.3.0/firebase-app.js"></script>
	<script src="https://www.gstatic.com/firebasejs/4.3.0/firebase-database.js"></script>
	<script src="https://www.gstatic.com/firebasejs/4.3.0/firebase.js"></script>
<!-- 	<script src="/resources/js/chat.js"></script> -->
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
			  
		$("#aForm").submit(function () {
			database.ref().child('help/'+'user1').set({
				message:$("#content").val(),
				userId:$("#userId").val()
			})
			console.log($("#userId").val());
			console.log($("#content").val());
			$("#userId").val("");
			$("#content").val("");
			return false;
		});
		
		
		
	</script>
</body>
</html>