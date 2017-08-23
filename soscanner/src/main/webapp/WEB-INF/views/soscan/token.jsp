<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<script src="https://www.gstatic.com/firebasejs/4.3.0/firebase.js"></script>
	<script src="https://www.gstatic.com/firebasejs/4.3.0/firebase-app.js"></script>
	<script
		src="https://www.gstatic.com/firebasejs/4.3.0/firebase-messaging.js"></script>
	<script>

var config = {
	    apiKey: "AIzaSyCCz1QBgdGHOMtDsNBuVdP0vV4AEzMWSwQ",
	    authDomain: "fmc-test-1efbc.firebaseapp.com",
	    databaseURL: "https://fmc-test-1efbc.firebaseio.com",
	    projectId: "fmc-test-1efbc",
	    storageBucket: "fmc-test-1efbc.appspot.com",
	    messagingSenderId: "117555202324"
	  };
	  firebase.initializeApp(config);

	  const messaging = firebase.messaging();

</script>
</body>
</html>