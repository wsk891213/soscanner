<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>관광지 정보</title>
<style>
.boxOuter {
	width: 100%;
	height: 100%;
	background: black;
	border-radius: 30px;
	padding: 50px;
}
.boxInner {
	border: 4px solid white;
	color: white;
	width: 100%;
	height: 100%;
	border-radius: 25px;
	padding: 80px 10px 80px;
}

.accrdMTitle {
	color: white;
	text-align: center;
	margin-bottom: 100px;
	font-size: 30px;
}
.aTitle {
	height: 45px;
	font-size: 30px;
	text-indent: 20px;
	border: 1px solid gray;
	
}
.aTitle:hover {
	background: #efeaea;
	color: black;
}
.aContent {
	height: 45px;
	font-size: 30px;
	text-indent: 20px;
	background: white;
	color: black;
	display: none;
	border: 1px solid gray;
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
    <section class="page-title text-center" style="background-image: url(/resources/images/sTour.jpg);">
      <div class="container relative clearfix">
        <div class="title-holder">
          <div class="title-text">
            <h1 class="color-white heading-frame">FAQ</h1>
          </div>
        </div>
      </div>
    </section> 
<!-- end page title -->

<section class="section-wrap pb-100 blog-single">
	<div class="container relative" style="width: 1500px !important;">
        <div class="row">
          
          <!-- content -->
          <div class="col-sm-12 blog-content">

            <!-- standard post -->
            <div class="entry-item">
                  <div class="entry-title">
                    <h2>자주 묻는 질문(FAQ)</h2>
                  </div>
                  <ul class="entry-meta bottom-line">
                  </ul>

                  <div class="entry">
                    <div class="entry-content">
						<div class="boxOuter">
							<div class="boxInner">
								<h3 class="accrdMTitle">자주 묻는 질문(FAQ)</h3>
								<!-- 이부분 -->
								<ul>
									<li class="aTitle">질문</li>
									<li class="aContent">내용</li>
								</ul>
								<!-- 이부분 -->
							</div>
						</div>
                    </div>
              </div> <!-- end row -->
            </div> <!-- end entry item -->
          </div> <!-- end col -->
  
        </div> <!-- end row -->
	</div> <!-- end container -->
</section>


<!-- start of footer -->
<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
<!-- end of footer -->
 </div> <!-- end main-wrapper -->
<c:import url="/WEB-INF/views/include/basicIncludeBottom.jsp"></c:import>
<script>
$(".aTitle").click(function () {
	if(!$(this).next().is(":visible")){
		$(".aContent").slideUp();
		$(this).next().slideDown();
	}
})
</script>
</body>
</html>






