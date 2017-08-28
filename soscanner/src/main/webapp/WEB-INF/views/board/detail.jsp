<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>
<body>
	<table>
		<tr>
			<td>글번호</td>
			<td><c:out value="${detail.boardNo}" /></td>
		</tr>
		<tr>
			<td>제목</td>
			<td><c:out value="${detail.title}" /></td>
			<td>날짜</td>
			<td><fmt:formatDate value="${detail.regDate}" /></td>
		</tr>
		<tr>
			<td>글쓴이</td>
			<td><c:out value="${detail.writer}" /></td>
		</tr>
		<tr>
			<td>조회수</td>
			<td><c:out value="${detail.viewCount}" /></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><c:out value="${detail.content}" /></td>
		</tr>

		<tr>
			<td><a href="updateForm?boardNo=${detail.boardNo}">수정</a></td>
			<td><a href="delete?boardNo=${detail.boardNo}">삭제</a></td>
		</tr>
		<tr>
			<td><a href="list">목록</a></td>
		</tr>
	</table>
	
	<table id="commentList">
	</table>
		<div>
			<form action="insert" method="post">
				<textarea style='resize:none' name='content' rows="10" cols="100"></textarea> 
				<input type="submit" value="등록" >
			</form>
		</div>
		<input id="no" type="hidden" value="${detail.boardNo }">
	<script>
	$.ajax({
			url: "commentList",
			data: {boardNo: $("#no").val()},
			dataType: "json"
		}).done(function(data){
			html = "";
			console.log(data);
			for (var i = 0; i < data.length; i++){
				var comment = data[i];
				html += "<tr id='comment.commentNo'>";
				html += "	<td>" + comment.commentID + "</td>";
				html += "	<td>" + comment.commentDate + "</td>";
				html += "	<td>" + comment.commentContent + "</td>";
				html += "</tr>";
			}
			$("#commentList").html(html);
		});
	</script>
</body>
</html>