<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>카테고리별 장소 검색하기</title>
<style type="text/css">
.map-wrap { position: absolute; left: 0; top:50px; right:0; bottom:60px; }
.map-wrap .marker { position: absolute; }
.map-wrap .marker img { width:36px; }
.map-wrap .btns { position: absolute; left: 20px; bottom:20px; right:20px; }
.map-wrap .btns .b1 { display: block; height: 50px; line-height: 49px; text-align: center; font-size:21px; color: #fff; background: #f18c2c; border-radius:5px; margin-bottom: 7px;  }
.map-wrap .btns .b1:before { content: ''; display: inline-block; vertical-align: middle; background: url(../img/ico_chk.png) no-repeat 50% 50%; width:25px; height: 21px; background-size:25px auto;margin:-5px 10px 0 0; }
.map-wrap .btns .desc { border-radius:4px; line-height: 30px; font-size:13px; color: #fff; text-align: center; background: rgba(0,0,0,0.6);}
.map-wrap .btns .desc:before { content: ''; display: inline-block; vertical-align: middle; background: url(../img/ico_photo.png) no-repeat 50% 50%; width:17px; height: 15px; background-size:17px auto; margin:-3px 5px 0 0; }
.map-wrap .quick { position: absolute; right:20px; top:20px; }
.map-wrap .quick a { display: block; width:34px; margin-bottom: 5px; }
.map-wrap .quick a img { width:100%; }

/***********************************************************************************************
MODAL
***********************************************************************************************/
.hidden { overflow:hidden; }
.modal-backdrop {position: fixed; top:0; right:0; bottom:0; left:0; background:#000; z-index:7500; opacity:.7; filter:alpha(opacity=70);}
.modal {display:none; position:fixed; top:0; right:0; bottom:0; left:0; z-index:8000; overflow:auto; -webkit-overflow-scrolling:touch; outline:0; }
.modal-dialog {position:relative; width:auto;margin:0 auto 15px;  padding:0 20px; }
.modal-content {position:relative; background-color:#fff; outline:none;  /*overflow:hidden; */ border-radius:15px;  }
.modal-header { padding:25px 0;  }
.modal-header h4 img { height: 52px; }
.modal-header h4 { text-align: center; }
.modal-header h5 { text-align: center; font-size:24px; padding:30px 0 10px; font-family: 'S-CoreDream-6Bold';}
.modal-header h6 { display: flex; align-items: baseline;  padding:20px 20px 15px; }
.modal-header h6 strong { font-size:24px; color: #333; font-family: 'S-CoreDream-6Bold';}
.modal-header h6 span { padding-left: 8px; margin-left: 10px; position: relative; font-size:18px; color: #49a9de; font-weight: 400; letter-spacing: -1px; position: relative;}
.modal-header h6 span:before {content: ''; position: absolute; left: 0; top:50%; width:2px; height: 14px; margin-top:-7px; background: #f18c2c; }
.modal-header h7 { padding:20px 0 20px 20px;}
.modal-header h7 strong { display: inline-block;vertical-align: middle; padding-bottom: 4px; border-bottom: 2px solid #f18c2c; font-size:24px;font-family: 'S-CoreDream-6Bold'; }
.modal-header .close-modal { position: absolute; right:0; top:0; width:55px; height:55px; background: url(../img/ico_modal_close.png) no-repeat 50% 50%; text-indent: -9999px; background-size:22px auto;  }
.modal-body { padding:0 20px 20px; }
</style>
</head>
<body>
<!-- Bootstrap CSS -->

<!-- Bootstrap JavaScript 및 jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d13607a4c248029181b2f5c31929d16d&libraries=services"></script>
</head>
<body>
	<div class="map-wrap" style="position: absolute; left: 0; top: 0; right: 0; bottom: 60px;">
		<div id="map" style="width:70%; height:360px"></div>
		<div class="quick" style="z-index:100;">
			<a href="javascript:;" onclick="panTo()"><img src="../img/mylocation64.png" ></a>
			<a href="javascript:;" id="filter"><img src="../img/9.PNG"></a>
		</div>
	</div>
	<script>
	
		var latitude = "";
		var longitude = "";

		navigator.geolocation.getCurrentPosition(function(position) {
		    latitude = position.coords.latitude;
		    longitude = position.coords.longitude;
		    console.log(latitude);
		    console.log(longitude);
		});
		
		var mylocationCheck = false;
		var foodCheck = true;
		var hotelCheck = true;
		let map;
		let ps;
		let markers = [];
		let markerPosition = [];

		kakaomap(hotelCheck,foodCheck);

		$(function() {
			$("#filter").click(function() {
				$('#modal3').modal();
			});
			$('#foodCheck').change(function() {
				if($(this).is(":checked")) {
					foodCheck=true;
				}else{
					foodCheck=false;
				}
				searchPlaces(hotelCheck,foodCheck);
			});
			$('#hotelCheck').change(function() {
				if($(this).is(":checked")) {
					hotelCheck=true;
				}else{
					hotelCheck=false;
				}
				searchPlaces(hotelCheck,foodCheck);
			});
		});
		function panTo() {
			if (navigator.geolocation) {
				mylocationCheck = true;
				if(latitude == ""){
					alert("GPS정보를 수신 중입니다.\r\n잠시 후 다시 시도해주세요");
					return;
				}else{
					var moveLatLon = new kakao.maps.LatLng(latitude, longitude);
					map.panTo(moveLatLon);
				}
			}
		}
		function kakaomap(hotelCheck,foodCheck){
			/*
			AD5 숙박
			FD6 음식점
			*/
			var mapContainer = document.getElementById('map'), // 지도 표기 DIV
			mapOption = {
				center: new kakao.maps.LatLng(37.566826, 126.9786567), //중심좌표
				level: "5" // 지도의 확대 영역
			};
			map = new kakao.maps.Map(mapContainer, mapOption);
			ps = new kakao.maps.services.Places(map);
			kakao.maps.event.addListener(map, 'idle', searchPlaces);

			searchPlaces();
		}

		function searchPlaces() {
			removeMarker();

			if(mylocationCheck == true){
				if (navigator.geolocation) {
					var imageSize = new kakao.maps.Size(24, 24);
					//현재 내 위치 이미지
					var imageSrc = 'img/reallocation.png';
					var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
					var marker = new kakao.maps.Marker({	//지도에 뿌려주는 이미지마커
						map: map, // 마커를 표시할 지도
						position: new kakao.maps.LatLng(latitude, longitude) ,
						zIndex: 5,
						image : markerImage // 마커 이미지
					});
					markers.push(marker);
				}
			}
			if(foodCheck == true){
				ps.categorySearch('FD6', placesSearchCB, {useMapBounds:true});	
			}
			if(hotelCheck == true){
				ps.categorySearch('AD5', placesSearchCB, {useMapBounds:true});
			}

		}
		function placesSearchCB (data, status, pagination) {
			if (status === kakao.maps.services.Status.OK) {
				for (var i=0; i<data.length; i++) {
					displayMarker(data[i]);
				}
			}
		}
		<c:forEach items="${ListAll}" var="all">
		// 지도에 마커를 표시하는 함수입니다
		function displayMarker(place) {
			// 마커를 생성하고 지도에 표시합니다
			if(place.category_group_code == "FD6"){
				imageSrc = '../img/black24.png';
			}else if(place.category_group_code == "AD5"){
				imageSrc = '../img/red24.png';
			}
			var imageSize = new kakao.maps.Size(22, 22);
			var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
			var marker = new kakao.maps.Marker({
				map: map,
				position: new kakao.maps.LatLng(place.y, place.x) ,
				zIndex: 3,
				image : markerImage
			});
			markers.push(marker);
			// 마커에 클릭이벤트를 등록합니다
			kakao.maps.event.addListener(marker, 'click', function() {
				//음식점
				if(place.category_group_code == "FD6"){
					$('#category_name').text("음식점 : ");
				}else{
					$('#category_name').text("숙박 : ");
				}

				$('${btitle}').text(place.place_name);
				$('#place_phone').text(place.phone);
				$('#place_addr').text(place.address_name);
				$('#modal5').modal();
			});
		}
	</c:forEach>
		function removeMarker() {
			for ( var i = 0; i < markers.length; i++ ) {
				markers[i].setMap(null);
			}
			markers = [];
		}
	</script>
	<div class="modal" id="modal3" style="z-index:999999;">
		<div class="modal-dialog" style="max-width:350px">
			<div class="modal-content">
				<div class="modal-header">
					<h7><strong>카테고리</strong></h7>
					<button class="close-modal" data-dismiss="modal">닫기</button>
				</div>
				<div class="modal-body">
					<div class="info" style="display:inline-flex;">
						<input type="checkbox" id="hotelCheck" checked>
						<label for="hotelCheck"></label>

						<input type="checkbox" id="foodCheck" checked>
						<label for="foodCheck"></label>
					</div>
					<div class="btns">
						<a href="javascript:;" class="b1" data-dismiss="modal">닫기</a>
					</div>

				</div>
			</div>
		</div>
	</div>
	<div class="modal" id="modal5">
		<div class="modal-dialog" style="max-width:800px">
			<div class="modal-content">
				<div class="modal-header">
					<h7><strong>정보</strong></h7>
					<button class="close-modal" data-dismiss="modal">닫기</button>
				</div>
				<div class="modal-body">
					<div class="info">
						<dl>
							<dt id="category_name"></dt>
							<dd><strong id="place_name"></strong></dd>
						</dl>
						<dl>
							<dt>연락처 : </dt>
							<dd id="place_phone"></dd>
						</dl>
						<dl>
							<dt>주소 : </dt>
							<dd id="place_addr"></dd>
						</dl>
						<div class="btns">
							<a href="javascript:;" class="b1" data-dismiss="modal">닫기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>