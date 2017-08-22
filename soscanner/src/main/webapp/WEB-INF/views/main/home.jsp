<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

body {
	background-color: black;
	color: black;
	background: black;
}

</style>
<link rel="stylesheet"	href="/resources/css/home.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
</html>