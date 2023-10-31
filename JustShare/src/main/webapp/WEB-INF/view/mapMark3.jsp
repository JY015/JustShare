<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

	.style {
    cursor: default;
    position: absolute;
    background: rgb(255, 255, 255);
    border: none;
    z-index: 0;
    display: block;
    width: 218px;
    height: 230px;
    left: -538px;
    top: 443px;
}
    .custom-overlay-info {
        border-radius: 6px;
        margin-bottom: 12px;
        float: left;
        position: relative;
        border: none;
        border-bottom: 2px solid #ddd;
        background-color: #fff;
    }

    .custom-overlay-info a {
        display: block;
        text-decoration: none;
        color: #fff;
        padding: 12px 36px 12px 14px;
        font-size: 14px;
        background: #d95050 url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center;
        /*
        border-radius: 6px 6px 0 0;*/
    }
	/*이미지파일
    .custom-overlay-info a strong {
        background: url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/place_icon.png) no-repeat;
        padding-left: 27px;
    }
    */

    .custom-overlay-info .desc {
        padding: 1px;
        position: relative;
        min-width: 190px;
    }

    .custom-overlay-info img {
        max-width: 100%;
	    max-height: 100%;
	    display: block;
	    width: 207px;
	    height: 207px;

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
    
</style>
</head>
<body>

<%-- map:${map} --%>
<%-- ${result} --%>
<%-- ${bcx} --%>
</body>
<div id="map" style="width:70%; height:360px"></div>
		<div class="quick" style="z-index:100;">
			<a href="javascript:;" onclick="panTo()"><img src="../img/mylocation64.png" ></a>
		</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d13607a4c248029181b2f5c31929d16d"></script>
<script type="text/javascript">
var latitude, longitude;
var map;
var markers = [];
var currentInfoWindow = null;

var marker = null; // 초기에는 마커를 null로 설정

function createMarker(latitude, longitude) {
    if (marker) {
        marker.setMap(null); // 기존 마커가 있다면 지도에서 제거
    }

    var imageSize = new kakao.maps.Size(24, 24);
    var imageSrc = 'img/reallocation.png';
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

    var data = [
        <c:forEach items="${ListAll}" var="all" varStatus="loop">
        {
            content: '<div class="custom-overlay-info">'
            +'<div><c:out value="${all.btitle}" />'
            +'</div><p style="white-space: nowrap;">'
            +'<c:out value="${all.addr}" /></p>'
            +'<c:choose><c:when test="${not empty imageD}">'
            +'<img src="/img/places/${imageD[0]}">'
          	+'</c:when><c:otherwise><p>이미지가 없습니다.</p></c:otherwise></c:choose>',
            latlng: new kakao.maps.LatLng(<c:out value="${all.latitude}" />, <c:out value="${all.longitude}" />)
        }<c:if test="${!loop.last}">,</c:if>
        </c:forEach>
    ];

    
    // 새로운 마커 이미지 생성
    var markerImage = new kakao.maps.MarkerImage('img/red24.png', new kakao.maps.Size(24, 24));

    // 데이터 배열을 순회하면서 마커를 생성하고 이벤트를 추가합니다.
    data.forEach(function(item) {
        var markerPosition = item.latlng;
        var marker = new kakao.maps.Marker({
        	 image: markerImage,
            position: markerPosition,
            map: map
        });
        markers.push(marker);

        // 마커 클릭 이벤트 처리
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
                content: content,
                removable: true
            });

            infowindow.open(map, marker);
            currentInfoWindow = infowindow;
        });

    });
});


</script>
</html>