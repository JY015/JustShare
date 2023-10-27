<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- ${latitude}
${longitude}
${btitle}
${badd } --%>
</body>
<div id="map" style="width:100%;height:350px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d13607a4c248029181b2f5c31929d16d"></script>
<script>

var latitude = ${latitude};
var longitude = ${longitude};

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(latitude, longitude), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

//마커를 표시할 위치와 title 객체 배열입니다 
var positions = [
	 	{
	        content: '<div>${btitle}</div><p style="white-space: nowrap;">${badd}</p>', 
	        latlng: new kakao.maps.LatLng(37.4921, 127.0309)
	    },
	    {
	        content: '<div>${btitle}</div><p style="white-space: nowrap;">${badd}</p>', 
	        latlng: new kakao.maps.LatLng(37.4918, 127.0310)
	    },{
	        content: '<div>${btitle}</div><p style="white-space: nowrap;">${badd}</p>', 
	        latlng: new kakao.maps.LatLng(37.4918, 127.0301)
	    }
];


// 마커가 표시될 위치입니다 
//var markerPosition  = new kakao.maps.LatLng(latitude, longitude); 

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
/* ====================================
// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

//마커를 클릭했을 때 마커 위에 표시할 인포윈도우를 생성합니다
var iwContent = '<div style="padding: 10%; text-align:center;">${btitle}</div><p style="white-space: nowrap;">${badd}</p>', 
	// 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
    iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다

// 인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({
    content : iwContent,
    removable : iwRemoveable
});

// 마커에 클릭이벤트를 등록합니다
kakao.maps.event.addListener(marker, 'click', function() {
      // 마커 위에 인포윈도우를 표시합니다
      infowindow.open(map, marker);  
});
======================================== */
// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    

</script>
</html>