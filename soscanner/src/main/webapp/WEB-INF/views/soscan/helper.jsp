<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>SOScan</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<c:import url="/WEB-INF/views/include/basicIncludeTop.jsp"></c:import>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<style>
#hDiv {
    
	box-shadow: 10px 10px 15px 15px gray;
	height: auto;
	
}
</style>
</head>

<body data-spy="scroll" data-offset="60" data-target=".navbar-fixed-top">

	<!-- nav 메뉴 -->
	<c:import url="/WEB-INF/views/include/navBar.jsp"></c:import>
	<!-- nav 메뉴 끝-->

	<script>
		
	</script>

	<div class="main-wrapper-onepage main oh">

		<!-- Page Title -->
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
		<!-- end page title -->

		<!-- Blog Standard -->
		<section class="section-wrap blog-standard">
			<div class="container relative">
				<div class="row">
					<!-- content -->
					<!-- 여기에 스타일 15%된거 변경해서 중간으로 맞춰야함 -->
					<div class="col-sm-8 blog-content" style="margin-left: 15%" id="hDiv">
						<h2 class="intro-heading heading-frame">Please choose someoneto help you</h2>
						<input id="reset" class="btn btn-lg btn-dark" type="button" value="새로고침">&emsp;&emsp;&emsp;&emsp;&emsp; <input id="cBtn" type="button" onclick="deleteUser();" class="btn btn-lg btn-dark" value="질문완료">
						<br><br>
					</div>
					<!-- end col -->

				</div>
				<!-- end row -->
			</div>
			<!-- end container -->
		</section>
		<!-- end blog standard -->
		<input id="sId" type="hidden" value='${user.u_email }'> <input id="hId"
			type="hidden" value='${hId}'>
		<!-- start of footer -->
		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
		<!-- end of footer -->
	</div>
	<!-- end main-wrapper -->

	<!-- jQuery Scripts -->
	<c:import url="/WEB-INF/views/include/basicIncludeBottom.jsp"></c:import>



	<script defer
		src="https://www.gstatic.com/firebasejs/4.3.0/firebase-app.js"></script>
	<script defer
		src="https://www.gstatic.com/firebasejs/4.3.0/firebase-database.js"></script>
	<script src="https://www.gstatic.com/firebasejs/4.3.0/firebase.js"></script>
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

		var hDiv = document.getElementById("hDiv");
		var ssId = $("#sId").val();
		var sosId = ssId.split("@")[0];
		var help = database.ref('help/' + sosId);
		console.log("help : ", help);
		console.log(sosId);
		var ssi
		help.once('value',function(snap) {
							console.log(snap);
							var sId = '';
							snap.forEach(function(childSnapshot) {
										var childData = childSnapshot.val();
										// 							console.log("child : ", sId);
										// 							console.log("child : ", childData);
										$("#hId").val(childSnapshot.key);
										console.log("data : ", childSnapshot.key);
										console.log("씨발 : ", snap.val());
										ssi = childSnapshot.key;
										console.log("homin : ", snap.val()[ssi].message);
										var html = '';
										html += '<div style="float: left; box-sizing: border-box; margin-right: 10px;">';
										html += '<div class="entry-item">';
										html += '<div class="entry-date hidden-sm hidden-xs" style="padding: 0px 4px;">';
										html += '<img id="userPic"></img>';
										html += '</div>';
										html += '<div class="entry-title">';
										html += '<h2>';
										html += '<a href="#" id="helpId">'+ ssi + '</a>';
										html += '</h2>';
										html += '</div>';
										html += '<ul class="entry-meta">';
										html += '<li>';
										html += '<a>'
												+ snap.val()[ssi].message
												+ '</a>';
										html += '</li>';
										html += '</ul>';
										html += '&emsp;&emsp;<button onclick="chat()" id="'+ssi+'")>채팅하기</button>';
										html += '</div>';
										html += '</div>';
										hDiv.innerHTML += html;
										console.log($("#helpId").html());	
										
										$.ajax({
											url: "/user/user",
											data: {id : ssi}
										}).done(function (result) {
											console.log(result.u_uno);
											$.ajax({
												url:"/user/userPic",
												data: {u_uNo: result.u_uno}
											}).done(function (result) {
												console.log(result);
											});
										});
										
									});
						});
		function deleteUser(result) {
// 			alert(result);
			console.log(result);
			database.ref('/help/' + sosId + '/').remove();
			location.href = "helper";
		}
		$("#reset").click(function (){
			location.reload();
		});
		function chat(result) {
			alert(this.val());
		}
	</script>


</body>
</html>