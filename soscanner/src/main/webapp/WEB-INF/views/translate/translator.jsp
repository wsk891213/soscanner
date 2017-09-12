<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE>
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
		width: 50%;
		height: 200px;
	}
}

#outputtype {
	margin-top: 5px;
}

#inputtext, #outputtext{
	width: 100%;
	height: 400px;
	/* border: none;
	border-radius: 10px; */
	resize: none;
	padding: 6px;
	color: black;
	font-size: 20px;
	padding: 30px;
	border: 1px solid black;
	background-color: white;
}

#select {
	width: 350px;
}

.fa-refresh {
	font-size: 20px;
}

.fa-refresh:hover {
	color: black;
	font-size: 50px;
}

.fa-microphone:hover {
	color: black;
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

.fa-exchange:hover {
	color: black;
}
.fa-trash:hover {
	color: black;
}
#cicon:hover {
	color: black;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	padding-top: 100px; /* Location of the box */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
	background-color: #fefefe;
	margin: auto;
	padding: 20px;
	border: 1px solid #888;
	width: 30%;
}

#change {
	position: relative;
	height: 600px;
}

#changebutton {
	font-size: 40px;
	float: right;
}

@media ( max-width : 900px ) {
	#inputtext, #outputtext {
		width: auto;
		height: 100px;
	}
	#change {
		width: auto;
		height: 50px;
	}
	#select {
		width: auto;
	}
	.fa-microphone {
		margin-left: 10px;
		margin-right: 10px;
	}
	#changebutton {
		font-size: 30px;
	}
	#modal {
		width: 92%;
		margin-left: 15px;
		margin-bottom: 20px;
	}
	#inputtype  > li, #outputtype  > li{
		width: 33%;
		text-align: center;
	}
	#cicon, .fa-microphone{
		font-size: 20px;
	}
}

#modal {
	border: 1px solid black;
	border-radius: 10px;
	background-color: #f4f4f4;
}

/* .popover fade top in {
	top: 354px !important;
	left: -7px;
	display: block;
} */


 




</style>
<c:import url="/WEB-INF/views/include/basicIncludeTop.jsp"></c:import>
</head>
<body>
	<div>
		<c:import url="/WEB-INF/views/include/navBar.jsp" />
	</div>
	
	<section class="page-title text-center" style="background-image: url(/resources/images/sTranslate.jpg);">
		<div class="container relative clearfix">
			<div class="title-holder">
				<div class="title-text">
					<h1 class="color-white heading-frame"><spring:message code="translate.translator.line234"/></h1>
				</div>
			</div>
		</div>
	</section>
	
	<section class="section-wrap-mp pb-0">
		
		<div class="container">
			
			<form id="translate">
				<div class="row">
					<div class="col-sm-5" id="modal">
							<div class="modal-header" >
								<ul class="nav nav-tabs" id="inputtype">
	           			    	 <li class="active" id="ko-KRi">
	            		    	  <a  data-toggle="tab" id="ko-KR" ><spring:message code="translate.translator.line250"/></a>
	            		    	</li>
				           	     <li class="" id="en-USi">
				                  <a data-toggle="tab" id="en-US" ><spring:message code="translate.translator.line253"/></a>
				                </li>
				                <li class="" id="cmn-Hans-CNi">
				                  <a data-toggle="tab" id="cmn-Hans-CN"><spring:message code="translate.translator.line256"/></a>
				                </li>
			        	      </ul>
							</div>
							<div class="modal-body" contentEditable=true id="inputtext" readonly="readonly"></div>
							
							
							
							<div class="modal-footer">
							<span class="fa" id="cicon" aria-hidden="true" onclick="transalte()" style="font-size: 30px; margin-left: 20px; float: right; margin-top: 2px;" ><spring:message code="translate.translator.line265"/></span>
							<span class="fa fa-microphone" id="mic" aria-hidden="true" onclick="eylem()" style="font-size: 40px; float: left;">							
							</span>
							</div>
					</div>

				<div class="col-sm-2" id="change">
					<span class="fa fa-exchange fa-3" id="changebutton" aria-hidden="true" onclick="change()"></span>
				</div>
				<div class="col-sm-5" id="modal">
					<div class="modal-header" >
							<ul class="nav nav-tabs" id="outputtype">
	           			    	 <li id="koo" class="">
	            		    	  <a  data-toggle="tab" id="ko"><spring:message code="translate.translator.line278"/></a>
	            		    	</li >
				           	     <li id="eno" class="active"> 
				                  <a data-toggle="tab" id="en"><spring:message code="translate.translator.line281"/></a>
				                </li >
				                <li id="zh-CNo" class="">
				                  <a data-toggle="tab" id="zh-CN"><spring:message code="translate.translator.line284"/></a>
				                </li>
			        	      </ul>
					</div>
					<div class="modal-bdoy" id="outputtext" readonly="readonly"></div>
					<div class="modal-footer">
						<span class="fa fa-trash" id="trash" aria-hidden="true" onclick="clean()" style="font-size: 40px; float: right;"></span>
					</div>
				</div>
			</div>
		</form>
	</div>
	</section>
	<div>
		<c:import url="/WEB-INF/views/include/footer.jsp" />
	</div>
	<c:import url="/WEB-INF/views/include/basicIncludeBottom.jsp"></c:import>
	<script>
		var input = "ko";
		var output = "en";
		$("#ko-KR").on("click", function () {
			input = "ko"
		})
		$("#en-US").on("click", function () {
			input = "en"
		})
		$("#cmn-Hans-CN").on("click", function () {
			input = "zh-CN"
		})
		$("#ko").on("click", function () {
			output = "ko"
		})
		$("#en").on("click", function () {
			output = "en"
		})
		$("#zh-CN").on("click", function () {
			output = "zh-CN"
		})
		
		//팝오버
		$(function () {
			$('[data-toggle="popover"]').popover()
	 	})
		$('#changebutton').popover({
		        trigger: "hover",
		        content: '양쪽값 변경',
		        placement:'top'
		});
		$('#trash').popover({
		        trigger: "hover",
		        content: '비우기',
		        placement:'top'
		});
		$('#mic').popover({
		        trigger: "click",
		        html: true,
		        content: '<div style=\'width:100px; height:120px;float:left;\'><img src = "../../resources/images/talking.png" style="position:relative;height=80px;width:80px;"/><br><h3>말하세요</h3></div>',
		        placement:'top'
		}).click(function(e) {
		    $(this).popover('toggle');
		    e.stopPropagation();
		    e.preventDefault();
		});
		
		//음성인식
		function eylem() {
			if (input == "ko"){
				input = "ko-KR"
			}
			if (input == "en"){
				input = "en-US"
			}
			if (input == "zh-CN"){
				input = "cmn-Hans-CN"
			}
			
			var lang = input;
			var ses = new webkitSpeechRecognition();
			ses.lang = lang;
		 	var con = 0;
			
			ses.onresult = function(e) {
				if (event.results.length > 0) {
					sonuc = event.results[event.results.length - 1];
					if (sonuc.isFinal) {
						$("#inputtext").html(sonuc[0].transcript);
						con++;
						console.log(con);
					}
					$("#mic").popover('hide');
				}
			}
			ses.onend = function (e) {
				$("#mic").popover('hide');
				if(con == 0){
					alert("인식되지 않았습니다. \n다시 시도해주세요");
				}
			};
			ses.start();
			return false;
		}
		
		// 번역
		function transalte() {
			console.log(input);
			console.log(output);
			var inputtext = $("#inputtext").html();
			if (input == "ko-KR"){
				input = "ko"
			}
			if (input == "en-US"){
				input = "en"
			}
			if (input == "cmn-Hans-CN"){
				input = "zh-CN"
			}
			if($("#inputtext").html().indexOf("<") != -1){
				alert("엔터키는 사용할수 없습니다.");
				$("#inputtext").html("");
				return false;
			}
			
			if ($("#inputtext").html() == "") {
				alert("글을 입력하세요");
				return false;
			}
			if (input == output) {
				alert("같은 언어끼리는 번역이 불가능합니다.");
				return false;
			}
			if ((input == "en" && output == "zh-CN") || (input == "zh-CN" && output == "en")) {
				alert("영어 <-> 중극어는 지원하지않습니다");
				return false;
			}
			$.ajax({
				url : '/translate/translateok',
				type : 'POST',
				data : {
					text : inputtext,
					input : input,
					output : output
				},
				datatype : 'text'
			}).done(function(result) {
				$("#outputtext").html(result);
			})

		}

		//양옆 변환
		function change() {
			// 음성인식후 바로 양옆 변환시 오류
			if (input == "ko-KR"){
				input = "ko"
			}
			if (input == "en-US"){
				input = "en"
			}
			if (input == "cmn-Hans-CN"){
				input = "zh-CN"
			}
			if (output == "ko-KR"){
				output = "ko"
			}
			if (output == "en-US"){
				output = "en"
			}
			if (output == "cmn-Hans-CN"){
				output = "zh-CN"
			}
			
			$.ajax({
				url : '/translate/change',
				type : 'POST',
				data : {
					input : input,
					output : output,
					intext : $("#inputtext").html(),
					outtext : $("#outputtext").html(),
				},
				datatype : 'text'
			}).done(function(result) {
				if (input == "ko"){
					input = "ko-KR"
				}
				if (input == "en"){
					input = "en-US"
				}
				if (input == "zh-CN"){
					input = "cmn-Hans-CN"
				}
				
				var or = "";
				if (result.output == "ko"){
					or = "ko-KR"
				}
				if (result.output == "en"){
					or = "en-US"
				}
				if (result.output == "zh-CN"){
					or = "cmn-Hans-CN"
				}
				
				var ii = "#"+ input + "i";
				var oo = "#"+ or + "i";
				var oi = "#"+ output + "o";
				var io = "#"+ result.input + "o";
				
				$(ii).removeClass("active");
				$(oi).removeClass("active");
				$(io).addClass("active");
				$(oo).addClass("active");
				input = output;
				output = result.input;
				$("#inputtext").html(result.intext);
				$("#outputtext").html(result.outtext);
				
			})
		}
		
		function clean() {
			$("#inputtext").html("");
			$("#outputtext").html("");
		}
	</script>
</body>
</html>