<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
 <style>
      html,
      body {
        position: relative;
        height: 100%;
      }

      body {
        background: #eee;
        font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
        font-size: 14px;
        color: #000;
        margin: 0;
        padding: 0;
      }

      .swiper {
        width: 50%;
        height:50%;
      }

      .swiper-slide {
        text-align: center;
        font-size: 18px;
        background: #fff;

        /* Center slide text vertically */
        display: -webkit-box;
        display: -ms-flexbox;
        display: -webkit-flex;
        display: flex;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        -webkit-justify-content: center;
        justify-content: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        -webkit-align-items: center;
        align-items: center;
      }

      .swiper-slide img {
        display: block;
        width: 50%;
        height: 50%;
        object-fit: cover;
      }

    </style>
</head>
<body>
	<h1>디테일</h1>
<button type="submit" onclick="edit()">수정</button>
<button type="submit" onclick="del()">삭제</button>
<button type="submit" onclick="report()">신고</button>


    <!--스와이퍼 -->
    <div class="swiper mySwiper">
      <div class="swiper-wrapper">
        <c:forEach items="${imageD }" var="n">
        <div class="swiper-slide"><img src="/img/places/${n }"></div>
        </c:forEach>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>
      <!--스와이퍼 -->


<c:forEach items="${imageD }" var="n">
	<img src="/img/places/${n }">
</c:forEach>
<br>
<c:forEach items="${equipD }" var="n">
	${n }
</c:forEach>		
<br>
<button type="submit" onclick="chat()">거래하기</button>


${detail.bcontent }

<div id="map" style="width:350px;height:350px;"></div>

<script type="text/javascript">
function del() {
	let chk = confirm("삭제하시겠습니까?"); //참  거짓으로 나옵니다.

	if(chk) {
		location.href ="/bdelete?bno=${detail.bno }";
	}
}
function edit(){
	let chk2 = confirm("수정하시겠습니까?");
	
	if(chk2){
		location.href="/bedit?bno=${detail.bno }";
	}
}
function report(){
	let chk3 = confirm("신고하시겠습니까?");
		
	if(chk3){
			location.href="/report?bno=${detail.bno }&mid=${detail.mid}";
	}
	
}

function chat(){
	location.href="/chat1?toId=${detail.mid}&bno=${detail.bno}";
}
</script>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a4638e2c21e218f8f8162ad1b3069e8c"></script>
<script>
var x = ${detail.latitude};
var y = ${detail.longitude};
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = { 
    center: new kakao.maps.LatLng(x, y), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
};

//지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption); 
//마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(x, y); 
//마커를 생성합니다
var marker = new kakao.maps.Marker({
 position: markerPosition
});
//마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);


var iwContent = '<div style="padding:5px;">'+"${detail.btitle}"+'</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
iwPosition = new kakao.maps.LatLng(x, y); //인포윈도우 표시 위치입니다

//인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({
position : iwPosition, 
content : iwContent 
});

//마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
infowindow.open(map, marker); 
</script>
<!-- 스와이퍼 사용  -->
<script>
      var swiper = new Swiper(".mySwiper", {
        spaceBetween: 30,
        centeredSlides: true,
        autoplay: {
          delay: 2500,
          disableOnInteraction: false,
        },
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
      });

    </script>
 <!-- 스와이퍼 사용  -->   
</body>
</html>