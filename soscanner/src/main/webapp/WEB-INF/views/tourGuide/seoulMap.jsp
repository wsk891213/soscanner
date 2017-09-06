<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>관광지 정보</title>
<style>
.area {
    position: absolute;
    background: #f9f9f9;
    border: 1px solid #888;
    border-radius: 15px;
    color: black;
    font-size: 20px;
    font-weight: bold;
    text-align: center;
    top: -5px; left: 15px;
    width: auto; height: 36px;
    padding:2px;
}


.info {
    font-size: 12px;
    padding: 5px;
}
.info .title {
    font-weight: bold;
}

.mapFrame {
	height: 700px;
	width: 90%;
	padding: 30px;
	background: black;
	border-radius: 30px;
	margin: 10px 65px 65px;
}

#mapContainer{
  height:100%; 
  width:100%;
}

</style>
<c:import url="/WEB-INF/views/include/basicIncludeTop.jsp"></c:import>    
</head>
<body>
<!-- nav 메뉴 -->
  <c:import url="/WEB-INF/views/include/navBar.jsp"></c:import>
<!-- nav 메뉴 끝-->
<div class="main-wrapper-onepage main oh">

 <!-- Page Title -->
    <section class="page-title text-center" style="background-image: url(/resources/images/sTour.jpg);">
      <div class="container relative clearfix">
        <div class="title-holder">
          <div class="title-text">
            <h1 class="color-white heading-frame"><spring:message code="tourGuide.seoulMap.line61"/></h1>
          </div>
        </div>
      </div>
    </section> 
<!-- end page title -->

<section class="section-wrap pb-100 blog-single" style="padding-bottom: 5px !important;" >
	<div class="container relative">
        <div class="row">
          
          <!-- content -->
          <div class="col-sm-12 blog-content">
			<div class="entry-item">
				<div class="entry-title">
					<h1><spring:message code="tourGuide.seoulMap.line76"/></h1>
				</div>
				<ul class="entry-meta bottom-line">
				</ul>
				
			</div>
          </div> <!-- end col -->
  
        </div> <!-- end row -->
	</div> <!-- end container -->
</section>

<div class="mapFrame">
	<div id="mapContainer">
		<div id="map" style="width: 100%; height: 100%;"></div>
	</div>
</div>
<section class="section-wrap-mp services style-2 pb-0 pb-mdm-50" style="padding: 1px !important;"></section>
<!-- start of footer -->
<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
<!-- end of footer -->
 </div> <!-- end main-wrapper -->
<c:import url="/WEB-INF/views/include/basicIncludeBottom.jsp"></c:import>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=18cc25ec3391fb888265b35fbb20e3f8"></script>
<script>

$(document).ready(function(){
	 
	  $("#switch").click(function(){
	      $("#mapContainer").toggle("slide");
	  });
});

$(function () {
	$.getJSON("/resources/json/seoulMap.json", function (data) {
		$.each(data.features, function (fIndex, fVals) {
			var dataEach = fVals.geometry.coordinates[0];
			var nameEach = fVals.properties.name;
			var temp  = {name: nameEach, path:[] }
			
			for(var i = 0, len = dataEach.length; i< len;  i++){
				var latLng = dataEach[i];
				temp.path.push(new daum.maps.LatLng(latLng[1], latLng[0]));
			}
			displayArea(temp);
		});
	})
});

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new daum.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
        level: 9 // 지도의 확대 레벨
    };

var map = new daum.maps.Map(mapContainer, mapOption),
    customOverlay = new daum.maps.CustomOverlay({}),
    infowindow = new daum.maps.InfoWindow({removable: true});
    
map.setZoomable(false);
map.setDraggable(false);

// 다각형을 생상하고 이벤트를 등록하는 함수입니다
function displayArea(area) {

    // 다각형을 생성합니다 
    var polygon = new daum.maps.Polygon({
        map: map, // 다각형을 표시할 지도 객체
        path: area.path,
        strokeWeight: 2,
        strokeColor: '#004c80',
        strokeOpacity: 0.8,
        fillColor: '#fff',
        fillOpacity: 0.7 
    });

    // 다각형에 mouseover 이벤트를 등록하고 이벤트가 발생하면 폴리곤의 채움색을 변경합니다 
    // 지역명을 표시하는 커스텀오버레이를 지도위에 표시합니다
    daum.maps.event.addListener(polygon, 'mouseover', function(mouseEvent) {
        polygon.setOptions({fillColor: '#09f'});
       	customOverlay.setContent('<div class="area">' + locLangFilter(area.name).toUpperCase() + '</div>');
        customOverlay.setPosition(mouseEvent.latLng); 
        customOverlay.setMap(map);
        
    });

    // 다각형에 mousemove 이벤트를 등록하고 이벤트가 발생하면 커스텀 오버레이의 위치를 변경합니다 
    daum.maps.event.addListener(polygon, 'mousemove', function(mouseEvent) {
        
        customOverlay.setPosition(mouseEvent.latLng); 
    });

    // 다각형에 mouseout 이벤트를 등록하고 이벤트가 발생하면 폴리곤의 채움색을 원래색으로 변경합니다
    // 커스텀 오버레이를 지도에서 제거합니다 
    daum.maps.event.addListener(polygon, 'mouseout', function() {
        polygon.setOptions({fillColor: '#fff'});
        customOverlay.setMap(null);
    }); 

    // 다각형에 click 이벤트를 등록하고 이벤트가 발생하면 다각형의 이름과 면적을 인포윈도우에 표시합니다 
    daum.maps.event.addListener(polygon, 'click', function(mouseEvent) {
    	var dest = "infoList?slocation=" + locLangFilter(area.name);
    	window.location.href = dest;
    });
    
}

function locLangFilter(loc) {
	var enLocs = {종로구: "Jongno", 성동구: "Sungdong", 동작구: "Dongjak", 용산구: "Yongsan", 강동구: "Gangdong", 도봉구: "Dobong", 금천구: "Geumcheon", 은평구: "Eunpyeong", 중랑구: "Jungnang", 강남구: "Gangnam", 마포구: "Mapo", 광진구: "Gwangjin", 서초구: "Seocho", 구로구: "Guro", 송파구: "Songpa", 양천구: "Yangcheon", 노원구: "Nowon", 성북구: "Seongbuk", 강서구: "Gangseo", 관악구: "Gwanak", 강북구: "Gangbuk", 중구: "Jungu", 영등포구: "Yeongdeungpo", 서대문구: "Seodaemun", 동대문구: "Dongdaemun"};
    var chLocs = {종로구: "钟路区", 성동구: "城东区", 동작구: "铜雀区", 용산구: "龙山区", 강동구: "江东区", 도봉구: "道峰区", 금천구: "衿川区", 은평구: "恩平区", 중랑구: "中浪区", 강남구: "江南区", 마포구: "麻浦区", 광진구: "广津区", 서초구: "瑞草区", 구로구: "九老区", 송파구: "松坡区", 양천구: "阳川区", 노원구: "芦原区", 성북구: "城北区", 강서구: "江西区", 관악구: "冠岳区", 강북구: "江北区", 중구: "中区", 영등포구: "永登浦区", 서대문구: "西大门区 ", 동대문구: "东大门区"};
	var result;
	switch ("${locale}") {
    case "ko":
    	result = loc;
    	break;
    case "en":
    	result = enLocs[loc];
    	break;
    case "zh":
    	result = chLocs[loc];
    	break;
    }
	return result;
}
</script>
</body>
</html>






