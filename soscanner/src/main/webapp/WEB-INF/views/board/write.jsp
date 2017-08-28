<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script
  src="https://code.jquery.com/jquery-3.2.1.js"
  integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE="
  crossorigin="anonymous"></script>
</head>
<body>
	<div id="countarea"></div>
	<script>
	var count = 3;
	
	function countdown(){
		setTimeout(function() {
			$("#countarea").html(count-- + "후에 옮겨짐")
			countdown();
			if(count == 0) {
				location.replace("list");
			}
			
		}, 1000);
	}
	countdown();
	</script>
</body>
</html>