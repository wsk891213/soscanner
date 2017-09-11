<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
					<h1 class="color-white heading-frame">번역기</h1>
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
	            		    	  <a  data-toggle="tab" id="ko-KR" >한국어</a>
	            		    	</li>
				           	     <li class="" id="en-USi">
				                  <a data-toggle="tab" id="en-US" > 영어</a>
				                </li>
				                <li class="" id="cmn-Hans-CNi">
				                  <a data-toggle="tab" id="cmn-Hans-CN">중국어</a>
				                </li>
			        	      </ul>
							</div>
							<div class="modal-body" contentEditable=true id="inputtext" readonly="readonly"></div>
							<div class="modal-footer">
							<span class="fa" id="cicon" aria-hidden="true" onclick="transalte()" style="font-size: 30px; margin-left: 20px; float: right; margin-top: 2px;" >
							Translate</span>
							<span class="fa fa-microphone" id="mic" aria-hidden="true" onclick="eylem()" style="font-size: 40px; float: left; "><div id="micdiv"></div></span>
							</div>
					</div>


				<div class="col-sm-2" id="change">
					<span class="fa fa-exchange fa-3" id="changebutton" aria-hidden="true" onclick="change()"></span>
				</div>
				<div class="col-sm-5" id="modal">
					<div class="modal-header" >
							<ul class="nav nav-tabs" id="outputtype">
	           			    	 <li id="koo" class="">
	            		    	  <a  data-toggle="tab" id="ko">한국어</a>
	            		    	</li >
				           	     <li id="eno" class="active"> 
				                  <a data-toggle="tab" id="en">영어</a>
				                </li >
				                <li id="zh-CNo" class="">
				                  <a data-toggle="tab" id="zh-CN">중국어</a>
				                </li>
			        	      </ul>
					</div>
					<div class="modal-bdoy" id="outputtext" readonly="readonly"></div>
					<div class="modal-footer"></div>
				</div>
			</div>
		</form>
	</div>
	</section>

	<!-- The Modal -->
	<!-- 
	<div id="myModal" class="modal">
		<div class="modal-dialog">
			Modal content
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Speak</h4>
				</div>
				<div class="modal-body">
					<img src="../../resources/images/talking.png">
				</div>
			</div>
		</div>
	</div>
	 -->

	<div>
		<c:import url="/WEB-INF/views/include/footer.jsp" />
	</div>
	<c:import url="/WEB-INF/views/include/basicIncludeBottom.jsp"></c:import>
	<script>
		$(function () {
	 	   $('[data-toggle="popover"]').popover()
	 	 })
	
		var modal = document.getElementById('myModal');

		var span = document.getElementsByClassName("close")[0];

		var input = "ko";
		
		$("#ko-KR").on("click", function () {
			input = "ko"
		})
		$("#en-US").on("click", function () {
			input = "en"
		})
		$("#cmn-Hans-CN").on("click", function () {
			input = "zh-CN"
		})
		
		var output = "en";
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
			$(document).ready(function(){
			 $('#mic').popover({
		            trigger: "click",
		            html: true,
		            content: '<a class="close">&times;</a><br><div id = \"image"><img src = "../../resources/images/talking.png" style="width:100px;" /><br>말하세요</div>',
		            placement:'top'
				}).click(function(e) {
				    $(this).popover('toggle');
				    e.stopPropagation();
				});
			 	$(document).on("click", ".close" , function(){
			        $(this).parents(".popover").popover('hide');
			    });
			});
		
		function eylem() {
			//음성인식
			console.log(input);
			var lang = input;
			var ses = new webkitSpeechRecognition();
			ses.lang = lang;
			ses.continuous = false;
			ses.interimResults = false;
		 
			ses.onend = function (e) {
				alert("다시 말하세요");
				$(".popover-content").popover('hide');
			};
			
			ses.onresult = function(e) {
				if (event.results.length > 0) {
					sonuc = event.results[event.results.length - 1];
					if (sonuc.isFinal) {
						$("#inputtext").val(sonuc[0].transcript);
					}
					//modal.style.display = "none";
					$(this).parents(".popover").popover('hide');
				}
			}
			ses.start();
			return false;
		}
		
		function transalte() {
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
					text : $("#inputtext").html(),
					input : input,
					output : output
				},
				datatype : 'text'
			}).done(function(result) {
				$("#outputtext").html(result);
			})

		}

		
		function change() {
			
			
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
				console.log("처음 input: " + input);
				if (input == "ko"){
					input = "ko-KR"
				}
				if (input == "en"){
					input = "en-US"
				}
				if (input == "zh-CN"){
					input = "cmn-Hans-CN"
				}
				console.log("result.output: " + result.output);
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
	</script>
</body>
</html>