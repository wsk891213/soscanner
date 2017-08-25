<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/topmenu.css">
<link rel="stylesheet"	href="/resources/css/translate.css">
<style>
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
	#inputtext, #outputtext {
		width: 100%;
		height: 200px;
	}
}

.note {
	width: 600px;
	height: 700px;
	position: relative;
	margin: 20px auto;
}

#options {
	margin: 20px auto; width : 200px;
	text-align: center;
	width: 200px;
}

#card {
	width: 100%;
	height: 100%;
	position: absolute;
	transform-style: preserve-3d;
	transition: transform 1s;
}

#card figure {
	margin: 0;
	display: block;
	position: absolute;
	width: 100%;
	height: 100%;
	backface-visibility: hidden;
}

#card .back {
	transform: rotateY(180deg);
}

#card.flipped {
	transform: rotateY(180deg);
}

/* .paper {
	position: relative;
	width: 90%;
	max-width: 600px;
	min-width: 50px;
	height: 600px;
	margin: 0 auto;
	background: #ececec;
	border-radius: 10px;
	box-shadow: 0 2px 8px rgba(0, 0, 0, .3);
	overflow: hidden;
}

.paper:before {
	content: '';
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	width: 60px;
	background: radial-gradient(#575450 6px, transparent 7px) repeat-y;
	background-size: 30px 30px;
	border-right: 3px solid #D44147;
	box-sizing: border-box;
}

.paper-content {
	position: absolute;
	top: 30px;
	right: 0;
	bottom: 30px;
	left: 60px;
	background: linear-gradient(transparent, transparent 28px, #91D1D3 28px);
	background-size: 30px 30px;
}

.paper-content textarea {
	width: 100%;
	max-width: 100%;
	height: 100%;
	max-height: 100%;
	line-height: 30px;
	padding: 0 10px;
	border: 0;
	outline: 0;
	background: transparent;
	color: mediumblue;
	font-weight: bold;
	font-size: 18px;
	box-sizing: border-box;
	z-index: 1;
} */

#inputtext, #outputtext {
	width: 500px;
	height: 500px;
	border: none;
	border-radius: 5px;
	resize: none;
	padding: 6px;
	border: 1px solid black;
}

#outputtype {
	margin-top: 5px;
}

</style>
</head>
<body>
	<div>
		<c:import url="/WEB-INF/views/include/topMenu.jsp" />
	</div>
	<div class="container">
	<div class="title">
		<h1>번역</h1>
	</div>
	<!-- 
	<form id="translate">
		<div>
			<select name="input" id="inputtype">
				<option value="ko-KR">한국어</option>
				<option value="en-US">영어</option>
				<option value="cmn-Hans-CN">중국어</option>
			</select> <img src="../../resources/images/번역.JPG"> <select
				name="output" id="outputtype">
				<option value="ko">한국어</option>
				<option value="en">영어</option>
				<option value="zh-CN">중국어</option>
			</select>
			<button onclick="eylem()" type="button">
				<img src="../../resources/images/mic.JPG">
			</button>
		</div>
		<div id="card">
			<figure class="front">
			<div class="paper">
				<div class="paper-content">
					<textarea autofocus id="inputtext"></textarea>
				</div>
			</div>
			</figure>
	</form>
	<figure class="back">
	<div class="paper">
		<div class="paper-content">
			<textarea autofocus id="outputtext"></textarea>
		</div>
	</figure> </section>
	<button type="button" id="submit">
		<img src="../../resources/images/번역.JPG">
	</button>
	 -->
		<div id="jb-content">
			<form id="translate">

				<div class="paper">

					<div class="paper-content">
						<select name="input" id="inputtype">
							<option value="ko-KR">한국어</option>
							<option value="en-US">영어</option>
							<option value="cmn-Hans-CN">중국어</option>
						</select>
						<button onclick="eylem()" type="button">
							<img src="../../resources/images/mic.JPG">
						</button>
						<textarea autofocus id="inputtext"></textarea>
					</div>
				</div>

				<div>
					<button type="submit" id="submit">
						<img src="../../resources/images/번역.JPG">
					</button>
				</div>
		</div>
		</form>

		<div id="jb-sidebar">
			<div class="paper">
				<div class="paper-content">
					<select name="output" id="outputtype">
						<option value="ko">한국어</option>
						<option value="en">영어</option>
						<option value="zh-CN">중국어</option>
					</select>

					<textarea autofocus id="outputtext"></textarea>
				</div>
			</div>
		</div>
	</div>
	</div>
	<div>
		<c:import url="/WEB-INF/views/include/footer.jsp" />
	</div>

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
		$("#submit").on('click', function(e) {
			$('#card').toggleClass('flipped');
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