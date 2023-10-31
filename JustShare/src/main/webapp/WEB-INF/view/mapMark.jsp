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
<div id="map" style="width:50%;height:350px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d13607a4c248029181b2f5c31929d16d"></script>
<script type="text/javascript" >

let latitude, longitude;

navigator.geolocation.getCurrentPosition(function(position) {
    latitude = position.coords.latitude;
    longitude = position.coords.longitude;
    console.log(latitude);
    console.log(longitude);

<c:forEach items="${ListAll}" var="all">
<c:forEach items="${ListOne}" var="one">
/* console.log("${all.bno}");
console.log("${all.addr}");
console.log("${all.latitude}");
console.log("${all.longitude}");
console.log("${all.btitle}"); */

/* console.log("${one.bno}");
console.log("${one.addr}");
console.log("${one.latitude}");
console.log("${one.longitude}");
console.log("${one.btitle}");
 */

/* var latitude = ${latitude};
var longitude = ${longitude}; */


var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(latitude, longitude), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다


//마커를 표시할 위치와 title 객체 배열입니다 

var positions = [

    {
        content: '<div>내위치</div>', 
        latlng: new kakao.maps.LatLng(latitude, longitude)
    },
    
    <c:forEach items="${ListAll}" var="all">
    {
        content: '<div><c:out value="${all.btitle}" /></div><p style="white-space: nowrap;"><c:out value="${all.addr}" /></p>', 
        latlng: new kakao.maps.LatLng(<c:out value="${all.latitude}" />, <c:out value="${all.longitude}" />)
    }<c:if test="${!all.last}">,</c:if>
	</c:forEach>
   /*  
   <c:forEach items="${ListOne}" var="one">
    {
        content: '<div><c:out value="${one.btitle}" /></div><p style="white-space: nowrap;"><c:out value="${one.addr}" /></p>', 
        latlng: new kakao.maps.LatLng(<c:out value="${one.latitude}" />, <c:out value="${one.longitude}" />)
    }<c:if test="${!one.last}">,</c:if>
	</c:forEach> 
	*/
	/* {
		 content: '<div><c:out value="내 위치" /></div><p style="white-space: nowrap;"></p>', 
         latlng: new kakao.maps.LatLng(<c:out value="${latitude}" />, <c:out value="${longitude}" />)
	} */
];
</c:forEach>
</c:forEach>

/* var content = '<div class="overlay_info">';
content += '    <a href="https://place.map.kakao.com/17600274" target="_blank"><strong>월정리 해수욕장</strong></a>';
content += '    <div class="desc">';
content += '        <img src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/place_thumb.png" alt="">';
content += '        <span class="address">제주특별자치도 제주시 구좌읍 월정리 33-3</span>';
content += '    </div>';
content += '</div>';

// 커스텀 오버레이가 표시될 위치입니다 
var position = new kakao.maps.LatLng(33.55635, 126.795841);

// 커스텀 오버레이를 생성합니다
var mapCustomOverlay = new kakao.maps.CustomOverlay({
    position: position,
    content: content,
    xAnchor: 0.5, // 커스텀 오버레이의 x축 위치입니다. 1에 가까울수록 왼쪽에 위치합니다. 기본값은 0.5 입니다
    yAnchor: 1.1 // 커스텀 오버레이의 y축 위치입니다. 1에 가까울수록 위쪽에 위치합니다. 기본값은 0.5 입니다
});

// 커스텀 오버레이를 지도에 표시합니다
mapCustomOverlay.setMap(map); */

for (var i = 0; i < positions.length; i ++) {
	
    // 마커를 생성합니다
    
    var marker = new kakao.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: positions[i].latlng // 마커의 위치
    });

    // 마커에 표시할 인포윈도우를 생성합니다 
    var infowindow = new kakao.maps.InfoWindow({
        content: positions[i].content // 인포윈도우에 표시할 내용
    });

    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
}

// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
function makeOverListener(map, marker, infowindow) {
    return function() {
        infowindow.open(map, marker);
    };
}

// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
function makeOutListener(infowindow) {
    return function() {
        infowindow.close();
    };
}

// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    
});
</script>
</html>