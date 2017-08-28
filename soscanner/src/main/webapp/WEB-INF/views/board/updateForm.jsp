<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>글 수정</h1>
	<div>
		<form action="update" method="post">
		<input type="hidden" name="boardNo" value="${updateForm.boardNo}" />
			제목 : <input type='text' style='resize:none' name='title' value='${updateForm.title}' /><br> 
			글쓴이 : <input type='text' style='resize:none' name='writer' value='${updateForm.writer}' /><br>
			내용 : <br>
			<textarea style='resize:none' name='content' rows="10" cols="50"><c:out value="${updateForm.content}" /></textarea> 
			<input type="submit" value="수정완료">
		</form>
		<a href='list'>목록</a>
	</div>
	<script>
		console.log("${boardNo}");
	</script>
</body>
</html>