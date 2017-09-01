<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>게시판</title>
<style>
table.faq-item {
    border-collapse: collapse;
    text-align: center;
    line-height: 1.5;
/*     border: 1px solid #ccc; */
    margin: 20px 10px;
}
table.faq-item thead {
/*     border-right: 1px solid #ccc; */
/*     border-left: 1px solid #ccc; */
    background: #dcdcd1;
}
table.faq-item thead th {
    text-align: center;
	border-top: 1px solid #036;
    border-bottom: 2px solid #036;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
}
table.faq-item tbody tr.answer { 
    width: 150px; 
    padding: 10px; 
    font-weight: bold; 
    vertical-align: top; 
    border-bottom: 1px solid #ccc; 
    background: #fbfbfb; 
} 
table.faq-item td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
}
</style>
<c:import url="/WEB-INF/views/include/basicIncludeTop.jsp"></c:import>
</head>

<body data-spy="scroll" data-offset="60" data-target=".navbar-fixed-top">

	<!-- nav 메뉴 -->
	<c:import url="/WEB-INF/views/include/navBar.jsp"></c:import>
	<!-- nav 메뉴 끝-->


	<div class="main-wrapper-onepage main oh">

		<!-- Page Title -->
		<section class="page-title text-center"
			style="background-image: url(/resources/images/resize-faq-img.jpg);">
			<div class="container relative clearfix">
				<div class="title-holder">
					<div class="title-text">
						<h1 class="color-white heading-frame">FAQ</h1>
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
					<div class="col-sm-8 blog-content">

						<table class="faq-item">
						    <thead>
						    <tr>
						        <th scope="cols">제목</th>
						    </tr>
						    </thead>
						    <tbody>
							<c:forEach var="faq" items="${faq}">
							    <tr>
									<td class="ask" id="ask${faq.faqNo}" onclick="test(${faq.faqNo})">
									<c:out value="${faq.content}" /></td>
							        
							    </tr>
								<tr class="answer" id="answer${faq.faqNo}" style="display: none;">
									<td><c:out value="${faq.answer}" /></td>
							    </tr>
							</c:forEach>
						    </tbody>
						</table>


							<!-- Pagination -->
<!-- 							<nav class="pagination clear text-center"> -->
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

										<li
											class="<c:if test="${pageResult.next eq false}">disabled</c:if>">
											<a
											href="<c:if test="${pageResult.next eq true}">javascript:goPage(${pageResult.endPage + 1})</c:if>">
												<span>Next</span> <i class="icon arrow_right"></i>
										</a>
										</li>
									</ul>
								</c:if>
<!-- 							</nav> -->
						</div>
						<!-- end col -->


<script>
	function test (no) {
		$("#answer" + no).toggle();
	}
	
	function goPage(pageNo) {
	    location.href = "faq?pageNo=" + pageNo;
	 }
</script>


					<!-- sidebar -->
					<div class="col-sm-4 sidebar blog-sidebar">

						<form action="/faq/faq" method="get" role="form" class="relative">
							<input type="search" class="searchbox" placeholder="Search">
							<button type="submit" class="search-button">
								<i class="icon icon_search"></i>
							</button>
						</form>

						<!-- Categories -->
						<div class="widget categories">
							<h3 class="widget-title">Categories</h3>
							<ul>
								<li><a href="#">회원 가입/탈퇴</a></li>
								<li><a href="#">관광정보</a></li>
								<li><a href="#">SOSCANNER</a></li>
								<li><a href="#">게시판</a></li>
								<li><a href="#">이용관련</a></li>
							</ul>
						</div>
					</div>
					<!-- end col -->

				</div>
				<!-- end row -->
			</div>
			<!-- end container -->
		</section>
		<!-- end blog standard -->

		<!-- start of footer -->
		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
		<!-- end of footer -->
	</div>
	<!-- end main-wrapper -->

	<!-- jQuery Scripts -->
	<c:import url="/WEB-INF/views/include/basicIncludeBottom.jsp"></c:import>

</body>
</html>