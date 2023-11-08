<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- map:${map} --%>
<%-- ${result} --%>
<%-- ${bcx} --%>
</body>
<div id="map" style="width:100%; height:990px;margin:0px;"></div>
		<div class="quick" style="z-index:100;">
			<a href="javascript:;" onclick="panTo()"><img src="../img/mylocation64.png" ></a>
		</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d13607a4c248029181b2f5c31929d16d"></script>
<script type="text/javascript">
var latitude, longitude;
var map;
var markers = [];
var currentInfoWindow = null;

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
            content: '<div><c:out value="${all.btitle}" /></div><p style="white-space: nowrap;"><c:out value="${all.addr}" /></p>',
            latlng: new kakao.maps.LatLng(<c:out value="${all.latitude}" />, <c:out value="${all.longitude}" />)
        }<c:if test="${!loop.last}">,</c:if>
        </c:forEach>
    ];
    
    //내 위치 아이콘 표시
    function panToMyLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function (position) {
            var myLat = position.coords.latitude;
            var myLng = position.coords.longitude;

            var imageSize = new kakao.maps.Size(24, 24);
            var imageSrc = 'img/reallocation.png';
            var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);

            var moveLatLon = new kakao.maps.LatLng(myLat, myLng);

            // 이미 존재하는 위치 아이콘을 제거합니다.
            removeMarker();

            var marker = new kakao.maps.Marker({
                map: map,
                position: moveLatLon,
                zIndex: 5,
                image: markerImage
            });

            map.panTo(moveLatLon);

            markers.push(marker);
        });
    }
}
    function panToMy() {
        if (navigator.geolocation) {
            mylocationCheck = true;
            if (latitude == "") {
                alert("GPS 정보를 수신 중입니다.\r\n잠시 후 다시 시도해주세요");
                return;
            } else {
                var moveLatLon = new kakao.maps.LatLng(latitude, longitude);
                map.panTo(moveLatLon);
            }
        }
    }
    
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

            var content = '<div style="padding:10px;">' +
                '<h3>' + item.content + '</h3>' +
                '</div>';

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