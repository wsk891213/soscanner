<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/topmenu.css">
<link rel="stylesheet" href="/resources/css/translate.css">
<style>
*:before, *:after {
	-moz-box-sizing: inherit;
	-webkit-box-sizing: inherit;
	-ms-box-sizing: inherit;
	box-sizing: inherit;
}

.plain-select {
	display: inline-block;
	vertical-align: middle;
	position: relative;
	width: 150px;
}

.plain-select select {
	line-height: normal;
	height: 38px;
	-webkit-appearance: none;
	-moz-appearance: none;
	-ms-appearance: none;
	appearance: none;
	width: 200px;
	border-radius: 6px;
	display: block;
	width: 100%;
	border: 1px solid #c8c8c8;
	background: #fff url(images/inpbg.png) repeat-x 0 0;
	color: black;
	padding: 8px 20px 7px 10px;
	margin: 0;
	line-height: normal;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border-radius: 2px;
}

.ie8 .plain-select select {
	padding-right: 3px
}

.plain-select select:focus {
	background: #f9f9f9;
	outline: none;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.3), inset 0 0 7px
		rgba(100, 100, 100, 0.3);
	border-color: #00c0f3;
}

.plain-select ::-ms-expand {
	display: none;
}

.plain-select:after {
	content: "";
	position: absolute;
	z-index: 2;
	right: 8px;
	top: 50%;
	margin-top: -3px;
	height: 0;
	width: 0;
	border-top: 6px solid #f99300;
	border-left: 6px solid transparent;
	border-right: 6px solid transparent;
	pointer-events: none;
}

label {
	display: block
}

.label-stacked {
	display: block;
	color: #505050;
	padding: 10px 0 7px 2px;
	font-size: 14px;
	font-weight: bold;
	line-height: 1.1;
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
	margin: 20px auto;
	width: 200px;
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

textarea:focus {
	background: none repeat scroll 0 0 #FFFFFF;
	outline-width: 0;
}

#inputtext, #outputtext {
	width: 500px;
	height: 500px;
	border: none;
	border-radius: 10px;
	resize: none;
	padding: 6px;
	background: #cccfd6;
	color: black;
	font-size: 20px;
	box-shadow: 12px 12px 20px #000;
	padding: 30px;
}

#outputtype {
	margin-top: 5px;
}

.backimage {
	background: url("/resources/images/translatepic1.jpg");
	background-size: cover;
	width: 100%;
	height: 250px;
	text-align: center;
	line-height: 550px;
	font-size: 60px;
	color: black;
}






.tH1 {
	font-size: 60px;
}
.tBtn {
	background-color: #999999; /* Green */
	border: none;
	border-radius: 10px;
	color: white;
	padding: 10px 23px;
	text-align: center;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
	float: left;
}

#btndiv {
	display: inline;
	float: left;
}

div.backimage hgroup {
    padding-top: 50px;
}

div.backimage {
    margin-bottom: 30px;
}


</style>
</head>
<body>
	<div>
		<c:import url="/WEB-INF/views/include/topMenu.jsp" />
	</div>
	<div class="backimage">
		<hgroup>
		<h1 class="tH1"><i><b>Translation Service</b></i></h1>
		<h3><b>Real-time interpreter</b></h3>
		</hgroup>
	</div>
	<div class="container">
		<div id="jb-content">
			<form id="translate">
				<label> <span class="plain-select"> <select
						class="inp" name="input" id="inputtype">
							<option value="ko-KR">한국어</option>
							<option value="en-US">영어</option>
							<option value="cmn-Hans-CN">중국어</option>
					</select>
				</span>
				</label>
				<div class="btndiv">
					<button onclick="eylem()" type="button" class="tBtn">
						<b>Voice</b>
					</button>
				</div>
				<div class="btndiv">
					<button type="submit" id="submit" class="tBtn">
						<b>Translation</b>
					</button>
				</div>
				<br> <br> <br>
				<textarea autofocus id="inputtext"></textarea>
			</form>
		</div>

		<div id="jb-sidebar">
			<label> <span class="plain-select"> <select
					class="inp" name="output" id="outputtype">
						<option value="ko">한국어</option>
						<option value="en">영어</option>
						<option value="zh-CN">중국어</option>
				</select>
			</span></label> <br> <br> <br> <br>
			<textarea autofocus id="outputtext"></textarea>
		</div>

	</div>
	<br>
	<br>
	<br>
	
	
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