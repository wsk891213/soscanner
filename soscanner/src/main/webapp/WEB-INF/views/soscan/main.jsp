<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://www.gstatic.com/firebasejs/4.2.0/firebase.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<link rel="stylesheet"	href="/resources/css/sosscanmain.css">
</head>
<body>
<h1>SoScanner</h1>
<hr>
<div class="paper">
    <div class="paper-content">
To : <input type="text" value="user1" id="username">
        <button id="btnGetMessage" >Help Send</button>
        <textarea autofocus id="message"></textarea> 
    </div>
</div>
    

<script src="https://www.gstatic.com/firebasejs/4.1.1/firebase-app.js"></script>
<script src="https://www.gstatic.com/firebasejs/4.1.1/firebase-database.js"></script>
<script src="https://www.gstatic.com/firebasejs/4.1.1/firebase-messaging.js"></script>
<script src="https://www.gstatic.com/firebasejs/4.2.0/firebase.js"></script>
<script src="/resources/js/notification.js"></script>
<script>
	$(document).ready(function(){
	  $('#user').focus();
	    $('#text').autosize();
	});
</script>
</body>
</html>