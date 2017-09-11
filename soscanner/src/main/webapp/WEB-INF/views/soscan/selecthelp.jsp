<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SOScan</title>
<style>
.section-wrap .container {
	/* 	background: url("/resources/images/post-iloveimg-resized.png"); */
	box-shadow: 10px 10px 15px 15px gray;
}
</style>
<!-- <script src="https://www.gstatic.com/firebasejs/4.2.0/firebase.js"></script> -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<c:import url="/WEB-INF/views/include/basicIncludeTop.jsp"></c:import>
</head>
<body>
	<!-- nav 메뉴 -->
	<c:import url="/WEB-INF/views/include/navBar.jsp"></c:import>
	<!-- nav 메뉴 끝-->
	<div class="main-wrapper-onepage main oh">

		<!-- Page Title -->
		<section class="page-title text-center"
			style="background-image: url(/resources/images/newsospic.jpg);">
		<div class="container relative clearfix">
			<div class="title-holder">
				<div class="title-text">
					<h1 class="color-white heading-frame">SOSCAN</h1>
				</div>
			</div>
		</div>
		</section>
		<!-- end page title -->

		<!-- 	<img src="/resources/images/post-iloveimg-resized.png"> -->
		<section class="section-wrap pb-100 blog-single">
		<div class="container relative">
			<div class="row">
				<div class="col-sm-12 blog-content">
					<div class="entry-item">
						<div class="entry-title">
							<h2>요청받은 도움에 답변을 해주세요</h2>
						</div>
						<ul class="entry-meta bottom-line">
						</ul>
					</div>
				</div>

				<div id="containers">
					<div class="col-md-6 col-md-offset-3">
						<form id="aForm" action="helper">
							<input name="helpId" id="helpId" type="text" readonly="readonly"
								placeholder="Name" value="${user.u_email}">
							<textarea placeholder="Textarea" rows="3" style="resize: none;"
								id="content"></textarea>
							<input type="hidden" id="sId" value="${sosId}">
							<input type="hidden" id="hId" value="${user.u_email}">
							<input type="submit" class="btn btn-lg btn-dark"
								value="Send Message">
						</form>
						<br>
					</div>
				</div>

			</div>
		</div>
		</section>
		<br> <br> <br> <a href="chat">채팅</a> <a href="chat2">채팅2</a>

		<!-- start of footer -->
		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
		<!-- end of footer -->
	</div>
	<!-- end main-wrapper -->
	<c:import url="/WEB-INF/views/include/basicIncludeBottom.jsp"></c:import>
	<script src="https://www.gstatic.com/firebasejs/4.3.0/firebase-app.js"></script>
	<script
		src="https://www.gstatic.com/firebasejs/4.3.0/firebase-database.js"></script>
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

		var sosId = $("#sId").val();
		var helpId = $("#hId").val();
		var sId = sosId.split("@")[0];
		var hId = helpId.split("@")[0];
		$("#aForm").submit(function(e) {
			console.log(sId);
			console.log(hId);
			console.log($("#content").val());
			$("#sId").val(sId);
			$("#hId").val(hId);
			
			e.preventDefault();
			database.ref().child('help/' + sId + '/' + hId).set({
				message : $("#content").val()
			})
			$("#content").val("");
			$.ajax({
				url: "helper",
				data: {
					sId: sId
				}
				
			});
		});

	</script>
	
</body>
</html>