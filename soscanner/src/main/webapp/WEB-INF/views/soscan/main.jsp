<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>SOSCAN</title>
<style>
#containers {
margin: 50px;
/* -webkit-box-shadow:0px 0px 30px 10px #9c9c9c ; */
/* -moz-box-shadow:0px 0px 30px 10px #9c9c9c ; */
/* box-shadow:0px 0px 30px 10px #9c9c9c ; */
border-radius:50px;
-moz-border-radius:50px;
-webkit-border-radius:50px;
}

.section-wrap .container {
/* 	background: url("/resources/images/post-iloveimg-resized.png"); */
	box-shadow: 10px 10px 15px 15px gray;
}

.back {
	background: url("/resources/images/postss.png");
}
</style>
<c:import url="/WEB-INF/views/include/basicIncludeTop.jsp"></c:import>    
</head>
<body>
<!-- nav 메뉴 -->
  <c:import url="/WEB-INF/views/include/navBar.jsp"></c:import>
<!-- nav 메뉴 끝-->
<div class="main-wrapper-onepage main oh">

 <!-- Page Title -->
<section class="page-title text-center" style="background-image: url(/resources/images/newsospic.jpg);">
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
						<h2>도움을 요청하세요</h2>
					</div>
				<ul class="entry-meta bottom-line">	</ul>
			</div>
		</div>
			
			<div id="containers">
				<div class="col-md-6 col-md-offset-3">
					<form id="helpForm">
			            <input name="userId" id="userId" type="text" placeholder="Name" >
			            <textarea placeholder="Textarea" id="content" name="content" rows="3" style="resize: none;"></textarea>
			            <input type="submit" class="btn btn-lg btn-dark" value="Send Message">
					</form>
					<br>
	          	</div>
			</div>
          	
		</div>
	</div>
</section>


		<!-- start of footer -->
<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
<!-- end of footer -->
 </div> <!-- end main-wrapper -->
<c:import url="/WEB-INF/views/include/basicIncludeBottom.jsp"></c:import>
<script>
	
	$("#helpForm").submit(function (e) {
		e.preventDefault();
		$.ajax({
			url: "helpsend",
			data: {
				userId: $("#userId").val(),
				content: $("#content").val()
			}
		}).done(function () {
			alert("도움을 요청하였습니다. 요청 선택페이지로 이동합니다.");
			location.href="helper";
		});
	});
	
</script>
</body>
</html>






