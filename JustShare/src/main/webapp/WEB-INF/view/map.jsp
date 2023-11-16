<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scaleable=no, maximum-scale=1" />
    <title>Map</title>

    <link rel="stylesheet" href="/css/style.css?ver=20000120" />
    <link rel="stylesheet" href="/css/valuevenue.css?ver=20000120" />
    <link rel="stylesheet" href="/css/main_page.css" />
   <link rel="stylesheet" href="/css/map.css" />
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<meta charset="UTF-8">
<title>Map</title>

</head>
<body>
<%@ include file="header.jsp"%>
		<hr class="hide">

		<article id="daumContent" role="main" class="cont_map">

			<div class="content_map">
				<div class="map_area hide" style="display: block;">
						<div class="wrap_tit">
							<strong class="tit_location"></strong><br>
							<div class="cate_btn">
	     <button class="all"><img alt="all" src="./img/category/all.png"><br>전체보기</button>
	      <button class="category-button" data-category="카페"><img alt="commercial" src="./img/category/cafe.png"><br>카페</button>
	      <button class="category-button" data-category="식당"><img alt="studio" src="./img/category/food.png"><br>식당</button>
	      <button class="category-button" data-category="술집"><img alt="culture" src="./img/category/drink.png"><br>술집</button>
	      <button class="category-button" data-category="공방/작업실"><img alt="commercial" src="./img/category/else.png"><br>공방<br>작업실</button>
	      <button class="category-button" data-category="연습실"><img alt="business" src="./img/category/practice.png"><br>연습실</button>
	      <button class="category-button" data-category="녹음실"><img alt="studio" src="./img/category/rec.png"><br>녹음실</button>
	      <button class="category-button" data-category="파티장"><img alt="culture" src="./img/category/party.png"><br>파티장</button>
	      <button class="category-button" data-category="세트장"><img alt="business" src="./img/category/set.png"><br>세트장</button>
	      <button class="category-button" data-category="강당"><img alt="commercial" src="./img/category/auditorium.png"><br>강당</button>
	      <button class="category-button" data-category="사무실"><img alt="studio" src="./img/category/office.png"><br>사무실</button>
	      <button class="category-button" data-category="오피스텔"><img alt="culture" src="./img/category/officetels.png"><br>오피스텔</button>
	      <button class="category-button" data-category="갤러리"><img alt="business" src="./img/category/gallery.png"><br>갤러리</button>
	      <button class="category-button" data-category="공연장"><img alt="business" src="./img/category/concert.png"><br>공연장</button>
							</div>
	
	  </div>
					<div class="map_wrap">
					<div id="map">
						<div style="cursor: auto; z-index: 2;"></div>
					</div>
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
			
 <div class="button-container">
    <button class="toggle-menu-btn">
     <img alt="cate" src="./img/category/cate.png">
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
  
  
<script>
$(document).ready(function() {
    const cateBtn = $('.cate_btn');
    const toggleMenuBtn = $('.toggle-menu-btn');
    let isCateBtnVisible = true;

    // 초기 위치를 저장
    const initialCateBtnDisplay = cateBtn.css('display');

    toggleMenuBtn.click(function() {
        if (isCateBtnVisible) {
            cateBtn.hide();
        } else {
            // 다시 열릴 때 초기 위치로 설정
            cateBtn.css('display', initialCateBtnDisplay);
        }
        isCateBtnVisible = !isCateBtnVisible;
    });


});
</script>

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
                updateMapCenter(latitude, longitude); // 지도 중심 위치 업데이트
            }
            
        });
    }
}

//맵 중심을 업데이트하는 함수
function updateMapCenter(latitude, longitude) {
    var moveLatLon = new kakao.maps.LatLng(latitude, longitude);
    map.panTo(moveLatLon);

    // 위치 업데이트
    var geocoder = new kakao.maps.services.Geocoder();
    var latlng = new kakao.maps.LatLng(latitude, longitude);

    // 위도와 경도를 주소로 변환
    geocoder.coord2Address(latlng.getLng(), latlng.getLat(), function (result, status) {
        if (status === kakao.maps.services.Status.OK) {
            var address = result[0].address.address_name;
            document.querySelector(".tit_location").innerHTML = address;
        } else {
            alert("주소를 찾을 수 없습니다.");
        }
    });
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

function createMarker2(item, markerImage) {
	var marker = new kakao.maps.Marker({
	                    position: item.latlng,
	                    map: map,
	                    image: markerImage,
	                });
	                // 마커에 클릭 이벤트를 추가
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
	            //가비아용
	            //imagesrc = imagePath.substring(25, imagePath.length);
	            
	            //로컬호스트용
	            imagesrc = imagePath.substring(21, imagePath.length);
	            
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

	                markers.push(marker);
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

    
    kakao.maps.load(function(error) {
        var geocoder = new kakao.maps.services.Geocoder();
        var latlng = new kakao.maps.LatLng(latitude, longitude);

        // 위도와 경도를 주소로 변환
        geocoder.coord2Address(latlng.getLng(), latlng.getLat(), function(result, status) {
            if (status === kakao.maps.services.Status.OK) {
            	var address = result[0].address.address_name;
            	document.querySelector(".tit_location").innerHTML = address;
 		} else {
 			cosole.error("error")
              alert("주소를 찾을 수 없습니다.");
            }
          });
      });

    var data = [ 
        <c:forEach items="${cateAll}" var="all" varStatus="loop">
        {
        category: '${all.cname}',
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
 // 각 카테고리 버튼에 대한 클릭 이벤트 처리
    $('.category-button').click(function () {
        var category = $(this).data('category');
        
        // 해당 카테고리의 마커만 보이도록 설정
        showMarkersByCategory(category);
    });

    // 모든 마커를 지도에서 제거하는 함수
    function clearMarkers() {
        markers.forEach(function (marker) {
            marker.setMap(null);
        });
    }

    // 특정 카테고리의 마커만 지도에 표시하는 함수
    function showMarkersByCategory(category) {
        clearMarkers(); // 모든 마커 제거
        
        data.forEach(function (item) {
            if (item.category === category) {
            	var markerImage;
            	
            	  // 카테고리에 따라 다른 마커 이미지 선택
                switch (item.category) {
                    case '카페':
                        markerImage = new kakao.maps.MarkerImage('img/category/cafe.png', new kakao.maps.Size(30, 30));
                        break;
                    case '식당':
                        markerImage = new kakao.maps.MarkerImage('./img/category/food.png', new kakao.maps.Size(30, 30));
                        break;
                    case '술집':
                        markerImage = new kakao.maps.MarkerImage('./img/category/drink.png', new kakao.maps.Size(30, 30));
                        break;
                    case '공방/작업실':
                        markerImage = new kakao.maps.MarkerImage('./img/category/else.png', new kakao.maps.Size(30, 30));
                        break;
                    case '연습실':
                        markerImage = new kakao.maps.MarkerImage('img/category/practice.png', new kakao.maps.Size(30, 30));
                        break;
                    case '녹음실':
                        markerImage = new kakao.maps.MarkerImage('./img/category/rec.png', new kakao.maps.Size(30, 30));
                        break;
                    case '파티장':
                        markerImage = new kakao.maps.MarkerImage('./img/category/party.png', new kakao.maps.Size(30, 30));
                        break;
                    case '세트장':
                        markerImage = new kakao.maps.MarkerImage('./img/category/set.png', new kakao.maps.Size(30, 30));
                        break;
                    case '강당':
                        markerImage = new kakao.maps.MarkerImage('img/category/auditorium.png', new kakao.maps.Size(30, 30));
                        break;
                    case '사무실':
                        markerImage = new kakao.maps.MarkerImage('./img/category/office.png', new kakao.maps.Size(30, 30));
                        break;
                    case '오피스텔':
                        markerImage = new kakao.maps.MarkerImage('./img/category/officetels.png', new kakao.maps.Size(30, 30));
                        break;
                    case '갤러리':
                        markerImage = new kakao.maps.MarkerImage('./img/category/gallery.png', new kakao.maps.Size(30, 30));
                        break;
                    case '공연장':
                        markerImage = new kakao.maps.MarkerImage('./img/category/concert.png', new kakao.maps.Size(30, 30));
                        break;
                    
                    default:
                        markerImage = new kakao.maps.MarkerImage('', new kakao.maps.Size(40, 40));
                        break;
                }
            	  
              //모든 마커를 지도에서 표시하는 함수
                function showAllMarkers() {
                    clearMarkers(); // 모든 마커 제거

                    data.forEach(function (item) {
                        var markerImage = new kakao.maps.MarkerImage('img/blue192.png', new kakao.maps.Size(40, 40));
                        var marker = new kakao.maps.Marker({
                            position: item.latlng,
                            map: map,
                            image: markerImage,
                        });
                        markers.push(marker);
                        
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
                            //가비아용
                            imagesrc = imagePath.substring(25, imagePath.length);
                            
                            //로컬호스트용
                            //imagesrc = imagePath.substring(21, imagePath.length);
                            
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
                }

                $('.all').click(function () {
                    showAllMarkers(); // "all" 버튼 클릭 시 모든 마커를 보여주는 함수 호출
                });

            	  
                var marker = new kakao.maps.Marker({
                    position: item.latlng,
                    map: map,
                    image: markerImage,
                });
                // 마커에 클릭 이벤트를 추가
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
            //가비아용
            //imagesrc = imagePath.substring(25, imagePath.length);
            
            //로컬호스트용
            imagesrc = imagePath.substring(21, imagePath.length);
            
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

                markers.push(marker);
            }
        });
    }
    var infowindow = new kakao.maps.InfoWindow({ zIndex: 1 });
 // 마커 클릭 시 인포윈도우에 컨텐츠 표시하는 함수
    function displayInfowindow(item) {
        var content = '<div style="padding:5px;font-size:12px;">' + item.content + '</div>';

        infowindow.setContent(content);
        infowindow.open(map, item.marker); // 마커 위치에 인포윈도우 열기
    }
    
 
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
            // 로컬호스트용
            //imagesrc = imagePath.substring(22, imagePath.length);
            
            //가비아용
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