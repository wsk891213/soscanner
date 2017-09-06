<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>게시판</title>
<c:import url="/WEB-INF/views/include/basicIncludeTop.jsp"></c:import>
</head>

<body data-spy="scroll" data-offset="60" data-target=".navbar-fixed-top">

	<!-- nav 메뉴 -->
	<c:import url="/WEB-INF/views/include/navBar.jsp"></c:import>
	<!-- nav 메뉴 끝-->


	<div class="main-wrapper-onepage main oh">

		<!-- Page Title -->
		<section class="page-title text-center"
			style="background-image: url(/resources/images/resized-board-img.jpg);">
			<div class="container relative clearfix">
				<div class="title-holder">
					<div class="title-text">
						<h1 class="color-white heading-frame">BOARD</h1>
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

						<!-- gallery post -->
						<c:forEach var="EachList" items="${list}" varStatus="status">
							<div class="entry-item">
								<div class="entry-date hidden-sm hidden-xs">
									<span>No</span> <span>${status.count}</span>
								</div>

								<div class="entry-title">
									<h2>
										<a href="detail?boardNo=${EachList.boardNo}"><c:out
												value="${EachList.title}" /></a>
									</h2>
								</div>
								<ul class="entry-meta">
									<li class="entry-date"><a href="#"><fmt:formatDate
												value="${EachList.regDate}" pattern="yyyy-MM-dd" /></a></li>
									<li class="entry-author">by <a href="blog-single.html"><c:out
												value="${EachList.writer}" /></a>
									</li>
									<li><a href="blog-single.html" class="entry-comments">댓글</a>
									</li>
									<li class="entry-category"><a href="#"><c:out
												value="${EachList.viewCount}" /></a></li>
								</ul>

								<div class="entry">

									<div class="entry-content">
										<p>내용</p>
										<a href="detail?boardNo=${EachList.boardNo}" class="read-more">더보기</a> <i
											class="icon arrow_right"></i>
									</div>
								</div>
							</div>
						</c:forEach>
						<!-- end entry item -->


						<!-- Pagination -->
						<nav class="pagination clear text-center">
							<c:if test="${pageResult.count != 0}">
								<ul class="pagination">
									<li	class="<c:if test="${pageResult.prev eq false}">disabled</c:if>">
										<a href="<c:if test="${pageResult.prev eq true}">javascript:goPage(${pageResult.beginPage - 1})</c:if>">
										<i class="icon arrow_left"></i> 
										<span>Prev</span>
										</a>
									</li>

							<c:forEach var="i" begin="${pageResult.beginPage}" end="${pageResult.endPage}">
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
										<span>Next</span>
										<i class="icon arrow_right"></i>
										</a>
									</li>
								</ul>
							</c:if>
						</nav>
					</div>
					<!-- end col -->

<script>
	function goPage(pageNo) {
	    location.href = "list?pageNo=" + pageNo;
	 }
</script>

					<!-- sidebar -->
					<div class="col-sm-4 sidebar blog-sidebar">
						<form role="form" class="relative">
							<input type="search" class="searchbox" placeholder="Search">
							<button type="submit" class="search-button">
								<i class="icon icon_search"></i>
							</button>
						</form>
						
						<div class="writing">
               				<a href="/board/writeForm">
								<i class="fa fa-pencil-square-o" aria-hidden="true">글쓰기</i>
                			</a>
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