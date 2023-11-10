<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scaleable=no, maximum-scale=1" />
   <meta name="description" content="가치공간은 가능성 속 잠재된 가치를 발굴하며, 공간 소유자에게는 유휴공간의 재발견을, 브랜드에게는 홍보의 장을, 소비자에게는 새로운 경험을 선사합니다"/>
    <title>Just Share</title>
   <link rel="canonical"  href="https://www.valuevenue.co.kr/"/>
    <link rel="stylesheet" href="/css/fullcalendar.css" />
    <link rel="stylesheet" href="/css/import.css?ver=20000120" />
    <link rel="stylesheet" href="/css/style.css?ver=20000120" />
    <link rel="stylesheet" href="/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="/css/valuevenue.css?ver=20000120" />
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
   <!--link rel="stylesheet" href="/css/spacedetail.css?ver=20000120"-->
   <link rel="stylesheet" href="/css/listpage.css?ver=20000120">
   <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"> 
   <link rel="stylesheet" href="/css/main_page.css" />

   <!-- 회원가입 3가지회원 유형 css new -->
   <link rel="stylesheet" href="/css/register.css?ver=20000120" />
   <!-- 고객센터 css -->
   <link rel="stylesheet" href="/css/customer_service_center.css?ver=20000120" />
   <!-- 폰트어썸 -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

   <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />
   <link rel="shortcut icon" href="/images/v_favicon32.ico" sizes="32x32" />
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
   
   
   
   <meta property="og:locale"       content="ko_KR" />
   <meta property="og:type"       content="website" />
   <meta property="og:title"       content="팝업스토어 NO.1 가치공간 - 온라이프(On-Life) 리테일 플랫폼" />
   <meta property="og:description"  content="가치공간은 가능성 속 잠재된 가치를 발굴하며, 공간 소유자에게는 유휴공간의 재발견을, 브랜드에게는 홍보의 장을, 소비자에게는 새로운 경험을 선사합니다" />
   <meta property="og:url"          content="https://www.valuevenue.co.kr/" />
   <meta property="og:image"       content="https://www.valuevenue.co.kr/images/main_default_v.jpg"/>
   <meta property="og:site_name"    content="가치공간" />
   <meta name="naver-site-verification" content="daa1d446d775041d4d3610f1a1cc60c1562046b1" />

   <meta name="twitter:card"       content="summary" />
   <meta name="twitter:title"       content="팝업스토어 NO.1 가치공간 - 온라이프(On-Life) 리테일 플랫폼" />
   <meta name="twitter:description" content="가치공간은 가능성 속 잠재된 가치를 발굴하며, 공간 소유자에게는 유휴공간의 재발견을, 브랜드에게는 홍보의 장을, 소비자에게는 새로운 경험을 선사합니다" />
   <meta name="twitter:image"       content="https://www.valuevenue.co.kr/images/main_default_v.jpg" />
   <meta name="twitter:domain"       content="가치공간" />
   
   <meta name="robots" content="index,follow">
   <meta name="naver-site-verification" content="a2a89e942b8a6cb220490a635dc04627db8547ed" />
   <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    <script src="/js/valuevenue.js?ver=20000120" defer></script>
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>   
    <script src="/js/owl.carousel.min.js"></script>
    <script src="/js/common.js?ver=20000120" defer></script>
    <script src="/js/cookie.js?ver=20000120" defer></script>

<meta charset="UTF-8">
<title>Map</title>
<style>

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
	left: -11px;
	top: 20%;
}

.map_area .set_map {
    z-index: 10;
    position: absolute;
    width: 100px;
}

.set_map {
	margin-bottom: 9px;
	margin: auto;
}

.control_map {
	width: 20px;
	height: 20px;
	background-position: -20px 0;
}

.set_map .mylocationblue_img {
	margin-bottom: 9px;
}

.custom-infowindow {
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


.custom-infowindow .close-button {
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

.mylocationblue_img {
	width: 45px;
}

.tit_location {
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
	box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .16);
}

#map {
	    position: relative;
    overflow: hidden;
    height: 763px;
}

    :root { 
        -padding-horizontal: 16px; 
        -padding-horizontal-negative: calc(-1 * var(- -padding-horizontal))
    }
    
/*     @media screen and (max-width: 319px) {
        :root { 
            -padding-horizontal: 10px
        }
    } */

    .EEbJ3 {
        position: fixed;
        right: 0;
        bottom: 24px;
        left: 0;
        z-index: 5000;
        text-align: center
    }
    
    .EEbJ3 .LSabB {
        display: inline-block;
        vertical-align: top;
        padding: 13px 26px 10px;
        border-radius: 27px;
        background: #0191ff;
        box-shadow: 0 3px 10px 0 rgba(0, 0, 0, .07), 0 2px 0 0 #0c7ed6, 0 -2px
            4px 0 rgba(0, 0, 0, .08);
        font-weight: 700;
        color: #fff;
        line-height: 2.2rem
    }
    
    .EEbJ3 .LSabB .bOzdO {
        fill: #fff;
        width: 13px;
        height: 12px;
        margin: 5px 0 0 7px
    }

    .bTbC9 {
        margin-top: 4px;
        font-size: 1.0rem
    }
    
    .bTbC9 .E3JsK::after {
        display: block;
        clear: both;
        content: ""
    }
    
    .bTbC9 .E3JsK+.E3JsK {
        margin-top: 16px
    }
    
    .bTbC9 .enwXz {
        position: relative;
        float: left;
        margin-right: 8px
    }
    
    .bTbC9 .enwXz .Gelhv {
        fill: #b6b6b9;
        fill: rgba(var(- -gray60), 1);
        width: 18px;
        height: 18px;
        margin-top: 1px
    }
    
    .bTbC9 .IaqcP {
        overflow: hidden;
        color: #444447;
        color: rgba(var(- -gray20), 1)
    }
    
    .bTbC9 .aib5d ._1vEbV {
        margin-right: 4px
    }
    
    .bTbC9 .aib5d .CUaBo {
        display: inline-block;
        vertical-align: top
    }
    
    .bTbC9 .aib5d .kA6lR {
        margin-right: 5px
    }
    
    .bTbC9 .aib5d .CUaBo+.CUaBo::before {
        display: inline-block;
        vertical-align: top;
        width: 3px;
        height: 3px;
        margin-top: 9px;
        margin-right: 5px;
        margin-left: 5px;
        border-radius: 50%;
        background: #b6b6b9;
        background: rgba(var(- -gray60), 1);
        content: "";
        margin: 9px 5px 0 0
    }
    
    .bTbC9 .MxJwz {
        margin-top: 4px
    }
    
    .bTbC9 .MxJwz .Pk6NG {
        display: inline-block;
        vertical-align: top;
        min-width: 18px;
        height: 18px;
        margin: 1px 4px 0 0;
        padding: 0 5px;
        border-radius: 9px;
        box-sizing: border-box;
        font-size: 1.1rem;
        font-weight: 600;
        color: #fff;
        line-height: 1.8rem;
        text-align: center
    }
/*     
    .bTbC9:not(.LPCef, .Ke5RZ) .E3JsK.OC9XQ {
        overflow: hidden;
        overflow-y: auto;
        max-height: 85px;
        margin-top: 10px;
        padding-top: 10px;
        border-top: 1px solid;
        border-top-color: #f0f0f3;
        border-top-color: rgba(var(- -gray90), 1)
    }
     */
    .bTbC9:not(.LPCef, .Ke5RZ) .E3JsK.OC9XQ::-webkit-scrollbar {
        width: 6px;
        height: 6px
    }
    
    .bTbC9:not(.LPCef, .Ke5RZ) .E3JsK.OC9XQ::-webkit-scrollbar-thumb {
        border-radius: 3px;
        background: #c4c6c8
    }
    
/*     .bTbC9:not(.LPCef, .Ke5RZ) .E3JsK.OC9XQ::-webkit-scrollbar-track-piece {
        background: #f0f0f3;
        background: rgba(var(- -gray90), 1)
    }
     */
    .place_on_mobileweb .bTbC9:not(.LPCef, .Ke5RZ) .E3JsK.OC9XQ::-webkit-scrollbar,
        .place_on_nmap .bTbC9:not(.LPCef, .Ke5RZ) .E3JsK.OC9XQ::-webkit-scrollbar
        {
        display: none
    }
    
    .bTbC9:not(.LPCef, .Ke5RZ) .E3JsK.OC9XQ .IaqcP {
        color: #555558;
        color: rgba(var(- -gray30), 1)
    }
    
    .bTbC9.Ke5RZ {
        margin-top: 16px
    }
    
    .bTbC9.Ke5RZ .aib5d .Sdv8I+.Sdv8I {
        margin-top: 4px
    }
    
    .bTbC9.Ke5RZ .aib5d .erbnZ {
        margin-right: 4px;
        color: #939396;
        color: rgba(var(- -gray50), 1)
    }
    
    .bTbC9.LPCef:not(.Ke5RZ) {
        margin-top: 16px
    }

    .AhhJ9 {
        display: flex;
        height: 40px;
        margin-top: 16px;
        border: 1px solid;
        border-color: #e9e9ec;
        border-color: rgba(var(- -gray80), 1);
        border-radius: 8px;
        box-sizing: border-box
    }
    
    .AhhJ9 .qUp9v {
        display: flex;
        flex: 1;
        align-items: center;
        justify-content: center;
        height: 100%;
        font-size: 1.4rem;
        color: #444447;
        color: rgba(var(- -gray20), 1);
        line-height: 1.9rem
    }
    
    .AhhJ9 .qUp9v .uF189 {
        fill: #555558;
        fill: rgba(var(- -gray30), 1);
        width: 15px;
        height: 15px;
        margin: 0 5px 0 0
    }
    
   /*  .AhhJ9 .qUp9v+.qUp9v {
        border-left: 1px solid;
        border-left-color: #f0f0f3;
        border-left-color: rgba(var(- -gray90), 1)
    } */
    
    .AhhJ9.J6Sua:not(.zkAHQ) {
        height: 80px;
        margin-top: 0;
        border-top-width: 0;
        border-radius: 0 0 12px 12px
    }
    
    .AhhJ9.J6Sua:not(.zkAHQ) .qUp9v {
        flex-direction: column
    }
    
    .AhhJ9.J6Sua:not(.zkAHQ) .qUp9v .uF189 {
        width: 24px;
        height: 24px;
        margin: 0 auto 3px
    }

    .YbMH5 {
        padding: 0 12px
    }
    
    .o6AYQ {
        padding: 0px;
        border: 1px solid black;
        /* border-radius: 18px 18px 0 0; */
        background: #fcfcfc;
    }
    
    .o6AYQ.IgtKb .BaVYi {
        display: inline-block;
        vertical-align: top
    }
    
    .o6AYQ.IgtKb .BaVYi .MsbJT {
        display: inline-block;
        vertical-align: top;
        padding: 8px
    }
    
  /*   .o6AYQ.IgtKb+.o6AYQ.IgtKb {
        border-top: 1px solid;
        border-top-color: #f0f0f3;
        border-top-color: rgba(var(- -gray90), 1)
    } */
    
    .D6DtM {
        overflow: hidden
    }
    
    .HuWKL .vWRnd {
    font-size:1.5rem;
    line-height: 4.4rem;

    }
    
    .HuWKL .AIPix {
        margin-right: 4px;
        font-size: 1.8rem;
        font-weight: 600
    }
    
    .HuWKL .AIPix.XGcQO {
        color: #222225;
        color: rgba(var(- -gray10), 1)
    }
    
    .HuWKL .KjO_m {
        flex: none;
        position: relative
    }
    
    .HuWKL .KjO_m .CCq3i {
        margin: 4px 6px 0 0
    }
    
    .HuWKL .KjO_m.ptaGv .CCq3i {
        fill: #03aa5a;
        fill: rgba(var(- -searchGreen), 1);
        width: 14px;
        height: 14px
    }
    
    .HuWKL .oxuwB {
        display: inline-block;
        vertical-align: top;
        position: relative;
        margin-right: 8px;
        font-size: 1.4rem;
        color: #939396;
        color: rgba(var(- -gray50), 1)
    }
    
    .HuWKL .oxuwB+.oxuwB {
        margin-left: 8px
    }
    
    .HuWKL .oxuwB+.oxuwB::before {
        position: absolute;
        top: 6px;
        left: -8px;
        width: 1px;
        height: 11px;
        background: #e9e9ec;
        background: rgba(var(- -gray80), 1);
        content: ""
    }
    
    .G5wJ8 {
        position: fixed;
        right: 0;
        bottom: 56px;
        left: 0;
        z-index: 5000;
    }
#app-root {
  display: none;
}

.map_wrap {
    position: relative;
    overflow: hidden;
    width: 100%;
    height: auto;
}

/* .custom_zoomcontrol {
    position: absolute;
    top: 0px;
    left: 0px;
    width: 18%;
    height: auto;
    overflow: hidden;
    z-index: 1;
}
.radius_border{
	border-radius:5px;
}     

.custom_zoomcontrol button {
	display:block;
    width: 100%;
    height: auto;
	text-align:center;
	cursor:pointer;
	background: none;
}     

.custom_zoomcontrol button img {
	width: 40px;
    height: auto;
    padding: 3px 0;
    border: none
}      */

/* .mylocationblue_btn{
	border: 0; 
	background: none;
	 cursor: pointer; 
	 float: right; 
	 margin-left: 10px;
} */
	         
	         
.map_area .radius_border {
    top: 8px;
    left: 10px;
}
.map_area .custom_zoomcontrol {
    position: absolute;
   top: -1px;
    left: 3px;
    z-index: 10;
    width: 40px;
}

.custom_zoomcontrol .mylocationblue_btn {
        width: 40px;
    margin-right: 4px;
    margin-bottom: -9px;
}
.mylocationblue_btn{
    width: 55px;
    height: 60px;
	background: none;
}
.control_map .mylocationblue_img {
    width: 20px;
    height: 20px;
    background-position: -20px 0;
}
.control_map {
    position: relative;
    width: 36px;
    height: 34px;
    margin-bottom: 0;
    margin-left: 1px;
    border-bottom: 0 none;
    border-radius: 5px;
    border-bottom-left-radius: 0;
    border-bottom-right-radius: 0;
    background-color: transparent;
    box-shadow: none;
}
#zoomInButton {
    position: relative;
    width: 38px;
    height: 60px;
    margin-bottom: -10px;
    margin-left: 1px;
	background: none;
    border: none;
    
}
.radius_border {
    position: relative;
    width: 36px;
    height: 34px;
    margin: 1px 0 0 1px;
	background: none;
  	border: none;
}
#zoomOutButton {
    position: relative;
    margin: -17px 0 0 1px;
    background: none;
 	border: none;
}
.radius_border #zoomOutButton {
    width: 38px;
    height: 60px;

}  

.map_viewer_txt {
	position: relative;
	min-height: 101px;
	margin: 0 5px 5px;
	padding: 14px 58px 14px 14px;
	border: 1px solid rgba(0, 0, 0, 0.12);
	background: rgba(255, 255, 255, 0.96);
	background-clip: padding-box;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
}

.map_viewer_txt p {
	overflow: hidden;
	max-width: 100%;
	padding-top: 4px;
	font-size: 15px;
	color: #666;
	line-height: 19px;
}

.map_viewer_txt strong {
	font-size: 18px;
	color: #111;
	font-weight: normal;
	line-height: 22px;
	vertical-align: top;
}

.map_viewer_txt strong span {
	display: inline-block;
	vertical-align: top;
}

.map_viewer_txt .item_cate {
	display: inline-block;
	margin-top: 2px;
	font-size: 13px;
	color: #999;
	vertical-align: top;
}

.map_viewer_txt .item_tel {
	display: inline-block;
	margin-top: 2px;
	font-size: 13px;
	color: #4783e6;
	vertical-align: top;
}

.map_viewer_txt .item_cate + .item_tel:before {
	content: '';
	display: inline-block;
	width: 0;
	height: 10px;
	border-left: 1px solid #ebebeb;
	vertical-align: top;
	margin: 3px 8px 0;
}

.map_viewer_txt_end {
	min-height: 101px;
	padding: 14px !important;
}

.map_viewer_txt_end .search_txt_msg {
	margin-right: -36px;
	padding: 26px 0 0;
	font-size: 14px;
	color: #999;
	text-align: center;
}

.map_viewer_txt_end .search_txt_msg .ico_i {
	margin: 2px 4px 0 0;
}

.map_viewer_txt_shopping {
	padding: 12px 92px 12px 14px;
}

.map_viewer_txt_shopping p {
	max-width: none;
	padding-top: 3px;
	margin-right: -31px;
}

.map_viewer_txt_shopping .item_thumb ~ p,
.map_viewer_txt_shopping .item_thumb ~ .item_name {
	margin-right: 0;
}

.map_viewer_txt_shopping .item_thumb {
	overflow: hidden;
	position: absolute;
	top: 12px;
	right: 13px;
}
</style>

</head>
<%@ include file="header.jsp"%>
<body>
		<hr class="hide">

		<article id="daumContent" role="main" class="cont_map">

			<div class="content_map">
				<div class="map_area hide" style="display: block;">
					<div class="wrap_tit">
						<strong class="tit_location"></strong>
					</div>
					<div class="map_wrap">
					<div id="map">
						<div style="cursor: auto; z-index: 2;"></div>
					</div>

					<div class="custom_zoomcontrol radius_border">
						<button type="button" onclick="panTo()"class="mylocationblue_btn">
							<img class="mylocationblue_img" src="../img/mylocationblue.png" >
						</button>
					    <button id="zoomInButton">
					    	<img src="../img/plus.png" alt="확대">
					    </button>
						<button id="zoomOutButton">
							<img src="../img/minus.png" alt="축소">
						</button>
					</div>
				</div>
			</div>
	</div>
		</article>
<div id="app-root" class="place_didmount">
    <div>
        <div class="BXtr_">
            <div role="main">
                <div style="min-height:auto">
                    <div class="rAcDm">
                        <div class="G5wJ8">
                            <div class="YbMH5"></div> 
                                        <div class="map_viewer_txt map_viewer_txt_shopping _linkSiteview">
							                    <div class="item_thumb"><span class="place-image" ></span></div>
							                    <div class="item_name"><strong class="btitle"></strong></div>
							                    <p class="item_addr"><span class="wrap_addr"></span></p><br>
							                    <div class="map_bno"><span class="bno"></span></div>
							                </div>
							            </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
  

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d13607a4c248029181b2f5c31929d16d&libraries=services"></script>


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
    
   // HTML 버튼 요소를 가져옵니다
	var zoomInButton = document.getElementById("zoomInButton");
	var zoomOutButton = document.getElementById("zoomOutButton");
	
	// 확대 버튼 클릭 이벤트 처리
	zoomInButton.addEventListener("click", function() {
	    var level = map.getLevel();
	    map.setLevel(level - 1);
	});
	
	// 축소 버튼 클릭 이벤트 처리
	zoomOutButton.addEventListener("click", function() {
	    var level = map.getLevel();
	    map.setLevel(level + 1);
	});
     
    
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
    var radiusInKm = 50;
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
             };
             
             
             var content = '<div style="display:none"><a><strong>' + item.content + '</strong></a></div>'
            	/*  '<div class="custom-infowindow" style="display:none";>'
     	        + '<a><strong>' + item.content + '</strong></a>'
     	        + '<div class="desc">'
     	        + '</div>'
     	        + '<button class="close-button" onclick="closeCustomOverlay()">닫기</button>' 
     	        + '</div>' */;

            var customOverlay  = new kakao.maps.CustomOverlay({
            	clickable: true,
                content: content,
                position: marker.getPosition(),
            });

            customOverlay.setMap(map);
            currentCustomOverlay = customOverlay; 
            
         // "app-root" 요소 보이기
           
            var appRoot = document.getElementById("app-root");

            function applyStylesForDesktop() {
                appRoot.style.display = "block";
                appRoot.style.position = "absolute";
                appRoot.style.bottom = "25%";
                appRoot.style.left = "0";
            }
            applyStylesForDesktop();
            
         // 모든 요소를 선택
            var btitleElements = document.querySelectorAll('.btitle');

            // 값을 저장할 배열을 초기화
            var btitleValues = [];

            // 각 요소에서 텍스트 내용을 가져와 배열에 추가
            btitleElements.forEach(function(btitleElement) {
              btitleValues.push(btitleElement.textContent);
            });
            
            // 가져온 데이터로 HTML 업데이트
            var btitleElement = document.querySelector('.item_name .btitle');
            btitleElement.textContent = btitleValues[0]
            
            
          // 요소를 선택
            var addrElement = document.querySelector('.addr');

            // 텍스트 내용을 가져옴
            var addrValue = addrElement.textContent;

            // 결과를 출력하거나 다른 작업을 수행
            console.log("addr 값:", addrValue);
            
         // 값을 넣을 요소를 선택
            var enwXzElement = document.querySelector('.item_addr');

            // 해당 요소 내부의 span 요소를 선택
            var spanElement = enwXzElement.querySelector('span');

            // 값을 설정
            spanElement.textContent =  addrElement.textContent;
            console.log(spanElement.textContent )
            
            //======================================================

         // map_img 클래스가 있는 div 요소를 선택
            var mapImageContainer = document.querySelector('.item_thumb');

            // 이미지를 나타내는 img 요소를 선택
            var imageElement = document.querySelector('.place-image');

            // 이미지의 경로를 가져옴
            var imagePath = imageElement.src;
            imagesrc = imagePath.substring(25, imagePath.length);
            console.log(imagePath)
            console.log(imagesrc)

            // map_img 요소 안에 이미지가 이미 있는지 확인
            var existingImage = mapImageContainer.querySelector('img');

            // 이미지가 존재하면 삭제
            if (existingImage) {
                mapImageContainer.removeChild(existingImage);
            }

            // 새로운 img 요소를 생성
            var imageTag = document.createElement('img');
            imageTag.src = imagesrc; // 이미지 경로 설정
            imageTag.width = 70; // 가로 크기 설정 (픽셀)
            imageTag.height = 70; // 세로 크기 설정 (픽셀)

            // map_img 요소 안에 새로운 img 요소를 추가
            mapImageContainer.appendChild(imageTag);

            // 요소를 선택
            var bnoElement = document.querySelector('.reservation-link');

        	 // href 속성 값을 가져옴
            var hrefValue = bnoElement.getAttribute('href');

	         
	      // .bno 요소를 선택
	         var bnoSpan = document.querySelector('.bno');

	         // hrefValue 값을 .bno 요소의 내부 텍스트로 설정
	         bnoSpan.textContent = hrefValue;
	         
	         // 결과를 출력하거나 다른 작업을 수행
	         console.log("href 값:",  bnoSpan.textContent);
	         
	      // .map_bno 요소를 선택
	         var mapBnoElement = document.querySelector('.map_bno');
	      
	      // "/bdetail?bno=" 부분을 빈 문자열로 대체하여 원하는 값으로 설정
	         var cleanedHrefValue = hrefValue.replace(bnoSpan.textContent, "");

	         // .bno 요소의 내부 텍스트를 수정
	         bnoSpan.textContent = cleanedHrefValue;

	         // 결과를 출력
	         console.log("변경된 href 값:", bnoSpan.textContent);

	         // 새로운 링크 엘리먼트를 생성
	         var linkElement = document.createElement('a');
	     		// href 속성을 설정
	     		linkElement.href = hrefValue;

	     		// 내부 텍스트를 추가
	     		linkElement.textContent = " 상세보기";

	     		// 링크 엘리먼트를 .map_bno 요소에 추가
	     		mapBnoElement.appendChild(linkElement);
	     		
	     		var existingLinkElement = appRoot.querySelector('.map_bno a');

	     		if (existingLinkElement) {
	     		    // 부모 요소에서 자식 요소 제거
	     		    existingLinkElement.parentNode.removeChild(existingLinkElement);
	     		}
	     		mapBnoElement.appendChild(linkElement);


        });
    });
});

</script>
<%@ include file="footer.jsp"%>
</body>
</html>