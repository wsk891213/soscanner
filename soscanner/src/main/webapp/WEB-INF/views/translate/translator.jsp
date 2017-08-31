<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
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

@media ( max-width : 900px ) {
	#inputtext, #outputtext {
		width: 100%;
		height: 200px;
	}
}

#outputtype {
	margin-top: 5px;
}

#inputtext, #outputtext {
	width: 460px;
	height: 500px;
	border: none;
	border-radius: 10px;
	resize: none;
	padding: 6px;
	color: black;
	font-size: 20px;
	box-shadow: 6px 6px 6px #000;
	padding: 30px;
	border: 1px solid black;
}

#select {
	width: 350px;
}

.fa-refresh {
	font-size: 20px;
}

.fa-microphone {
	font-size: 30px;
	margin-left: 30px;
}

.fa-exchange {
	width: 50px;
	height: 50px;
	font-size: 50px;
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	margin: auto;
}
</style>
<c:import url="/WEB-INF/views/include/basicIncludeTop.jsp"></c:import>
</head>
<body>
	<div>
		<c:import url="/WEB-INF/views/include/navBar.jsp" />
	</div>
	<section class="page-title text-center"
		style="background-image: url(/resources/images/sTranslate.jpg);">
	<div class="container relative clearfix">
		<div class="title-holder">
			<div class="title-text">
				<h1 class="color-white heading-frame">번역기</h1>
				<ol class="breadcrumb">
					<li><a href="/">Home</a></li>
					<li class="active">번역기</li>
				</ol>
			</div>
		</div>
	</div>
	</section>

	<section class="section-wrap-mp pb-0">
	<div class="container">
		<form id="translate">
			<div class="row">

				<div class="col-sm-5">
					<div>
						<table>
							<tr>
								<td id="select"><label> <span class="plain-select">
											<select class="inp" name="input" id="inputtype">
												<option value="ko-KR">한국어</option>
												<option value="en-US">영어</option>
												<option value="cmn-Hans-CN">중국어</option>
										</select>
									</span>
								</label> <span class="fa fa-microphone" aria-hidden="true"
									onclick="eylem()" style="font-size: 30px;"></span></td>
								<td><span class="fa fa-refresh" aria-hidden="true"
									onclick="transalte()" style="font-size: 20px;"> Trnaslate</span></td>
							</tr>
						</table>
					</div>
					<textarea id="inputtext"></textarea>
				</div>

				<div class="col-sm-2" style="position: relative; height: 600px;">
					<span class="fa fa-exchange fa-3" aria-hidden="true" style="font-size: 50px;" onclick="change()"></span>
				</div>
				<div class="col-sm-5">
					<label> <span class="plain-select"> <select
							class="inp" name="output" id="outputtype">
								<option value="ko">한국어</option>
								<option value="en" selected="selected">영어</option>
								<option value="zh-CN">중국어</option>
						</select>
					</span></label>
		<textarea id="outputtext" readonly="readonly"></textarea>
		</form>
	</div>
	</div>
	</div>
	</section>
	<div>
		<c:import url="/WEB-INF/views/include/footer.jsp" />
	</div>
	<c:import url="/WEB-INF/views/include/basicIncludeBottom.jsp"></c:import>
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

		function transalte() {
			var input = $("#inputtype").val();
			
			switch (input) {
			case "ko-KR":
				input = "ko";
				break;
			case "en-US":
				input = "en";
				break;
			case "cmn-Hans-CN":
				input = "zh-CN";
				break;
			}
			if (input ==  $("#outputtype").val()){
			    alert("같은 언어끼리는 번역이 불가능합니다.");
				return false;
			}
			$.ajax({
				url : '/translate/translateok',
				type : 'POST',
				data : {
					text : $("#inputtext").val(),
					input : input,
					output : $("#outputtype").val()
				},
				datatype : 'text'
			}).done(function(result) {
				console.dir(result);
				$("#outputtext").val(result);
			})

		}
		
		function change() {
			$.ajax({
				url: '/translate/change',
				type : 'POST',
				data : {
					input : $("#inputtype").val(),
					output : $("#outputtype").val(),
					intext: $("#inputtext").val(),
					outtext: $("#outputtext").val(),
				},
				datatype : 'text'
			}).done(function(result) {
				$("#inputtype").val(result.input); 
				$("#outputtype").val(result.output);
				$("#inputtext").val(result.intext);
				$("#outputtext").val(result.outtext);
			})
		}
	</script>
</body>
</html>