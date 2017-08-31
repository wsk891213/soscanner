<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>관광지 정보</title>
<style>
#mapContainer {
	height: 800px;
}
</style>
<c:import url="/WEB-INF/views/include/basicIncludeTop.jsp"></c:import> 
<script src="https://apis.skplanetx.com/tmap/js?version=1&format=javascript&appKey=f9c5ac44-024a-3ddb-9828-c6e7f0d42b86"></script>
<script type="text/javascript">
var latitude;
var longitude;
function getMyLocation() {
	// 위치정보 지원 여부 확인
	if (navigator.geolocation) {
		//위치정보 1회 호출
		navigator.geolocation.getCurrentPosition(
				displayLocation, displayError);
	}
	else {
		console.log("위치정보 지원하지 않음")
	}
}

// 위치정보 조회 성공시 호출 콜백함수
function displayLocation(position) {
	// 위도 
	latitude = position.coords.latitude;
	// 경도
	longitude = position.coords.longitude;
	initTmap();
}

// 위치정보 조회 실패시 호출 콜백함수
function displayError(error) {
	var errorTypes = 
		["알려지지 않은 에러 발생", "권한 거부", "위치 정보를 찾지 못함", "요청 응답시간 초과"];
	
	var errHtml = errorTypes[error.code];
	
	console.log(errorTypes[error.code]);
	
	if (error.code == 0 || error.code == 2) {
		console.log(error.message);
		errHtml += "<br />" + error.message;  
	}
	console.log(errHtml);
}

var coords = function (){
	var pr_3857 = new Tmap.Projection("EPSG:3857");
	var pr_4326 = new Tmap.Projection("EPSG:4326");
	var coordX = longitude;	
	var coordY = latitude;
	return new Tmap.LonLat(coordX, coordY).transform(pr_4326, pr_3857);
};

//초기화 함수
function initTmap(){
    centerLL = new Tmap.LonLat(14145677.4, 4511257.6);
    map = new Tmap.Map({div:'map_div',
                        width:'100%', 
                        height:'100%',
                        transitionEffect:"resize",
                        animation:true
                    }); 
    searchRoute();
};
//경로 정보 로드
function searchRoute(){
    var routeFormat = new Tmap.Format.KML({extractStyles:true, extractAttributes:true});
	var fCoords = coords();
    var startX = fCoords.lon;
    var startY = fCoords.lat;
    var endX = ${tourInfoVO.ti_mapx};
    var endY = ${tourInfoVO.ti_mapy};
    var startName = "출발지";
    var endName = "도착지";
    var urlStr = "https://apis.skplanetx.com/tmap/routes/pedestrian?version=1&format=xml";
        urlStr += "&startX="+startX;
        urlStr += "&startY="+startY;
        urlStr += "&endX="+endX;
        urlStr += "&endY="+endY;
        urlStr += "&startName="+encodeURIComponent(startName);
        urlStr += "&endName="+encodeURIComponent(endName);
        urlStr += "&appKey=f9c5ac44-024a-3ddb-9828-c6e7f0d42b86";
    var prtcl = new Tmap.Protocol.HTTP({
                                        url: urlStr,
                                        format:routeFormat
                                        });
    var routeLayer = new Tmap.Layer.Vector("route", {protocol:prtcl, strategies:[new Tmap.Strategy.Fixed()]});
    routeLayer.events.register("featuresadded", routeLayer, onDrawnFeatures);
    map.addLayer(routeLayer);
}
//경로 그리기 후 해당영역으로 줌
function onDrawnFeatures(e){
	map.zoomToExtent(this.getDataExtent());
}

getMyLocation();
</script>   
</head>
<body >
<!-- nav 메뉴 -->
  <c:import url="/WEB-INF/views/include/navBar.jsp"></c:import>
<!-- nav 메뉴 끝-->
<div class="main-wrapper-onepage main oh">

 <!-- Page Title -->
    <section class="page-title text-center" style="background-image: url(/resources/images/sTour.jpg);">
      <div class="container relative clearfix">
        <div class="title-holder">
          <div class="title-text">
            <h1 class="color-white heading-frame">경로안내</h1>
          </div>
        </div>
      </div>
    </section> 
<!-- end page title -->

<section class="section-wrap pb-100 blog-single">
	<div class="container relative">
        <div class="row">
          
          <!-- content -->
          <div class="col-sm-12 blog-content">

            <!-- standard post -->
            <div class="entry-item">
                  <div class="entry-title">
                    <h2>보행자 경로</h2>
                  </div>
                  <ul class="entry-meta bottom-line">
                  </ul>

                  <div class="entry">
                    <div class="entry-content" style="width: 100% !important;">
						<div id="mapContainer">
							<div id="map_div"></div>
						</div>
                    </div>
              </div> <!-- end row -->

            </div> <!-- end entry item -->
          </div> <!-- end col -->
  
        </div> <!-- end row -->
	</div> <!-- end container -->
</section>
<!-- start of footer -->
<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
<!-- end of footer -->
 </div> <!-- end main-wrapper -->
<c:import url="/WEB-INF/views/include/basicIncludeBottom.jsp"></c:import>

<input type="hidden" id="coordinateX"/>
<input type="hidden" id="coordinateY"/>
</body>
</html>






