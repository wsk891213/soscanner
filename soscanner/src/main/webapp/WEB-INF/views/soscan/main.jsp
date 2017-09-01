<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SOScan</title>
<style>
	body {
		text-align: center;
	}
	#askdiv {
		height: 500px;
		text-align: center;
		box-shadow: 10px 10px 20px 6px gray;
		display:inline-block;
		margin: auto;
		
	}
	#askH2 {
	
	}
	
</style>
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
		<form class="aForm" action="#" id="aForm">
		<br>
		<h2 class="intro-heading heading-frame" id="askH2">Ask For Help</h2>
			<div class="row" style="text-align: center;>
				<div class="col-md-6"">
					<input name="userId" id="userId" type="text" placeholder="Name*" style="width: 500px" >
				</div>
			<textarea rows="3" name="content" id="content" placeholder="Message"
				style="resize: none ; width: 500px; position: absolute;"></textarea> <br> 
			<input class="btn btn-lg btn-color btn-submit" type="submit" value="Send Message">
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




<!-- 	<script src="https://www.gstatic.com/firebasejs/4.1.1/firebase-app.js"></script> -->
<!-- 	<script --> 
<!-- 		src="https://www.gstatic.com/firebasejs/4.1.1/firebase-database.js"></script> -->
<!-- 	<script -->
<!-- 		src="https://www.gstatic.com/firebasejs/4.1.1/firebase-messaging.js"></script> -->
<!-- 	<script src="https://www.gstatic.com/firebasejs/4.2.0/firebase.js"></script> -->
<!-- 	<script src="/resources/js/notification.js"></script> -->
	<script>
		
		$("#aForm").submit(function () {
			console.log($("#userId").val());
			console.log($("#content").val());
			$.ajax({
				url: "helpsend",
				data: {userId : $("#userId").val(), content : $("#content").val()}
				
			}).done(function () {
				location.href="helper";
				
			});
			
			return false;
		})
		
		
		
	</script>
</body>
</html>