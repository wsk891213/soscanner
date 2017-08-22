<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
</head>
<body>
	<div>
		<c:import url="/WEB-INF/views/include/topMenu.jsp" />
	</div>
	<div class="carousel fade-carousel slide" data-ride="carousel" data-interval="4000" id="bs-carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#bs-carousel" data-slide-to="0" class="active"></li>
			<li data-target="#bs-carousel" data-slide-to="1"></li>
			<li data-target="#bs-carousel" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner">
			<div class="item slides active">
				<div class="slide-1"></div>
				<div class="hero">
					<hgroup>
					<h1>관광지정보</h1>
					<h3>서울의 관광지와 맛집을 한눈에 보여주기</h3>
					</hgroup>
					<button class="btn btn-hero btn-lg" role="button">관광지정보
						바로가기</button>
				</div>
			</div>
			<div class="item slides">
				<div class="slide-2"></div>
				<div class="hero">
					<hgroup>
					<h1>SOScaner</h1>
					<h3>위기의 순간 당신을 도와줄게요</h3>
					</hgroup>
					<button class="btn btn-hero btn-lg" role="button">SOScaner
						바로가기</button>
				</div>
			</div>
			<div class="item slides">
				<div class="slide-3"></div>
				<div class="hero">
					<hgroup>
					<h1>번역기</h1>
					<h3>영어, 중국어, 한국어 등의 언어를 번역해 줍니다.</h3>
					</hgroup>
					<button class="btn btn-hero btn-lg" role="button">번역기 바로가기</button>
				</div>
			</div>
		</div>
	</div>
<div class="container" id="con">
	<div class="row">
		<h1>국가별 게시판</h1>
	</div>
</div>
<div class="carousel-reviews broun-block">
    <div class="container">
        <div class="row">
            <div id="carousel-reviews" class="carousel slide" data-ride="carousel">
            
                <div class="carousel-inner">
                    <div class="item active">
                	    <div class="col-md-4 col-sm-6">
        				    <div class="block-text rel zmin">
						        <a title="" href="#">한국좋아요</a><br><br><br>
						        <p>하루 종일 붙어 다니자 길 고양이들처럼너는 매일 설레야 돼처음 만난 것처럼난 저 다른 놈들처럼가방 귀걸이 목걸이 반지그딴 건 뻔해서이 노래를 선물하지잘 맞아 우린 난리 났지안 닮아 내 마음 계속 새것 같지 </p>
							    <ins class="ab zmin sprite sprite-i-triangle block"></ins>
					        </div>
							<div class="person-text rel">
							</div>
						</div>
            			<div class="col-md-4 col-sm-6 hidden-xs">
						    <div class="block-text rel zmin">
						        <a title="" href="#">Hello</a><br><br><br>
						        <p>하루 종일 붙어 다니자 길 고양이들처럼너는 매일 설레야 돼처음 만난 것처럼난 저 다른 놈들처럼가방 귀걸이 목걸이 반지그딴 건 뻔해서이 노래를 선물하지잘 맞아 우린 난리 났지안 닮아 내 마음 계속 새것 같지 </p>
					            <ins class="ab zmin sprite sprite-i-triangle block"></ins>
				            </div>
							<div class="person-text rel">
							</div>
						</div>
						<div class="col-md-4 col-sm-6 hidden-sm hidden-xs">
							<div class="block-text rel zmin">
								<a title="" href="#">니찌밤 짜올라</a><br><br><br>
						        <p>하루 종일 붙어 다니자 길 고양이들처럼너는 매일 설레야 돼처음 만난 것처럼난 저 다른 놈들처럼가방 귀걸이 목걸이 반지그딴 건 뻔해서이 노래를 선물하지잘 맞아 우린 난리 났지안 닮아 내 마음 계속 새것 같지 </p>
								<ins class="ab zmin sprite sprite-i-triangle block"></ins>
							</div>
							<div class="person-text rel">
							</div>
						</div>
                    </div>
                    <div class="item">
                        <div class="col-md-4 col-sm-6">
        				    <div class="block-text rel zmin">
						        <a title="" href="#">Hercules</a><br><br><br>
						        <p>하루 종일 붙어 다니자 길 고양이들처럼너는 매일 설레야 돼처음 만난 것처럼난 저 다른 놈들처럼가방 귀걸이 목걸이 반지그딴 건 뻔해서이 노래를 선물하지잘 맞아 우린 난리 났지안 닮아 내 마음 계속 새것 같지 </p>
							    <ins class="ab zmin sprite sprite-i-triangle block"></ins>
					        </div>
							<div class="person-text rel">
							</div>
						</div>
            			<div class="col-md-4 col-sm-6 hidden-xs">
						    <div class="block-text rel zmin">
						        <a title="" href="#">투레투레</a><br><br><br>
						        <p>하루 종일 붙어 다니자 길 고양이들처럼너는 매일 설레야 돼처음 만난 것처럼난 저 다른 놈들처럼가방 귀걸이 목걸이 반지그딴 건 뻔해서이 노래를 선물하지잘 맞아 우린 난리 났지안 닮아 내 마음 계속 새것 같지 </p>
					            <ins class="ab zmin sprite sprite-i-triangle block"></ins>
				            </div>
							<div class="person-text rel">
							</div>
						</div>
						<div class="col-md-4 col-sm-6 hidden-sm hidden-xs">
							<div class="block-text rel zmin">
								<a title="" href="#">니하오</a><br><br><br>
						        <p>하루 종일 붙어 다니자 길 고양이들처럼너는 매일 설레야 돼처음 만난 것처럼난 저 다른 놈들처럼가방 귀걸이 목걸이 반지그딴 건 뻔해서이 노래를 선물하지잘 맞아 우린 난리 났지안 닮아 내 마음 계속 새것 같지 </p>
								<ins class="ab zmin sprite sprite-i-triangle block"></ins>
							</div>
							<div class="person-text rel">
							</div>
						</div>
                    </div>
                </div>
                <a class="left carousel-control" href="#carousel-reviews" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#carousel-reviews" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
        </div>
    </div>
</div>
<div>
		<c:import url="/WEB-INF/views/include/footer.jsp" />
	</div>
</body>
<style>
}

.fade-carousel {
	position: relative;
	height: 80vh;
}

.fade-carousel .carousel-inner .item {
	height: 80vh;
}

.fade-carousel .carousel-indicators>li {
	margin: 0 2px;
	background-color: #f39c12;
	border-color: #f39c12;
	opacity: .7;
}

.fade-carousel .carousel-indicators>li.active {
	width: 10px;
	height: 10px;
	opacity: 1;
}

.hero {
	position: absolute;
	top: 50%;
	left: 50%;
	z-index: 3;
	color: #fff;
	text-align: center;
	text-transform: uppercase;
	text-shadow: 1px 1px 0 rgba(0, 0, 0, .75);
	-webkit-transform: translate3d(-50%, -50%, 0);
	-moz-transform: translate3d(-50%, -50%, 0);
	-ms-transform: translate3d(-50%, -50%, 0);
	-o-transform: translate3d(-50%, -50%, 0);
	transform: translate3d(-50%, -50%, 0);
}

.hero h1 {
	font-size: 6em;
	font-weight: bold;
	margin: 0;
	padding: 0;
}

.fade-carousel .carousel-inner .item .hero {
	opacity: 0;
	-webkit-transition: 2s all ease-in-out .1s;
	-moz-transition: 2s all ease-in-out .1s;
	-ms-transition: 2s all ease-in-out .1s;
	-o-transition: 2s all ease-in-out .1s;
	transition: 2s all ease-in-out .1s;
}

.fade-carousel .carousel-inner .item.active .hero {
	opacity: 1;
	-webkit-transition: 2s all ease-in-out .1s;
	-moz-transition: 2s all ease-in-out .1s;
	-ms-transition: 2s all ease-in-out .1s;
	-o-transition: 2s all ease-in-out .1s;
	transition: 2s all ease-in-out .1s;
}

.overlay {
	position: absolute;
	width: 100%;
	height: 100%;
	z-index: 2;
	opacity: .7;
}

.btn.btn-lg {
	padding: 10px 40px;
}

.btn.btn-hero, .btn.btn-hero:hover, .btn.btn-hero:focus {
	color: #f5f5f5;
	background-color: #1abc9c;
	border-color: #1abc9c;
	outline: none;
	margin: 20px auto;
}

.fade-carousel .slides .slide-1, .fade-carousel .slides .slide-2,
	.fade-carousel .slides .slide-3, .fade-carousel .slides .slide-4 {
	height: 80vh;
	background-size: cover;
	background-position: center center;
	background-repeat: no-repeat;
}

.fade-carousel .slides .slide-1 {
	background-image: url(resources/images/광화문.jpg);
}

.fade-carousel .slides .slide-2 {
	background-image: url(resources/images/비상.jpg);
}
.fade-carousel .slides .slide-3 {
	background-image: url(resources/images/통역.jpg);
}


@media screen and (min-width: 980px) {
	.hero {
		width: 980px;
	}
}

@media screen and (max-width: 640px) {
	.hero h1 {
		font-size: 4em;
	}
}

body {
	background-color: #f5f5f5;
}









.carousel-control.left,.carousel-control.right  {background:#f8f8f8;width:25px;}
.carousel-control.left {left:-25px;}
.carousel-control.right {right:-25px;}
.broun-block {
    padding-bottom: 34px;
}
.block-text {
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0 3px 0 #2c2222;
    color: #626262;
    font-size: 14px;
    margin-top: 27px;
    padding: 15px 18px;
}
.block-text a {
 color: #7d4702;
    font-size: 25px;
    font-weight: bold;
    line-height: 21px;
    text-decoration: none;
    text-shadow: 0 1px 2px rgba(0, 0, 0, 0.3);
}
.mark {
    padding: 12px 0;background:none;
}
.block-text p {
    color: #585858;
    font-family: Georgia;
    font-style: italic;
    line-height: 20px;
}

.sprite-i-triangle {
    background-position: 0 -1298px;
    height: 44px;
    width: 50px;
}
.block-text ins {
    bottom: -44px;
    left: 50%;
    margin-left: -60px;
}


.block {
    display: block;
}
.zmin {
    z-index: 1;
}
.ab {
    position: absolute;
}

.person-text {
    padding: 10px 0 0;
    text-align: center;
    z-index: 2;
}
.person-text a {
    color: #ffcc00;
    display: block;
    font-size: 14px;
    margin-top: 3px;
    text-decoration: underline;
}
.person-text i {
    color: #fff;
    font-family: Georgia;
    font-size: 13px;
}
.rel {
    position: relative;
}

div.row h1 {
    margin-top: 70px;
}


</style>

</body>
</html>