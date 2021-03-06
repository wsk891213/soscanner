<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<title>관광정보</title>
<c:import url="/WEB-INF/views/include/basicIncludeTop.jsp"></c:import>
<script language="javascript" src="https://apis.skplanetx.com/tmap/js?version=1&format=javascript&appKey=f9c5ac44-024a-3ddb-9828-c6e7f0d42b86&sensor=false&language=en"></script>
<script type="text/javascript">
var map;
var mapW, mapH;     // 지도의 가로, 세로 크기(Pixel단위) 를 지정 합니다. 
var LonLat, zoom;      //중심 좌표와 지도레벨을 정의 합니다. 
var coords = function (){
	var pr_3857 = new Tmap.Projection("EPSG:3857");
	var pr_4326 = new Tmap.Projection("EPSG:4326");
	var coordX = ${tourInfoVO.ti_mapx};	// db에서 받아온 x좌표
	var coordY = ${tourInfoVO.ti_mapy};	// db에서 받아온 y좌표
	
	return new Tmap.LonLat(coordX, coordY).transform(pr_4326, pr_3857);
};

function setVariables(){
	var coord = coords();
	//EPSG3857 좌표계 형식
    LonLat = new Tmap.LonLat(coord.lon, coord.lat);  
    zoom = 16;  // zoom level입니다.  0~19 레벨을 서비스 하고 있습니다. 
    mapW = '945px';  // 지도의 가로 크기 입니다. 
    mapH = '400px';  // 지도의 세로 크기 입니다. 
}

function init() {
    setVariables();
    map = new Tmap.Map({div:'map_div', width:mapW, height:mapH, animation:true}); 
    map.setCenter(LonLat,zoom);
    var lang = "KO"
    if("${tourInfoVO.ti_lang}" != "ko") {
    	if("${tourInfoVO.ti_lang}" == "en") {
    		lang = "EN";
    	}
    	else {
    		lang = "CN";
    	}
    }
    map.setLanguage(lang,false); // 영문
    addMarker();
}

function addMarker(){
	var markerLayer = new Tmap.Layer.Markers("marker");
    map.addLayer(markerLayer);
    
    var size = new Tmap.Size(30,30);
    var offset = new Tmap.Pixel(-(size.w/2), -size.h);
    var icon = new Tmap.IconHtml('<div><img src="/resources/images/marker.png"/></div>',size,offset);
    
    var marker = new Tmap.Markers(LonLat,icon);
    markerLayer.addMarker(marker);
}

$(function() {
	init()
})
</script>
</head>
<body data-spy="scroll" data-offset="60" data-target=".navbar-fixed-top">
<!-- nav 메뉴 -->
<c:import url="/WEB-INF/views/include/navBar.jsp"></c:import>
<!-- nav 메뉴 끝-->

<div class="main-wrapper-onepage main oh">

	<!-- Page Title -->
	<section class="page-title text-center"
		style="background-image: url(/resources/images/sTour.jpg);">
		<div class="container relative clearfix">
			<div class="title-holder">
				<div class="title-text">
					<h1 class="color-white heading-frame"><spring:message code="tourGuide.infoDetail.line79"/></h1>
				</div>
			</div>
		</div>
	</section>
	<!-- end page title -->

	<!-- Blog Single -->
	<section class="section-wrap pb-100 blog-single">
		<div class="container relative">
			<div class="row">
				<!-- content -->
				<div class="col-sm-12 blog-content">
					<!-- standard post -->
					<div class="entry-item">
						<div class="entry-img">
							<img src="/resources/fileFolder/tour_files/${tourInfoVO.ti_pic}.jpg" alt="">
						</div>
						<div class="row">
							<div class="col-sm-10 col-sm-offset-1">
								<div class="entry-title">
									<h2>${tourInfoVO.ti_title}</h2>
								</div>
								<div class="entry-content">
									<p style="text-align: justify;">${tourInfoVO.ti_ovrvw}</p>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-10 col-sm-offset-1">
								<div class="entry-content" >
									<div id="map_div" ></div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-10 col-sm-offset-1">
								<div class="entry-title" >
									<c:choose>
									<c:when test="${empty check}">
									<a href="#" class="btn btn-lg btn-color" id="findRoute1"><spring:message code="tourGuide.infoDetail.line119"/></a>
									<a href="infoList?sWord=${pWord}" class="btn btn-lg btn-dark"><spring:message code="tourGuide.infoDetail.line120"/></a>
									</c:when>
									<c:otherwise>
									<a href="#" class="btn btn-lg btn-color" id="findRoute2"><spring:message code="tourGuide.infoDetail.line123"/></a>
									<a href="infoList?slocation=${pWord}" class="btn btn-lg btn-dark"><spring:message code="tourGuide.infoDetail.line124"/></a>
									</c:otherwise>
									</c:choose>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- end blog single -->

<!-- footer -->
<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
<!-- end of footer -->
</div> 
<!-- end main-wrapper -->
  
<!-- jQuery Scripts -->
<c:import url="/WEB-INF/views/include/basicIncludeBottom.jsp"></c:import>
<script>
$("#findRoute1").click(function () {
	var mapX = coords().lon;
	var mapY = coords().lat;
	var address = "/tourGuide/findRoute?ti_mapx=" + mapX + "&ti_mapy=" + mapY + "&ti_no=${ti_no}&sWord=${pWord}";
	location.href = address;
});
$("#findRoute2").click(function () {
	var mapX = coords().lon;
	var mapY = coords().lat;
	var address = "/tourGuide/findRoute?ti_mapx=" + mapX + "&ti_mapy=" + mapY + "&ti_no=${ti_no}&slocation=${pWord}";
	location.href = address;
});
</script>
</body>
</html>