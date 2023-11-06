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
body {
	width: 100%;
	height: 100%;
	margin: 0;
}
#daumWrap {
    position: relative;
    min-width: 320px;
    height: 100%;
}
.hide {
    display: none;
}
.cont_map {
    overflow: hidden;
    width: 100%;
}

.content_map {
    position: relative;
}

.map_area {
    overflow: hidden;
    position: relative;
    width: 100%;
}

.map_area .wrap_tit {
    position: absolute;
    left: 0;
    top: 0;
    z-index: 100;
    width: 100%;
    height: 0;
    text-align: center;
}


.map_area .control_map {
    left: 10px;
    top: 20% ;
}

.map_area .set_map {
	z-index: 10;
    position: absolute;
    width: 40px;
}

.set_map {
    margin-bottom: 9px;
    margin: auto;
}

 .control_map{
    width: 20px;
    height: 20px;
    background-position: -20px 0;
} 

.set_map .mylocationblue_img{
    margin-bottom: 9px;
}


.custom-infowindow {
    /* 여기에 원하는 스타일을 추가하세요 */
    
    border: 2px solid #ccc;
    background-color: #fff;
    padding: 10px;
    border-radius: 6px;
}

.custom-infowindow a {
    font-weight: bold;
    color: #333;
    text-decoration: none;
}

.custom-infowindow .desc {
    /* .desc 스타일을 추가하세요 */
}

.custom-infowindow .close-button {
    /* .close-button 스타일을 추가하세요 */
    background-color: #004AAD;
    color: #fff;
    border: none;
    padding: 5px 10px;
    border-radius: 4px;
    cursor: pointer;
}
------------2번째 코드-------------------------
.custom-overlay-info {
    /* 여기에 원하는 스타일을 추가하세요 */
    border-bottom: 2px solid #ddd;
    background: #fff;
}

.custom-overlay-info .btitle {
    /* .btitle 스타일을 추가하세요 */
    font-weight: bold;
    font-size: 16px;
}

.custom-overlay-info .addr {
    /* .addr 스타일을 추가하세요 */
    white-space: nowrap;
    color: #666;
}

.custom-overlay-info .place-image {
    /* .place-image 스타일을 추가하세요 */
    max-width: 100%;
}

.custom-overlay-info .no-image {
    /* .no-image 스타일을 추가하세요 */
    color: #999;
    font-style: italic;
}

.custom-overlay-info .reservation-link {
    /* .reservation-link 스타일을 추가하세요 */
    color: #00f;
    text-decoration: none;
    font-weight: bold;
}


.mylocationblue_img{
	right: 10%;
    width: 38px;
}
.tit_location{
    overflow: hidden;
    display: inline-block;
    padding: 5px 14px 0;
    margin: 8px auto 0;
    height: 19px;
    border-radius: 13px;
    font-weight: normal;
    font-size: 18px;
    line-height: 14px;
    color: #555;
    opacity: .9;
    background-color: #fff;
    text-align: center;
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.16);
    }
    
#map {
    height: 965px;
}
</style>

</head>
<body>
	<div id="daumWrap">

		<hr class="hide">

		<article id="daumContent" role="main" class="cont_map">

			<div class="content_map">
				<div class="map_area hide" style="display: block;">
					<div class="wrap_tit">
						<strong class="tit_location"></strong>
					</div>
					<div id="map">
						<div style="cursor: auto; z-index: 2;"></div>
					</div>
					<div class="set_map control_map">
						<a href="javascript:;" onclick="panTo()" >
						   <img class="mylocationblue_img" src="../img/mylocationblue.png" >
	        			</a>
					</div>
				</div>
			</div>
	</article>
</div>

 <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d13607a4c248029181b2f5c31929d16d&libraries=services"></script>


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

    var imageSize = new kakao.maps.Size(30, 30);
    var imageSrc = "//t1.daumcdn.net/localimg/localimages/07/2018/mw/m640/ico_marker.png";
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
            console.log(longitude);
            if(latitude == undefined){
                alert("GPS 정보를 수신 할 수 없습니다.\r\n잠시 후 다시 시도해주세요");
                return;
            } else {
                createMarker(latitude, longitude); // 새로운 위치로 마커 생성
            }
        });
    }
}
var currentCustomOverlay = null;
// 라디안으로 변환하는 함수
function toRadians(degrees) {
    return degrees * (Math.PI / 180);
}

// 닫기 버튼을 눌렀을 때 호출되는 함수
function closeCustomOverlay() {
    if (currentCustomOverlay) {
        currentCustomOverlay.setMap(null); // 커스텀 오버레이 닫기
        currentCustomOverlay = null; // 열린 커스텀 오버레이를 추적 해제
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
    
    kakao.maps.load(function() {
        var geocoder = new kakao.maps.services.Geocoder();
        var latlng = new kakao.maps.LatLng(latitude, longitude);

        // 위도와 경도를 주소로 변환
        geocoder.coord2Address(latlng.getLng(), latlng.getLat(), function(result, status) {
            if (status === kakao.maps.services.Status.OK) {
            	var address = result[0].address.address_name;
            	document.querySelector(".tit_location").innerHTML = address;
 		} else {
              alert("주소를 찾을 수 없습니다.");
            }
          });
      });
    var data = [
        <c:forEach items="${imageAll}" var="all" varStatus="loop">
        {
            content: '<div class="custom-overlay-info">'
            +'<div class="btitle"><c:out value="${all.btitle}" /></div>'
            +'<p class="addr" style="white-space: nowrap;"><c:out value="${all.addr}" /> 상세주소</p>'
            +'<c:choose><c:when test="${not empty all.realFile}">'
            +'<img class="place-image" src="/img/places/${all.realFile}" >'
          	+'</c:when><c:otherwise><p class="no-image">이미지가 없습니다.</p></c:otherwise></c:choose>'
          	+ '<br><a class="reservation-link" href="/bdetail?bno=${all.bno}">상세보기</a>',
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
        var placeLat = item.latlng.getLat();
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
        	 if (currentCustomOverlay) {
                 currentCustomOverlay.setMap(null); // 이전의 커스텀 오버레이 닫기
             }

        	 var content = '<div class="custom-infowindow">'
        	        + '<a><strong>' + item.content + '</strong></a>'
        	        + '<div class="desc">'
        	        + '</div>'
        	        + '<button class="close-button" onclick="closeCustomOverlay()">닫기</button>' 
        	        + '</div>';

            var customOverlay  = new kakao.maps.CustomOverlay({
            	clickable: true,
                content: content,
                position: marker.getPosition(),
            });

            customOverlay.setMap(map);
            currentCustomOverlay = customOverlay; 
        });
    });
    
});

</script>
</html>