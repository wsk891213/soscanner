<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>글쓰기</h1>
	<div>
		<form action="write" method="post">
			제목 : <input type='text' style='resize:none' name='title' /><br> 
			글쓴이 : <input type='text' style='resize:none' name='writer' /><br>
			내용 : <br>
			<textarea style='resize:none' name='content' rows="10" cols="50"></textarea> 
			<input type="submit" value="등록">
		</form>
		<a href='list'>목록</a>
	</div>
</body>
</html>