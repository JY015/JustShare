<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scaleable=no, maximum-scale=1" />
	<meta name="description" content="공간 공유 플랫폼"/>
    <title>Just Share</title>
	<!-- 기존에 사용하던 jquery , bootstrap , 기타등등 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<link rel="stylesheet"  href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

<!-- 추가한거 -->
<link rel="canonical" href="https://www.valuevenue.co.kr/login" />
<link rel="stylesheet" href="/css/import.css?ver=20000120" />
<link rel="stylesheet" href="/css/style.css?ver=20000120" />
<link rel="stylesheet" href="/css/owl.carousel.min.css" />
<link rel="stylesheet" href="/css/valuevenue.css?ver=20000120" />
<link rel="stylesheet" href="/css/listpage.css?ver=20000120">
<link rel="stylesheet" href="/css/main_page.css" />
<link rel="stylesheet" href="/css/spacedetail.css" />
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/@fancyapps/ui@4.0/dist/fancybox.css"/>	
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">


<!-- fancybox -->
<script src="//cdn.jsdelivr.net/npm/@fancyapps/ui@4.0/dist/fancybox.umd.js"></script>
 <script src="/js/valuevenue.js?ver=20000120" defer></script>
 <script src="/js/owl.carousel.min.js"></script>
 <script src="/js/common.js?ver=20000120" defer></script>
 <script src="/js/cookie.js?ver=20000120" defer></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.5.2/sockjs.min.js"></script>
<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<link rel="stylesheet" href="/css/footertoastr.min.css" />
<script src="./js/socket2.js"></script>
 <style>
.fancybox__container *, .fancybox__container *::before, .fancybox__container *::after { color: white;}
.fancybox__counter{display:none;}
.fancybox__content{max-width:1400px;max-height:1050px;}
		
 .swiper {
  width: 400px;
  height: 300px;
}
      
  
.fc-direction-ltr .fc-daygrid-event.fc-event-end{height:5px}
.fc-direction-ltr .fc-daygrid-block-event:not(.fc-event-end){height:5px}

.fc-col-header .fc-scrollgrid-sync-table{
	width:300px;
}
.fc{
	display:inline;
	border:none;
}
.fc .fc-toolbar{display:inline}

.fc-toolbar-chunk{text-align:center;}

.ui-datepicker{z-index:1000001 !important;}

.fa-solid{line-height:2;}

.section--spaceDetail .txt__tit26{text-align: left;}

.spaceDetailInfo_summary .host{background-color:#004AAD; margin-bottom: 15px; border-radius: 10px;}

.spaceDetailInfo_summary .host .txt__tit {color:white; margin-bottom:5px; margin-left: 10px;}
.spDetail_topinfo .spaceDetailInfo_summary  .txt__tit26 {margin-bottom : 17px;}
.spDetail_topinfo .tag__wrap {width: 100%;}
.spDetail_topinfo .tag__wrap button {background-color : #3C7CF5; color:white; padding: 0 0.5rem; border-radius: 1.5rem; margin-right: 0.375rem; font:inherit;}
.detailContext {margin-top:20px;  margin-bottom: 20px; }
.detailContext .detailp {margin-top : 18px; margin-bottom: 18px; line-height: 1.5em; /* 원하는 여백 조절 */}
.detailContext .detailc {margin-top : 20px; margin-bottom: 20px; font-size: 18px; line-height: 2;}
.cate{height: 40px; width: 40px;}
.swiper-slide .frontImage{height:300px; width: 400px;}
.detailmap {margin-top: 15px; font-size: 14px;}
.b_nav_list {top: 7px;}
.xi-document, .xi-gps, .xi-message-o, .xi-user-o {
   text-align: center;
   font-size: 162%;
   position: relative;
   top: 7px;
   color: rgba(0, 0, 0, 0.4);
}


 .home_btn {
  width: 60px;
  height: 60px;
  border: solid 4px white;
  border-radius: 200px;
  /* box-shadow: 0 -2px 8px #ffffff inset; */
  box-shadow: 0 -2px 8px #4122d3 inset;
  background-color: #6b4bf5;
  /* background-color: #7759ff; */
  margin: -2px auto;
  /* 여기 바꿈 -12px auto*/
}

.note-num {
   position: relative;
   
  
    z-index: 2; /* 숫자 아이콘을 아이콘 위에 겹치게 하려면 z-index를 조절 */
    height: 16px;
    width: 19px;
 
    text-align: center;
    background-color: red;
    border-radius: 100%;
    color: white;
    display: none;
    bottom: 56px;
    left:50%;
    line-height:1.6;
    
    font-size: 11px;


   
}

.bottom_nav_menu ul li {
    width: 33%;
    height: 100%;
}
.bottom_nav_menu .trade {
	 line-height: 3;
	background-color: #004AAD;
	border-radius :8px;
	color : white;
	font-size: 20px;
    
}
.bottom_nav_menu .placep{
	font-size: 20px;
	 line-height: 3;
}
 .likeon, .likeoff { width: 55px; height: 50px;}
 .fa-star{rigth:5px;}
 .host .iconright{ font-size :22px !important;}
 .off {background-color: red !important;  color:white !important;}
</style>
</head>
<body>
<%@ include file="header.jsp"%>
<div class="body__container section">
	<!-- 모바일 버전 헤더  -->
	<header class="header__topnav_type2">
		  <div class="header_topnav_inner_n">
			<div class="first_row">
			  <div class="left-side">
				<div class="back" style="cursor:pointer" onclick="history.back();">뒤로가기</div>
				<h1 class="logo"><a href="/">로고</a></h1>
			  </div>
			</div>

		  </div>
		</header>
	<section class="section section--spacedetail">
		<div class="spacedetail--inner">
		<section class="section section--space--category">
	
	<div class="swiper mySwiper">
      <div class="swiper-wrapper">
        <c:forEach items="${imageD }" var="n">
        <div class="swiper-slide"><img class="frontImage" src="/img/places/${n }"></div>
        </c:forEach>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>
		</section>
		<section class="section section--spaceDetail">
			 <div class="spaceDetailInfo">
			  <div class="spDetail_topinfo pd0">
			     <div class="tag__wrap txt__tag" style="display: flex; justify-content: space-between;">
                 <ul class="tag" style="margin-right: auto;">
                 <c:choose><c:when test="${detail.tradeFin eq 0 }"><li class="on">판매중</li></c:when><c:otherwise><li class="off">판매완료</c:otherwise></c:choose>
                 </ul>
                  <c:if test="${sessionScope.mid eq detail.mid || sessionScope.mgrade eq 4 }">
                 <button class="edit" onclick="edit()">수정</button>
                 <button class="del"  onclick="del()" >삭제</button>
                 </c:if> 
                 </div>
                 <p class="txt__tit26">${detail.btitle }</p>
                 <div class="location"><i class="fa-solid fa-location-dot"></i> &nbsp; <span class="address2">${detail.addr }</span></div>
                 </div>
			   <hr class="detail-divline">
			   <div class="spaceDetailInfo_summary">
			   <div class="host" style="display: flex; align-items:baseline;"><p class="txt__tit">호스트 &nbsp;${detail.mid } &nbsp;<i class="fa-solid fa-star" style="color: #e2d86a;"></i> ${detail.averageS }
			   <div class="iconright" style="margin-left: auto; margin-right: 5px;"><i class="fa-regular fa-user" style="color: #ffffff;"></i> &nbsp; <i class="fa-solid fa-ban" style="color: #ffffff;" onclick="report()"></i></div></div>
			   <div style="display: flex; align-items:baseline;"><p class="txt__tit">공간 소개</p></div>
			   		<div class="detailContext">
			   			<p class="txt__tit26">공간 정보</p>
			   			<p class="detailc">
			   			 <img class="cate" src="../img/icon/${detail.cateIcon }" /> &nbsp; ${detail.cateName } </p>
			   			 <p class="detailc">
			   			 <img class="cate" src="../img/icon/clock.png" /> &nbsp; 대여가능시간 : ${detail.startTime }:00 ~ ${detail.endTime }:00 </p>
			   			<p class="detailp">${detail.bcontent }</p>
			   		</div>
			   		
			   		<div class="detailContext">
			   			<p class="txt__tit26">시설정보</p>
			   			<p class="detailc"><img class="cate" src="../img/icon/cube.png" /> &nbsp; 공간 면적 : ${detail.size } ㎡ </p>
			   			<c:forEach items="${equipDetail }" var="n">
			   			<p class="detailc"><img class="cate" src="../img/icon/${n.eicon }" /> &nbsp; ${n.ename } </p>
			   			</c:forEach>
			   			
			   		</div>
			   		<div class="detailContext">
			   		<p class="txt__tit26">주의사항</p>
			   		<div class="precautionTextContainer">
			   		<p class="detailp">
			   		- 대여 시간보다 적게 사용 하더라도 대관비는 환불되지 않습니다.
			   		</p>
			   		<p class="detailp">
			   		- 기물 파손 및 청소 등의 사유로 보증금을 호스트에게 입금하여야 합니다.
			   		</p>
			   		<p class="detailp">
			   		- 사용기간이 추가될 경우, 협의를 통해 추가 지불을 해야합니다.
			   		</p>
			   		<p class="detailp">
			   		- 개인간의 거래에 대한 책임은 어플에서 책임지지 않습니다.
			   		</p>
			   		<p class="detailp">
			   		- 시설 훼손 및 기물 파손 시 손해액을 호스트에게 배상하여야 합니다..
			   		</p>
			   		</div>
			   		
			   		</div>
			  
			 </div>
			 </div>
	<section class="full-section slide_limit">
	<hr class="detail-divline2">
	<div class="spaceDetailInfo_summary">
	<p class="txt__tit">
	위치 
	</p>
	<div id="map" style='height:auto; width: 100%; aspect-ratio: auto 4 / 2.5;'></div>
	<div class="detailmap"><i class="fa-solid fa-house"></i>우편번호 &nbsp; ${detail.addNum }</div>
	<div class="detailmap"><i class="fa-solid fa-location-dot"></i> 상세주소 &nbsp; ${detail.addr }  ${detail.addDetail } </div>
	</div>
	<hr class="detail-divline2">
	<c:if test="${not empty place}">
	<section class="section--story inner pdb0 m--pdt110" id="similar-space">
	<p class="txt__tit">비슷한 공간</p>
	<div class="owl-carousel owl-theme card__carousel card owl-loaded">
		<!-- 요 밑에 친구를 foreach로 돌리기  -->
		<div class="calender-cardmb-normal" onclick="window.location.href='./bdetail?bno=${place[0].bno}'">
		<div class="imagemb-box">
        <img  src="/img/places/${place[0].image }" alt="">
        </div>
        <div class="calendercard-innermb">
        <p class="txt__card__tit">${place[0].btitle }<p class="txt__subtit__sm">${place[0].addr }</p>
         <div class="txt__subtit__eventmb">대여시간 <span class="term">${place[0].startTime }:00 -${place[0].endTime }:00</span></div>
        </div>
        </div>
	</div>
	</section>
	</c:if>

	</section>
	</section>
		
	
	</div>
	</section>
</div>
<footer class="footer1400">
        <div id="footer__box" class="footer__inner txt__subtit">
          <div class="flex">
            <ul>
              <li><a href="/notice/list">공지사항</a></li>
              <li class="line" style="border-left: 1px solid grey; height: 14px; padding-right: 18px;"></li>
              <li><a href="/contact/forms">제휴 및 입점문의</a></li>
              <li class="line" style="border-left: 1px solid grey; height: 14px; padding-right: 18px;"></li>
              <li><a href="/qna/list">문의하기</a></li>
              <li class="line" style="border-left: 1px solid grey; height: 14px; padding-right: 18px;"></li>
              <li><a href="/faq">자주 묻는 질문</a></li>
              <li class="line" style="border-left: 1px solid grey; height: 14px; padding-right: 18px;"></li>
              <li><a href="/help/policy">이용약관</a></li>
                   <c:if test="${sessionScope.mgrade eq 4}"><a href="./admin/main">관리자페이지</a></c:if>             
            </ul>
          </div>
          <hr style="margin-top:12px; margin-bottom: 20px; width: 100%;">
          <div class="contact-social">
          <div>
            <img style="width: 96px;margin-left: 4px;" src="./img/JustSharelogo.png" alt="">
            <p>서울특별시 강남구 테헤란로7길 7 에스코빌딩 6~7층<br>
            TEL : <a href="tel:010-1111-2222">010-1111-2222</a> &nbsp;&nbsp;사업자등록번호 : 000-00-00000 <br>
            <a href="mailto:valuevenue@valuevenue.co.kr">JustShare@valuevenue.co.kr</a> </p>
          </div>
        </div>
        </div>
      </footer>
<nav class="bottom_nav_menu">
   <ul><!-- 여기 수정함 b로-->
      <li >
      <div class="like" data-bno=${param.bno }>  
       	<c:choose>
		<c:when test="${isLike eq 1  }">     
		<img class="likeon" src="../img/icon/zzheart.png" />
        <img class="likeoff" src="../img/icon/zheart.png" style='display: none'/>
		</c:when>
		<c:otherwise>
		<img class="likeon" src="../img/icon/zzheart.png" style='display: none'/>
        <img class="likeoff" src="../img/icon/zheart.png" />
		</c:otherwise>
		</c:choose>  	
        </div>
        </li>

      <li class="placep">${detail.price } 원</li>

      <li class="trade" onclick="chat()">거래하기</li>
   </ul>
</nav>
<script>
   //좋아요 
   $(document).on("click", ".like", function() {
	    const mid = "${sessionScope.mid}";
	    // 로그인 하지 않았으면 알림창 띄우고 스크립트 종료
	    if (!mid) {
	        alert("로그인이 필요합니다.");
	        return;
	    }

	    const bno = $(this).closest(".like").data("bno");
	    const $img = $(this).find("img.likeon");
	    console.log(bno);
	    let likes = "";

	    if ($img.css("display") === "none") {
	        likes = "on";
	        $img.show(); // 이미지를 보이게 함
	        $img.siblings(".likeoff").hide(); // 형제 엘리먼트를 숨김
	    } else {
	        likes = "off";
	        $img.hide(); // 이미지를 숨김
	        $img.siblings(".likeoff").show(); // 형제 엘리먼트를 보이게 함
	    }

	    const data = {
	        mid: mid,
	        likes: likes,
	        bno: bno
	    };

	    $.ajax({
	        url: "/like",
	        type: "POST",
	        data: data
	    })
	    .done(function(result) {
	        console.log(result.body);
	        
	    })
	    .fail(function(error) {
	        alert(error.responseText);
	    });
	
	    
	});
 </script>

<script type="text/javascript">
	let sid = "${sessionScope.mid}";
	console.log(sid)
	let mid = "${detail.mid}";
	let tradeFin=${detail.tradeFin};
	var mgrade = ${sessionScope.mgrade};
	console.log(tradeFin);

function del() {
	let chk = confirm("삭제하시겠습니까?"); //참  거짓으로 나옵니다.
	
	if(chk) {
		if(sid == mid || mgrade == 4  ){
		location.href ="/bdelete?bno=${detail.bno }";
		}else{
			alert("해당 게시물 작성자만 삭제 가능합니다.")
		}
	}
}
function edit(){
	let chk2 = confirm("수정하시겠습니까?");
	if(chk2){
		if(sid == mid || mgrade == 4 ){
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
		if(tradeFin == 1){
			alert("거래 완료된 글은 신고할 수 없습니다")
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
	if(tradeFin != 0 ){
		alert("거래 완료된 게시물은 거래할 수 없습니다")
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


var iwContent = '<div style="padding:5px; width: 100px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">'+"${detail.btitle}"+'</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
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
    
      const swiper = new Swiper('.swiper', {
    	  // Optional parameters
    	  direction: 'vertical',
    	  autoplay: {
              delay: 2500,
              disableOnInteraction: false,
            },
    	  loop: true,
    	  pagination: {
    	    el: '.swiper-pagination',
    	    clickable: true,
    	  },

    	  // Navigation arrows
    	  navigation: {
    	    nextEl: '.swiper-button-next',
    	    prevEl: '.swiper-button-prev',
    	  },

    	  // And if we need scrollbar
    	  scrollbar: {
    	    el: '.swiper-scrollbar',
    	  },
    	});
      
      
    </script>
 <!-- 스와이퍼 사용  -->   

 
</body>
</html>