<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
 <style>
      html,
      body {
        position: relative;
        height: 100%;
        text-align: center;
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
      
     #map {
    width: 350px;
    height: 350px;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    margin: 0 atuo ;
}

    </style>
</head>
<body>
	<h1>Share</h1>
<button type="submit" onclick="edit()">수정</button>
<button type="submit" onclick="del()">삭제</button>
<button type="submit" onclick="report()">신고</button>

		

 		<div class="inf2" data-bno=${param.bno }>  
       	<c:choose>
		<c:when test="${isLike eq 1  }">     
		<span><i class="fas fa-heart" style='color:red'></i> 찜 </span>
		</c:when>
		<c:otherwise>
		<span><i class="far fa-heart" ></i> 찜 </span>
		</c:otherwise>
		</c:choose>  	
		<span class="likes_count" data-count=${likesCount } >${likesCount }</span>
        </div>


	
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

<br>
<c:forEach items="${equipD }" var="n">
	${n }
</c:forEach>		
<br>
<button type="submit" onclick="chat()">거래하기</button>
${detail.bcontent }
<div id="map" style="width:350px;height:350px;"></div>

<script type="text/javascript">
	let sid = "${sessionScope.mid}";
	let mid = "${detail.mid}";

function del() {
	let chk = confirm("삭제하시겠습니까?"); //참  거짓으로 나옵니다.
	
	if(chk) {
		if(sid == mid ){
		location.href ="/bdelete?bno=${detail.bno }";
		}else{
			alert("해당 게시물 작성자만 삭제 가능합니다.")
		}
	}
}
function edit(){
	let chk2 = confirm("수정하시겠습니까?");

	if(chk2){
		if(sid == mid ){
			location.href="/bedit?bno=${detail.bno }";
			
		}else{
			alert("해당 게시물 작성자만 수정 가능합니다.")
		}
	}
}
function report(){
	let chk3 = confirm("신고하시겠습니까?");
	
	if(chk3){
		if(sid == null || sid == ""){
			alert("신고하려면 로그인이 필요합니다")
			return false;
		}
		if(sid == mid){
			alert("작성자가 본인의 게시물을 신고할 수 없습니다")
			return false;
		}	
		
		location.href="/report?bno=${detail.bno }&mid=${detail.mid}";
			
		
	}
	
}

function chat(){
	
	if(sid == null || sid == ""){
		alert("거래를하려면 로그인이 필요합니다")
		return false;
	}
	if(sid == mid){
		alert("작성자가 본인의 게시물을 거래할 수 없습니다")
		return false;
	}	
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
          delay: 5000,
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

<!-- 좋아요 스크립트 -->
 <script type="text/javascript">
 $(".inf2 i").click(function(){
		const mid = "${sessionScope.mid}";
		  // 로그인 하지 않았으면 알림창 띄우고 스크립트 종료
	    if (!mid) {
	        alert("로그인이 필요합니다.");
	        return;
	    }
		// 로그인 확인 후 좋아요 스크립트 진행  
		  
		let likes ="";
		const bno = $(".inf2").data("bno");
		if($(this).hasClass("far")) {
			likes = "on";
		} else {
			likes = "off";
		}
		const data = {
			mid : mid,
			likes : likes,
			bno : bno
		}
		$.ajax({
			url: "/like",
			type: "POST",
			data: data
		})
		.done(function(result){
				console.log(result.body);
				let likesCount = $(".likes_count").data("count");
				
				if(likes == "on") {
					$(".inf2 i").removeClass("far").addClass("fas");
					$(".likes_count").text(likesCount+1);
					$(".likes_count").data("count", likesCount+1 );
				} else {
					$(".inf2 i").removeClass("fas").addClass("far");
					$(".likes_count").text(likesCount-1);
					$(".likes_count").data("count", likesCount-1 );
				}
			})
		.fail(function(error){
			alert(error.responseText);
		})
	})
 </script>
 
</body>
</html>