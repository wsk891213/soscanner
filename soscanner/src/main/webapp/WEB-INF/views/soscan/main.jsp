<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>관광지 정보</title>
<style>
#containers {
margin: 50px;
-webkit-box-shadow:0px 0px 30px 10px #9c9c9c ;
-moz-box-shadow:0px 0px 30px 10px #9c9c9c ;
box-shadow:0px 0px 30px 10px #9c9c9c ;
border-radius:50px;
-moz-border-radius:50px;
-webkit-border-radius:50px;
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

<section class="section-wrap pb-100 blog-single">
	<div class="container relative">
		<div class="row">
			<div class="col-sm-12 blog-content">
				<div class="entry-item">
					<div class="entry-title">
						<h2>도움을 요청하세요</h2>
					</div>
					<ul class="entry-meta bottom-line">
					</ul>
				</div>
			</div>
			
			<div id="containers">
				<div class="col-md-6 col-md-offset-3">
					<form id="registForm">
			            <input name="Email" id="email" type="text" placeholder="Name">
			            <textarea placeholder="Textarea" rows="3"></textarea>
			            <a href="#" class="btn btn-lg btn-dark">Send Message</a>
					</form>
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
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=18cc25ec3391fb888265b35fbb20e3f8"></script>
<script>

</script>
</body>
</html>






