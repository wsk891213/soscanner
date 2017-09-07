<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 글쓰기</title>
<c:import url="/WEB-INF/views/include/basicIncludeTop.jsp"></c:import>
</head>
<body>
	<!-- nav 메뉴 -->
	<c:import url="/WEB-INF/views/include/navBar.jsp"></c:import>
	<!-- nav 메뉴 끝-->

	<h1>글쓰기</h1>
	<div>
		<form action="write" method="post" enctype="multipart/form-data">
			제목 : <input type='text' style='resize:none' name='title' /><br> 
			글쓴이 : <input type='text' style='resize:none' name='writer' /><br>
			내용 : <br>
			<textarea id="writeContent" style='resize:none' name='content' rows="10" cols="50"></textarea> <br>
			<input type="file" name='file'><br>
			<input id="writeForm" type="submit" value="등록"><br>
		</form>
		<a href='list'>목록</a>
	</div>

<script>
// 	$("#writeForm").click(function () {
// 		if($("input[name=title]").val() == "") {
// 			alert("제목을 입력하세요");
// 			return false;
// 		}
		
// 		if($("#writeContent").val.trim() == "") {
// 			alert("내용을 입력하세요");
// 			return false;
// 		}
// 	})
</script>

	<!-- start of footer -->
	<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
	<!-- end of footer -->
	
	<!-- jQuery Scripts -->
	<c:import url="/WEB-INF/views/include/basicIncludeBottom.jsp"></c:import>
</body>
</html>