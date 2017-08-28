<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관광정보</title>
<script
  src="https://code.jquery.com/jquery-3.2.1.js"
  integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE="
  crossorigin="anonymous"></script>
</head>
<body>
	<h1>관광정보 페이지</h1>
	<c:forEach var="list" items="${list}" >
			<h1><c:out value="${list}.ti_title"></c:out></h1>
			<h5><c:out value="${list}.ti.ovrvw"></c:out>  </h5>
	</c:forEach>
</body>
</html>