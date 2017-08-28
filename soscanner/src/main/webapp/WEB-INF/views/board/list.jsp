<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
 nav ul{padding-top:10px;}                     /*  상단 여백 10px  */
         nav ul li {
            display:inline;                         /*  세로나열을 가로나열로 변경 */
            border-left:1px solid #999;             /* 각 메뉴의 왼쪽에 "|" 표시(분류 표시) */
            font:bold 12px Dotum;                     /* 폰트 설정 - 12px의 돋움체 굵은 글씨로 표시 */
            padding:0 10px;                         /* 각 메뉴 간격 */
        }
         nav ul li:first-child{border-left:none;}     /* 메뉴 분류중 제일 왼쪽의 "|"는 삭제 */      
</style>
</head>
<body>
	<h1>게시판</h1>
	<input type="button" value="글쓰기" onclick="location.href='writeForm'">
	<table>
	<tr>
		<td>전체 <c:out value="${pageResult.count}" /> 개</td>
	</tr>
	<tr>
		<td>글번호</td>
		<td>제목</td>
		<td>글쓴이</td>
		<td>날짜</td>
		<td>조회수</td>
	</tr>

	<c:forEach var="board" items="${list}">
	<tr>
		<td><c:out value="${board.boardNo}" /></td>
		<td><a href="detail?boardNo=${board.boardNo}"><c:out value="${board.title}" /></a></td>
		<td><c:out value="${board.writer}" /></td>
		<td><fmt:formatDate value="${board.regDate}" pattern="yyyy-MM-dd" /></td>
		<td><c:out value="${board.viewCount}" /></td>
	</tr>
	</c:forEach>
	</table>
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
      function goPage(pageNo) {
         location.href = "list?pageNo=" + pageNo;
      }
   </script>
</body>
</html>





