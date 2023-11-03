<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- <script src="./js/wnInterface.js"></script>  -->

<meta charset="UTF-8">
<title>Map</title>
<style>
.custom-overlay-info {
	border-radius: 6px;
	margin-bottom: 12px;
	float: left;
	position: relative;
	border: none;
	border-bottom: 2px solid #ddd;
	background: white;
}

.custom-overlay-info a {
	display: block;
	text-decoration: none;
	color: black;
	padding: 12px 36px 12px 14px;
	border: 1px solid blue;
}


.custom-overlay-info .desc {
	padding: 1px;
	position: relative;
	min-width: 190px;
}

.custom-overlay-info img {
	max-width: 50%;
	display: block;
	margin: auto;
}

.custom-overlay-info:after {
	content: '';
	position: absolute;
	margin-left: -11px;
	left: 50%;
	bottom: -12px;
	width: 22px;
	height: 12px;
}

#map {
	width: 100%;
	height: 100%;
}

html, body {
	width: 100%;
	height: 100%;
}

.quick {
	position: absolute;
	bottom: 20px;
	right: 20px;
}

</style>
</head>
<body>

<%-- map:${map} --%>
<%-- ${result} --%>
<%-- ${bcx} --%>

<%-- <c:forEach var="i" items="${imageAll }" >
${i.bno}
${i.realFile}
</c:forEach>
--%>
<%-- <c:forEach var="i" items="${ListAll }" >
(${i.latitude},${i.longitude})
</c:forEach>
<br><br> --%>
<c:forEach var="i" items="${imageAll }" >
(${i.latitude},${i.longitude})
</c:forEach>
</body>
<div id="map">
		<div class="quick" style="z-index:5;" >
			<a href="javascript:;" onclick="panTo()" >
            <img src="../img/mylocationwhie.png" style="width:10%;float: right;" >
            <img src="../img/mylocationblue2.png" style="width: 10%;float: right;" >
            <img src="../img/mylocationblue.png" style="width: 10%;float: right;" >
            <!-- <img src="../img/mylocationblue.png" style="width: 40%;float: right;" > -->
        </a>
		</div>
</div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d13607a4c248029181b2f5c31929d16d"></script>
<script type="text/javascript">
var latitude, longitude;
var map;
var markers = [];
var currentInfoWindow = null;
//내 위치와 반경 5km 내의 장소들을 표시할 배열
var placesWithin5km = [];

var marker = null; // 초기에는 마커를 null로 설정

function createMarker(latitude, longitude) {
    if (marker) {
        marker.setMap(null); // 기존 마커가 있다면 지도에서 제거
    }

    var imageSize = new kakao.maps.Size(24, 24);
    var imageSrc = 'img/reallocationblue2.png';
    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);

    var moveLatLon = new kakao.maps.LatLng(latitude, longitude);
    map.panTo(moveLatLon);

    marker = new kakao.maps.Marker({
        map: map,
        position: moveLatLon,
        zIndex: 5,
        image: markerImage
    });
}

function panTo() {
    if (navigator.geolocation) {
        mylocationCheck = true;
        navigator.geolocation.getCurrentPosition(function(position) {
            latitude = position.coords.latitude;
            longitude = position.coords.longitude;

            console.log(latitude);
            if (latitude == undefined) {
                alert("GPS 정보를 수신 할 수 없습니다.\r\n잠시 후 다시 시도해주세요");
                return;
            } else {
                createMarker(latitude, longitude); // 새로운 위치로 마커 생성
            }
        });
    }
}

navigator.geolocation.getCurrentPosition(function(position) {

    latitude = position.coords.latitude;
    longitude = position.coords.longitude;
   
    console.log(latitude);
    console.log(longitude);
    

    var mapContainer = document.getElementById('map');
    var mapOption = {
        center: new kakao.maps.LatLng(latitude, longitude),
        level: 3
    };

    map = new kakao.maps.Map(mapContainer, mapOption);

 	// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성
    var zoomControl = new kakao.maps.ZoomControl();
    map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
    
    console.log();
    
    var data = [
        <c:forEach items="${imageAll}" var="all" varStatus="loop">
        {
            content: '<div class="custom-overlay-info">'
            +'<div><c:out value="${all.btitle}" />'
            +'</div><p style="white-space: nowrap;">'
            +'<c:out value="${all.addr}" /> 상세주소</p>'
            +'<c:choose><c:when test="${not empty all.realFile}">'
            +'<img src="/img/places/${all.realFile}">'
          	+'</c:when><c:otherwise><p>이미지가 없습니다.</p></c:otherwise></c:choose>'
          	+'<a href="/bdetail?bno=${all.bno}">예약하기</a>',
            latlng: new kakao.maps.LatLng(<c:out value="${all.latitude}" />, <c:out value="${all.longitude}" />)
        }<c:if test="${!loop.last}">,</c:if>
        </c:forEach>
    ];

    
    // 새로운 마커 이미지 생성
    var markerImage = new kakao.maps.MarkerImage('img/blue192.png', new kakao.maps.Size(40, 40));

    // 반경 5km를 라디안 단위로 계산
    var radiusInKm = 5;
    var radiusInRadians = radiusInKm / 6371; // 지구의 반지름
    
    // 데이터 배열을 순회하면서 거리를 계산하여 5km 이내의 장소만 선택
    data.forEach(function(item) {
        var placeLat = item.latlng.getLat();6
        var placeLng = item.latlng.getLng();
        
        // 현재 위치와 장소의 위치 간의 거리를 계산
        var dLat = toRadians(placeLat - latitude);
        var dLng = toRadians(placeLng - longitude);
        var a = Math.sin(dLat / 2) * Math.sin(dLat / 2) + Math.cos(toRadians(latitude)) * Math.cos(toRadians(placeLat)) * Math.sin(dLng / 2) * Math.sin(dLng / 2);
        var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
        var distance = 6371 * c; // 거리 (단위: km)

        // 거리가 5km 이내인 경우만 배열에 추가
        if (distance <= radiusInKm) {
            placesWithin5km.push(item);
        }
    });

    // 반경 5km 이내의 장소들에 대한 마커를 생성 및 표시
    placesWithin5km.forEach(function(item) {
        var markerPosition = item.latlng;
        var marker = new kakao.maps.Marker({
            image: markerImage,
            position: markerPosition,
            map: map
        });
        markers.push(marker);

        // 마커 클릭 이벤트 처리 (이 부분은 유지)
        kakao.maps.event.addListener(marker, 'click', function() {
            if (currentInfoWindow) {
                currentInfoWindow.close();
            }

            var content = '<div>'
            +'<a><strong>' + item.content + '</strong></a>'
            +'<div class="desc">'
            +'</div>'
            +'</div>';

            var infowindow = new kakao.maps.InfoWindow({
                content: content+'<div style="border:none;"></div>',
                removable: true,
                zIndex: 10
            });

            infowindow.open(map, marker);
            currentInfoWindow = infowindow;
        });
    });
});

// 라디안으로 변환하는 함수
function toRadians(degrees) {
    return degrees * (Math.PI / 180);
}


</script>
</html>