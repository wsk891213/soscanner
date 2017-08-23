<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/topmenu.css">
<style>
#inputtext, #outputtext{
	width: 400px;
	height : 400px;
}

#jb-content {
	width: 400px;
	padding: 20px;
	float: left;
}

#jb-sidebar {
	width: 400px;
	padding: 20px;
	float: right;
}

#jb-center {
	width: 100px;
	padding: 20px;
}
#title {
	text-align: center;
}

@media ( max-width : 900px ) {
	#jb-container {
		width: auto;
	}
	#jb-content {
		float: none;
		width: auto;
	}
	#jb-sidebar {
		float: none;
		width: auto;
	}
	#inputtext, #outputtext  
	{
		width: 100%;
		height: 200px;
	}
}
</style>
</head>
</head>
<body>
	<div>
		<c:import url="/WEB-INF/views/include/topMenu.jsp" />
	</div>
	<div class="container">
		<div id="title">
			<h1>번역</h1>
		</div>
	
		<div id="jb-content">
	
		<div>
			<select name="input" id="inputtype">
				<option value="ko-KR">한국어</option>
				<option value="en-US">영어</option>
				<option value="cmn-Hans-CN">중국어</option>
			</select>
		</div>
		
		<div>
			<textarea id="inputtext"></textarea>
		</div>
		
		<div>
			<button onclick="eylem()" type="button">
				<img src="../../resources/images/mic.JPG">
			</button>
			<button type="submit" id="submit">
				<img src="../../resources/images/번역.JPG">
			</button>
		</div>
		</div>
		
		<div id="jb-sidebar">
		<div>
			<select name="output" id="outputtype">
				<option value="ko">한국어</option>
				<option value="en">영어</option>
				<option value="zh-CN">중국어</option>
			</select>
		</div>
		
		<div>
			<textarea id="outputtext"></textarea>
		</div>
	</div>
	</div>
		<form id="translate">
										
			
		</form>
										

	<script>
		function eylem() {
			var lang = $("#inputtype").val();
			var ses = new webkitSpeechRecognition();
			ses.lang = lang;
			ses.onresult = function(e) {
				if (event.results.length > 0) {
					sonuc = event.results[event.results.length - 1];
					if (sonuc.isFinal) {
						$("textarea").val(sonuc[0].transcript);
					}
				}
			}
			ses.start();
			return false;
		}
		$("#translate").submit(function(e) {

			e.preventDefault();
			$.ajax({
				url : '/translate/translateok',
				type : 'POST',
				data : {
					text : $("#inputtext").val(),
					input : $("#inputtype").val(),
					output : $("#outputtype").val()
				},
				datatype : 'text'
			}).done(function(result) {

				$("#outputtext").html(result);
			})

		});
	</script>
</body>
</html>