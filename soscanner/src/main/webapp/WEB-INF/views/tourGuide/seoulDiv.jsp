<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>다각형에 이벤트 등록하기2</title>
    <style>
.area {
    position: absolute;
    background: #fff;
    border: 1px solid #888;
    border-radius: 3px;
    font-size: 12px;
    top: -5px;
    left: 15px;
    padding:2px;
}

.info {
    font-size: 12px;
    padding: 5px;
}
.info .title {
    font-weight: bold;
}
</style>
    <script src="https://code.jquery.com/jquery-3.2.1.js" integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE=" crossorigin="anonymous"></script>
</head>
<body>
<div id="map" style="width:80%;height:700px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=18cc25ec3391fb888265b35fbb20e3f8"></script>
<script>
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

        customOverlay.setContent('<div class="area">' + area.name + '</div>');
        
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
    	var location = {종로구: "jongro", 성동구: "sungdong", 동작구: "dongjak", 용산구: "yongsan", 강동구: "gangdong", 도봉구: "dobong", 금천구: "geumcheon", 은평구: "eunpyeong", 중랑구: "jungnang", 강남구: "gangnam", 마포구: "mapo", 광진구: "gwangjin", 서초구: "seocho", 구로구: "guro", 송파구: "songpa", 양천구: "yangcheon", 노원구: "nowon", 성북구: "seongbuk", 강서구: "gangseo", 관악구: "gwanak", 강북구: "gangbuk", 중구: "jungu", 영등포구: "yeongdeungpo", 서대문구: "seodaemun", 동대문구: "dongdaemun"};
    	var dest = "tourInfo?location=" + location[area.name];
    	console.log(dest);
    	window.location.href = dest;
    });
}
</script>
</body>
</html>






