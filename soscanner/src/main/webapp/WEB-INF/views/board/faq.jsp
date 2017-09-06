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
	background: #051924;
	border-radius: 30px;
	padding: 30px 30px 0px;
}
.boxInner {
	border: 4px solid white;
	color: white;
	width: 100%;
	height: 100%;
	border-radius: 25px;
	padding: 40px 10px 40px;
}
.accrdMTitle {
	color: white;
	text-align: center;
	margin-bottom: 100px;
	font-size: 30px;
}
.aTitle {
	height: 50px;
	font-size: 30px;
	text-indent: 20px;
	border: 1px solid #a85e39;
	
}
.aTitle:hover {
	background: #efeaea;
	color: black;
}
.aContent {
	height: 50px;
	font-size: 30px;
	text-indent: 20px;
	background: white;
	color: black;
	display: none;
	border: 1px solid #a85e39;
}
form {
	width : 20%;
	height : 20%;
	text-align: center;
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
    <section class="page-title text-center" style="background-image: url(/resources/images/resize-faq-img.jpg);">
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
<!--                   <div class="entry-title"> -->
<!--                     <h2>자주 묻는 질문(FAQ)</h2> -->
<!--                   </div> -->
<!--                   <ul class="entry-meta bottom-line"> -->
<!--                   </ul> -->

                  <div class="entry">
                    <div class="entry-content">
						<div class="boxOuter">
							<div class="boxInner">
								<h3 class="accrdMTitle">자주 묻는 질문(FAQ)</h3>
							<c:forEach var="faq" items="${faq}">
								<ul>
									<li class="aTitle"><c:out value="${faq.content}" /></li>
									<li class="aContent"><c:out value="${faq.answer}" /></li>
								</ul>
							</c:forEach>
							</div>
							
						<!-- Search -->
						<form action="/board/faq" method="get" role="form" class="relative" style="margin: 10px 38% !important;">
							<input type="search" class="searchbox" style="background:white" placeholder="Search">
							<button type="submit" class="search-button">
								<i class="icon icon_search"></i>
							</button>
						</form>
						<!-- Search -->
							
						</div>
						
						<!-- Pagination -->
						<c:if test="${pageResult.count != 0}">
								<nav class="pagination clear text-center">
									<i class="icon arrow_left"></i>
									<span class="<c:if test="${pageResult.prev eq false}">disabled</c:if>">
									<a href="<c:if test="${pageResult.prev eq true}">javascript:goPage(${pageResult.beginPage - 1})</c:if>">
										Prev
									</a>
									</span>
							  
								<c:forEach var="i" begin="${pageResult.beginPage}" end="${pageResult.endPage}">
									<c:choose>
										<c:when test="${pageResult.pageNo eq i}">
											<a href="#1">${i}</a>
										</c:when>
										<c:otherwise>
											<a href="javascript:goPage(${i})">${i}</a>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							
				                <span class="<c:if test="${pageResult.prev eq false}">disabled</c:if>">
									<a href="<c:if test="${pageResult.next eq true}">javascript:goPage(${pageResult.endPage + 1})</c:if>">
										Next
									</a>
								</span>
				                <i class="icon arrow_right"></i>
				            </nav>
						</c:if>
						<!-- Pagination -->
						
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
function goPage(pageNo) {
    location.href = "faq?pageNo=" + pageNo;
 }


$(".aTitle").click(function () {
	if(!$(this).next().is(":visible")){
		$(".aContent").slideUp();
		$(this).next().slideDown();
	}
	else {
		$(this).next().slideUp();
	}
})
</script>
</body>
</html>






