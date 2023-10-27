<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>디테일</h1>
	${detail}
<c:forEach items="${detail }" var="n">
	${n.bcx }
</c:forEach>
	${detail[0].bcx}
	${detail[0].bcy}

<div id="map" style="width:100%;height:350px;"></div>


<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a4638e2c21e218f8f8162ad1b3069e8c"></script>
<script>

var x = ${detail[0].bcx};
var y = ${detail[0].bcy};
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = { 
    center: new kakao.maps.LatLng(y, x), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
};

//지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption); 
</script>
</body>
</html>