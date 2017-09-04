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
							
							
							<!-- Pagination -->
				            <nav class="pagination clear text-center">
				              <i class="icon arrow_left"></i>
				                <a href="javascript:goPage(${pageResult.beginPage - 1})">Prev</a>
				              <span class="page-numbers current">1</span>
				                <a href="#">2</a>
				                <a href="#">3</a>
				                <span class="pagination-dots">...</span>
				                <a href="#">10</a>
				                <a href="#">Next</a>
				                <i class="icon arrow_right"></i>
				            </nav>
							
							<!-- Pagination -->
								<c:if test="${pageResult.count != 0}">
									<ul class="pagination">
										<li	class="<c:if test="${pageResult.prev eq false}">disabled</c:if>">
											<a href="<c:if test="${pageResult.prev eq true}">javascript:goPage(${pageResult.beginPage - 1})</c:if>">
												<i class="icon arrow_left"></i> <span>Prev</span>
											</a>
										</li>

										<c:forEach var="i" begin="${pageResult.beginPage}"
											end="${pageResult.endPage}">
											<c:choose>
												<c:when test="${pageResult.pageNo eq i}">
													<li class="active"><a href="#1">${i}</a></li>
												</c:when>
												<c:otherwise>
													<li><a href="javascript:goPage(${i})">${i}</a></li>
												</c:otherwise>
											</c:choose>
										</c:forEach>

										<li	class="<c:if test="${pageResult.next eq false}">disabled</c:if>">
											<a href="<c:if test="${pageResult.next eq true}">javascript:goPage(${pageResult.endPage + 1})</c:if>">
												<span>Next</span> <i class="icon arrow_right"></i>
											</a>
										</li>
									</ul>
								</c:if>
							<!-- Pagination -->
							
							<!-- Search -->
							<form action="/faq/faq" method="get" role="form" class="relative">
								<input type="search" class="searchbox" placeholder="Search">
								<button type="submit" class="search-button">
									<i class="icon icon_search"></i>
								</button>
							</form>
							<!-- Search -->
							
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
// function goPage(pageNo) {
//     location.href = "faq?pageNo=" + pageNo;
//  }
function goPage(pageNo) {
	if("${pageResult.prev eq false}") {
		
	}
	else {
    	location.href = "faq?pageNo=" + pageNo;
	}
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






