<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>

</style>
</head>
<body>
<div>
	<!-- 상단메뉴 -->
	<div>
		<c:import url="/WEB-INF/views/include/topMenu.jsp" />
	</div>
	
	<!-- 본문 -->
	<div class="boxStyle question">
		<div class="questArea">
			<strong>
				<img src="/soscanner/resources/images/tit_quest.gif" alt="자주 찾는 질문" />
			</strong>
		</div>
		<div class="inpArea">
			<input type="text" class="textInp01" name="searchValue" id="searchValue">
			<a href="#" >
				<img src="/soscanner/resources/images/btn_grSearch.gif" />
			</a>
		</div>
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
				<th> 제목  </th>
			</table>
		</div>
	</div>
	
</div>

</body>
</html>