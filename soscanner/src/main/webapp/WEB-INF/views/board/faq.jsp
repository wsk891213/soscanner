<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	.ask {
	
	}
	input.btn{
		background: url(/resources/images/btn_grSearch.gif);
		width: 52px;
		height: 34px;
		border: none;
		outline: 0;
	}
	.btn-img{

	}
</style>
<c:import url="/WEB-INF/views/include/basicIncludeTop.jsp"></c:import>    
</head>
<body>
	<!-- nav 메뉴 -->
	<c:import url="/WEB-INF/views/include/navBar.jsp"></c:import>
	<!-- nav 메뉴 끝-->
	<div class="main-wrapper-onepage main oh">
	
<div>
	<!-- 본문 -->
	<div class="boxStyle question">
		<div class="questArea">
			<strong>
				<img src="/resources/images/tit_quest.gif" alt="자주 찾는 질문" />
			</strong>
		</div>
		
		<form action="/faq/faq" method="get">
			<div class="inpArea">
				<input type="text" class="textInp01" name="searchValue" id="searchValue">
				<input type="submit" class="btn" value="">
				<div style="display:none"><img class="btn-img" src="/resources/images/btn_grSearch.gif" /></div>
			</div>
		</form>
		
	</div>
	
	<div class="list">
		<div id="menu" >
			<ul class="tabStyle tab4">
				<li><a>회원</a></li>
				<li><a>관광정보</a></li>
				<li><a>SOSCANNER</a></li>
				<li><a>게시판</a></li>
			</ul>
		</div>
		
		<div>
			<table>
				<tr>
					<td>번호</td>
					<td>내용</td>
				</tr>
				
				<c:forEach var="faq" items="${faq}">
				<tr>
					<td><c:out value="${faq.faqNo}" /></td>
					<td class="ask" id="ask${faq.faqNo}" onclick="test(${faq.faqNo})"><c:out value="${faq.content}" /></td>
				</tr>
				<tr class="answer" id="answer${faq.faqNo}" style="display:none;">
					<td>답변</td>
					<td><c:out value="${faq.answer}" /></td>
				</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	
</div>

	<nav>
	<c:if test="${pageResult.count != 0}">
		<ul class="pagination">
			<li class="<c:if test="${pageResult.prev eq false}">disabled</c:if>">
			<a href="<c:if test="${pageResult.prev eq true}">javascript:goPage(${pageResult.beginPage - 1})</c:if>">
				<span>&laquo;</span>
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

			<li class="<c:if test="${pageResult.next eq false}">disabled</c:if>">
			<a href="<c:if test="${pageResult.next eq true}">javascript:goPage(${pageResult.endPage + 1})</c:if>">
				<span>&raquo;</span>
			</a>
			</li>
		</ul>
	</c:if>
	</nav>

<script>
function test (no) {
	$("#answer" + no).toggle();
}

function goPage(pageNo) {
    location.href = "faq?pageNo=" + pageNo;
 }
</script>
    <!-- start of footer -->
	<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
	<!-- end of footer -->
	</div> <!-- end main-wrapper -->
	<c:import url="/WEB-INF/views/include/basicIncludeBottom.jsp"></c:import>
</body>
</html>