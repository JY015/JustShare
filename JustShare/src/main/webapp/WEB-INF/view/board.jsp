<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
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
<!-- 추가한거 -->
<link rel="stylesheet" href="/css/import.css?ver=20000120" />
<link rel="stylesheet" href="/css/style.css?ver=20000120" />
<link rel="stylesheet" href="/css/owl.carousel.min.css" />
<link rel="stylesheet" href="/css/valuevenue.css?ver=20000120" />
<link rel="stylesheet" href="/css/listpage.css?ver=20000120">
<link rel="stylesheet" href="/css/main_page.css" />
<!-- 회원가입 3가지회원 유형 css new -->
	<link rel="stylesheet" href="/css/register.css?ver=20000120" />
	<!-- 고객센터 css -->
	<link rel="stylesheet" href="/css/customer_service_center.css?ver=20000120" />
	<!-- 폰트어썸 -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />
	<link rel="shortcut icon" href="/images/v_favicon32.ico" sizes="32x32" />
	
 <script src="/js/valuevenue.js?ver=20000120" defer></script>
 <script src="/js/owl.carousel.min.js"></script>
 <script src="/js/common.js?ver=20000120" defer></script>
 <script src="/js/cookie.js?ver=20000120" defer></script>
 <style type="text/css">
.row detail{
	width: 100%;
	}

.fixed-button {
    color:#819FF7;
    position: fixed;
    bottom: 80px;
    right: 40px;
    z-index: 999;
}
#scrollToTopBtn{
 position: fixed;
    bottom: 20px;
    right: 40px;
    z-index: 998;
    }
.selectBoxList button {
    display: block;
    width: 5%;
    margin-bottom: 10px; /* 버튼 간의 간격을 조절할 수 있는 마진 값을 설정합니다. */
}
.txt__subtit__event .addrp{
	color: #819FF7;
	
}
.price{
	margin-bottom: 8px;
	
}
.nav-tabs{
	margin-bottom:10px;
}
.nav-item {
    margin-right: 10px; 
}
.modal-body{
	text-align: center;
}
.AreaGroupContainer {
    float: left; /* 왼쪽으로 부유(floating)시킴 */
    width: 30%; /* 부모 요소의 50% 너비를 차지하도록 설정 */
   
}

.Citycontainer {
  	 display: flex;
    flex-wrap: wrap;
    float: right; /* 오른쪽으로 부유(floating)시킴 */
    width: 70%; /* 부모 요소의 50% 너비를 차지하도록 설정 */
}

.AreaGroupContainer button {
    display: block; /* 블록 레벨 요소로 변경하여 세로 배치 */
    margin-bottom: 10px; /* 각 버튼 사이에 10px의 여백 추가 */
}

.Citycontainer .col-md-4 {
    flex: 0 0 40%; /* 각 요소의 너비를 33.333%로 설정하여 3열로 배치 */
    box-sizing: border-box; /* 요소의 패딩과 테두리를 포함한 크기를 설정 */
    padding: 0 10 10px; /* 각 요소의 좌우 패딩을 설정 */
}
.cateContainer{
 	display: flex;
    flex-wrap: wrap;

}
.equipContainer{
	display: flex;
    flex-wrap: wrap;
}
.cateContainer .col-md-4{
	 flex: 0 0 40%; /* 각 요소의 너비를 33.333%로 설정하여 3열로 배치 */
    box-sizing: border-box; /* 요소의 패딩과 테두리를 포함한 크기를 설정 */
    padding: 0 10 10px; /* 각 요소의 좌우 패딩을 설정 */
}
.equipContainer .col-md-4{
	 flex: 0 0 40%; /* 각 요소의 너비를 33.333%로 설정하여 3열로 배치 */
    box-sizing: border-box; /* 요소의 패딩과 테두리를 포함한 크기를 설정 */
    padding: 0 10 10px; /* 각 요소의 좌우 패딩을 설정 */
}
.imageContainer {
        position: relative;
        display: inline-block;
    }

    .likeon, .likeoff {
        width: 30px; /* 원하는 너비로 조절합니다. */
        height: 30px; /* 원하는 높이로 조절합니다. */
        position: absolute;
        top: 0;
        left: 95%; /* 가운데 정렬을 위해 left 값을 조정합니다. */
        transform: translateX(-50%); /* left 값의 50%만큼 왼쪽으로 이동하여 중앙 정렬합니다. */
        z-index: 1; /* 다른 요소들보다 위에 표시되도록 z-index 값을 설정합니다. */
    }
.cccc .imageContainer .main {
		width: 360px;
		height: 240px;

}
</style>
 
</head>
<body>
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
		<section class="section section--searchResult">
		 <div class="list--inner">
		 <div class="list--headermb">
		 <!--   검색창  -->
		 <form class="searchbar search" action="./board" method="get" id="searchForm" >
		 	<input type="text" name="searchV" required="required" id="stxm" placeholder="키워드를 입력해주세요." style="padding-right: 50px; ">
			<input type="hidden" name="areas" value="${param.areas }"> 
			<input type="hidden" name="categories" value="${param.categories }">
			<input type="hidden" name="equipments" value="${param.equipments }">
			<input type="hidden" name="minPrice" value="${param.minPrice }">
			<input type="hidden" name="maxPrice" value="${param.maxPrice }">
			<input type="hidden" name="sort" value="${param.sort }">
			<button type="submit" class="submit_btn1"><i class="fa-solid fa-magnifying-glass" style="color: #fafafa;"></i></button>
    		<button type="submit" id="sresetButton" class="submit_btn2"><i class="fa-solid fa-magnifying-glass-minus" style="color: #ffffff;"></i></button>
		 </form>
		 <!-- 필터 버튼 -->
		 <div class="tab-filter">
		 	<div class="list-tab">
		 		<div class="card-content">
		 			<button type="button" class="cardlistBtn  gubun_btn ver2"  onfocus="this.blur()" data-target="#tab1">지역</button>
		 		</div>
		 		<div class="half-line"></div>
		 		<div class="card-content">
                   <button type="button" class="cardlistBtn gubun_btn ver2"  onfocus="this.blur()" data-target="#tab2">공간유형</button>
                </div>
			    <div class="half-line"></div>
                <div class="card-content">
                  <button type="button"  class="cardlistBtn gubun_btn ver2"  onfocus="this.blur()" data-target="#tab3">가격</button>
                </div>
			    <div class="half-line"></div>
                <div class="card-content">
                  <button type="button"  class="cardlistBtn gubun_btn ver2"  onfocus="this.blur()" data-target="#tab4">시설물</button>
                </div>
		 	</div>
		 </div>
		 </div>
		 <!-- 필터 끝  -->
		 <div class="tabcontent" id="cards">
		     <div class="number-arrange">
              <span class="list-title">총 ${listNum } 개 </span>
              <!-- 분류버튼 -->
             	<div> 
                    <select class="selectBox-re" id="sort_sel">
                    <option selected value="1">최신</option>
                    <option  value="2">좋아요</option>
                    <option  value="3">조회수</option>
                    <option  value="4">낮은 가격</option>
                    <option  value="5">높은 가격</option>
                    </select>
                </div>  
				</div>
             
             <!-- 전체 리스트 보여주는 컨테이너  -->
             <div class="card-container">
             <!-- 리스트 하나씩 forEach로  -->
             <c:forEach items="${list}" var="row">
             <div class="card_item2 pop-up" >
             <div class="cccc">
             <div class="imageContainer" >
             <img class="main" src="/img/places/${row.realFile}">
             <div class="like" data-bno="${row.bno}">
             <c:choose>
             <c:when test="${row.isLiked eq 1  }">
             <img class="likeon" src="../img/icon/zzheart.png" />
             <img class="likeoff" src="../img/icon/zheart.png" style='display: none'/>
             </c:when>
             <c:otherwise>
             <img class="likeon" src="../img/icon/zzheart.png" style='display: none'/>
             <img class="likeoff" src="../img/icon/zheart.png" />
             </c:otherwise>
             </c:choose>
             </div>
             </div>
             </div>
             <a class="card-surface" href="./bdetail?bno=${row.bno}">
             <div class="card_inner2">
             <div class="txt__wrap2">
             <p class="txt__card__tit">
             ${row.btitle } <span class="read_count"><i class="fa-solid fa-book-open"></i> ${row.bread }</span>
             </p>
             <p class="txt__subtit__event addrp">
             ${row.addr }<span class="likes_count" data-count=${row.likesCount } ><i class="far fa-heart" ></i> ${row.likesCount }</span> 
             </p>
             <hr class="card-line">
              <p class="txt__card__tit price"> <span class="read_count">${row.fdate }</span>
             ${row.bprice }원
             </p>
             </div>
             </div>
             </a>
             </div>
             </c:forEach>
             </div>
             </div>
		 </div>
		</section>
		
	</div>
		
		
	<%@ include file="footer.jsp" %> 
		<!-- 페이지 최상단으로 스크롤 이동 버튼 -->
		<button id="scrollToTopBtn">^</button>
	<!-- 필터 버튼 -->
	<button type="button" id="myBtn">필터</button>
	<!-- 필터 버튼 -->

	<form action="./board" method="get" class="search"  id="searchForm">
		<input type="text" name="searchV" required="required" class="searchV">
		<input type="hidden" name="areas" value="${param.areas }"> 
		<input type="hidden" name="categories" value="${param.categories }">
		<input type="hidden" name="equipments" value="${param.equipments }">
		<input type="hidden" name="minPrice" value="${param.minPrice }">
		<input type="hidden" name="maxPrice" value="${param.maxPrice }">
		<input type="hidden" name="sort" value="${param.sort }">
		<button type="submit" class="buttonf btn btn-border-d btn-round">검색</button>
    	<button type="button" class="buttonf btn btn-border-d btn-round" id="resetButton">검색 초기화</button>
	</form>
	<!--   검색창  -->
	
	
	


	<button type="button" class="fixed-button" id="writeButton">글쓰기</button>

	<!-- 모달창 -->
	<div class="modal fade" id="test_modal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">필터</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">

					<div id="wrapper">
						<!--탭 메뉴 영역 -->
						<ul class="nav nav-tabs nav-fill" >
							<li class="nav-item"><a href="#tab1">지역</a></li>
							<li class="nav-item"><a href="#tab2">공간유형</a></li>
							<li class="nav-item"><a href="#tab3">가격</a></li>
							<li class="nav-item"><a href="#tab4">시설물</a></li>
						</ul>


						<!--탭 콘텐츠 영역 -->
						<div class="tab_container">

							<div id="tab1" class="tab_content">
								<!--Content-->
								<h1>지역</h1>
								<div class="AreasContainer">
								<div class="AreaGroupContainer">
								<c:forEach items="${regionList }" var="r">
								<button type="button" class="regionButton ${r.rno }">${r.rname }</button>
								</c:forEach>
								</div>
								<div class="Citycontainer">
								<c:forEach items="${areaList}" var="n" begin="0" end="24">
		                       	<div class="col-md-4"><input type="checkbox" id="area_${n.ano}" name="area" value="${n.ano}" data-aname="${n.aname}">${n.aname}</div>
				            	</c:forEach>
								</div>
								</div>
							</div>

							<div id="tab2" class="tab_content">
								<!--Content-->
								<h1>공간 유형</h1>
								<div class="cateContainer">
								<c:forEach items="${catelist }" var="n" >
									<div class="col-md-4"><input type="checkbox" id="cate_${n.cate }" name="category" value="${n.cate}" data-cname="${n.cname }">${n.cname }</div>
								</c:forEach>
								</div>
								</div>
							<div id="tab3" class="tab_content">
								<!--Content-->
								<h1>가격</h1>
								가격범위 
								<div id="price-slider"></div>
								<label for="min-price">최소 가격:</label>
								<input type="number" id="min-price" name="minPrice" value="0"> 만원 &nbsp;
								<label for="max-price">최대 가격:</label>
								<input type="number" id="max-price" name="maxPrice" value="100" > 만원
								
							</div>

							<div id="tab4" class="tab_content">
								<!--Content-->
								<h1>시설물</h1>
								<div class="equipContainer">
								<c:forEach items="${equiplist }" var="n">
									<div class="col-md-4"><input type="checkbox" name="equipment" id="equip_${n.eid }" value="${n.eid }" data-ename="${n.ename }"> ${n.ename }</div>
								</c:forEach>
								</div>
							</div>
					
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<div id="footer"></div>
					<button type="button" class="btn btn-default" id="resetButton">초기화</button>
					<button type="button" class="btn btn-primary" id="applyButton">적용</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 모달 끝  -->



	<!-- 페이지 덧붙이기 스크립트 -->
	<script type="text/javascript">
		//현재 스크롤 위치 저장
		let lastScroll = 0;
		let page = 0;
		let nowPageLimit = 0;
		let nextPageLimit = 0;
		let noMoreData = false; 

		//데이터 가져오는 함수
		function getData(limit, searchV, areas, categories, equipments, minPrice,maxPrice,sort) {
			 if (noMoreData) {
			        console.log("No more data available.");
			        return; // 더 이상 데이터를 받아오지 않도록 함수 종료
			    }
			//다음페이지
			
			nextPageLimit = (page + 1) * limit;
			page = page + 1;

			$
					.ajax({
						type : "post",
						url : "/board",
						dataType : "json",
						data : {
							"nextPageLimit" : nextPageLimit,
							"limit" : limit,
							"searchV" : searchV,
							"areas" : areas,
							"categories" : categories,
							"equipments" : equipments,
							"minPrice" : minPrice,
							"maxPrice" : maxPrice,
							"sort":sort
						},
						success: function(data) {
						    if (data && data.length > 0) {
						        data.forEach(function(item) {
						            // 새로운 카드 아이템 생성
						            var newCardItem = "<div class='card_item2 pop-up' data-bno='" + item.bno + "'>";
						            newCardItem += "<div class='cccc'><img src='/img/places/" + item.realFile + "'></div>";
						            newCardItem += "<a class='card-surface' href='./bdetail?bno=" + item.bno + "'>";
						            newCardItem += "<div class='card_inner2'>";
						            newCardItem += "<div class='txt__wrap2'>";
						            newCardItem += "<p class='txt__card__tit'>" + item.btitle + " <span class='read_count'><i class='fa-solid fa-book-open'></i> " + item.bread + "</span></p>";
						            newCardItem += "<p class='txt__subtit__event addrp'>" + item.addr + "<span class='likes_count' data-count='" + item.likesCount + "'><i class='far fa-heart'></i> " + item.likesCount + "</span></p>";
						            newCardItem += "<hr class='card-line'>";
						            newCardItem += "<p class='txt__card__tit price'><span class='read_count'>" + item.fdate + "</span> " + item.bprice + "원</p>";
						            newCardItem += "</div></div></a></div>";

						            // 새로운 카드 아이템을 기존의 div에 추가
						            $(".card-container").append(newCardItem);
						        });
						    } else {
						        // 더 이상의 데이터가 없음을 나타내는 메시지 출력 또는 처리
						        console.log("No more data available.");
						        noMoreData = true; // 데이터를 더 이상 받아오지 않음을 나타내는 변수를 true로 설정
						    }
						},
						error: function(xhr, status, error) {
						    // 에러 발생 시 처리
						    console.error("Error occurred: " + error);
						}
					});

		}

		$(document)
				.scroll(
						function(e) {
							console.log("스크롤 이벤트 발생 !");

							//현재 높이 저장
							var currentScroll = $(this).scrollTop();
							//전체 문서의 높이
							var documentHeight = $(document).height();

							//(현재 화면상단 + 현재 화면 높이)
							var nowHeight = $(this).scrollTop()
									+ $(window).height();

							//스크롤이 아래로 내려갔을때만 해당 이벤트 진행.
							if (currentScroll > lastScroll) {

								//nowHeight을 통해 현재 화면의 끝이 어디까지 내려왔는지 파악가능 
								//즉 전체 문서의 높이에 일정량 근접했을때 글 더 불러오기)
								
								
								
								if (documentHeight < (nowHeight + (documentHeight * 0.1))) {
									//함수콜
									
									if (noMoreData) {
       								 console.log("No more data available.");
       								 $(document).off("scroll"); // 스크롤 이벤트 제거
    								} else {
									getData(10, "${param.searchV }",
											"${param.areas}",
											"${param.categories}",
											"${param.equipments}",
											"${param.minPrice}",
											"${param.maxPrice}",
											"${param.sort}");
    								}
								}
							}

							//현재위치 최신화
							lastScroll = currentScroll;

						});
	</script>
	<!-- 페이지 덧붙이기 스크립트 끝 -->
	
	<!--  모달 필터 관련 스크립트 -->
	<script type="text/javascript">
		/* 모달 내 선택 옵션을 찍어주는 스크립트 + 가격  슬라이더  */
		jQuery(document).ready(function($) {
			// sort 값 미리 찍기 
				
			    var sort = parseInt("${param.sort}");

   				 if (isNaN(sort)) {
        			sort = 1; // 정수로 변환할 수 없는 경우 기본값 1로 설정
    			}

   				 // 이후에 sort 변수를 사용하여 필요한 작업을 수행할 수 있습니다.
   				 
				/* 모달 열기 스크립트 */ 
				$(".cardlistBtn").on("click", function() {
				$("#test_modal").modal("show");
				var targetTab = $(this).data('target');
		        
		        // 해당 탭을 보이게 함
		        $('.tab_content').hide();
		        $(targetTab).show();
				
				});	
   				 
			
				
				/* 모달 내 탭 관련 스크립트 */
				$(".tab_content").hide(); 
				$("ul.nav-tabs li:first").addClass("active").show(); 
				$(".tab_content:first").show(); 

				
				$("ul.nav-tabs li").click(function() {

					$("ul.nav-tabs li").removeClass("active"); 
					$(this).addClass("active"); 
					$(".tab_content").hide(); 

					var activeTab = $(this).find("a").attr("href"); 
					$(activeTab).fadeIn(); 
					return false;
				});
				
				// 지역버튼 누르면 해당 지역의 구역이 나오게 한다.
				
				$(".regionButton").on("click", function() {
				    // 클릭된 버튼의 두 번째 클래스 이름을 가져옵니다.
				    var selectedClass = $(this).attr("class").split(' ')[1];
				    var checkboxesHTML = "";
				    var areaParamArray = "${param.areas}".split(',');
				    console.log(areaParamArray);

				    // 선택된 클래스 이름에 따라 areaList를 반복합니다.
				    switch (selectedClass) {
				        case "1":
				            <c:forEach items="${areaList}" var="n" begin="0" end="24">
				            var paramValue = "${n.ano}";
				            var paramMatch = areaParamArray.includes(paramValue);
				            var rno = parseInt("${n.rno}");
				            var selectedRno = parseInt(selectedClass);
		                    if (selectedRno === rno && paramMatch) {
		                        checkboxesHTML += '<div class="col-md-4"><input type="checkbox" id="area_${n.ano}" name="area" value="${n.ano}" data-aname="${n.aname}" checked>${n.aname}</div>';
		                    } else if (selectedRno === rno && !paramMatch) {
		                        checkboxesHTML += '<div class="col-md-4"><input type="checkbox" id="area_${n.ano}" name="area" value="${n.ano}" data-aname="${n.aname}">${n.aname}</div>';
		                    }
				            </c:forEach>
				            break;
				        case "2":
				            <c:forEach items="${areaList}" var="n" begin="25" end="55">
				            var paramValue = "${n.ano}";
				            var paramMatch = areaParamArray.includes(paramValue);
				            var rno = parseInt("${n.rno}");
				            var selectedRno = parseInt(selectedClass);
		                    if (selectedRno === rno && paramMatch) {
		                        checkboxesHTML += '<div class="col-md-4"><input type="checkbox" id="area_${n.ano}" name="area" value="${n.ano}" data-aname="${n.aname}" checked>${n.aname}</div>';
		                    } else if (selectedRno === rno && !paramMatch) {
		                        checkboxesHTML += '<div class="col-md-4"><input type="checkbox" id="area_${n.ano}" name="area" value="${n.ano}" data-aname="${n.aname}">${n.aname}</div>';
		                    }
				            </c:forEach>
				            break;
				        case "3":
				            <c:forEach items="${areaList}" var="n" begin="56" end="65">
				            var paramValue = "${n.ano}";
				            var paramMatch = areaParamArray.includes(paramValue);
				            var rno = parseInt("${n.rno}");
				            var selectedRno = parseInt(selectedClass);
		                    if (selectedRno === rno && paramMatch) {
		                        checkboxesHTML += '<div class="col-md-4"><input type="checkbox" id="area_${n.ano}" name="area" value="${n.ano}" data-aname="${n.aname}" checked>${n.aname}</div>';
		                    } else if (selectedRno === rno && !paramMatch) {
		                        checkboxesHTML += '<div class="col-md-4"><input type="checkbox" id="area_${n.ano}" name="area" value="${n.ano}" data-aname="${n.aname}">${n.aname}</div>';
		                    }
				            </c:forEach>
				            break;
				        case"4":
				            <c:forEach items="${areaList}" var="n" begin="66" end="81">
				            var paramValue = "${n.ano}";
				            var paramMatch = areaParamArray.includes(paramValue);
				            var rno = parseInt("${n.rno}");
				            var selectedRno = parseInt(selectedClass);
		                    if (selectedRno === rno && paramMatch) {
		                        checkboxesHTML += '<div class="col-md-4"><input type="checkbox" id="area_${n.ano}" name="area" value="${n.ano}" data-aname="${n.aname}" checked>${n.aname}</div>';
		                    } else if (selectedRno === rno && !paramMatch) {
		                        checkboxesHTML += '<div class="col-md-4"><input type="checkbox" id="area_${n.ano}" name="area" value="${n.ano}" data-aname="${n.aname}">${n.aname}</div>';
		                    }
				            </c:forEach>
				            break;
				        case"5":
				            <c:forEach items="${areaList}" var="n" begin="82" end="86">
				            var paramValue = "${n.ano}";
				            var paramMatch = areaParamArray.includes(paramValue);
				            var rno = parseInt("${n.rno}");
				            var selectedRno = parseInt(selectedClass);
		                    if (selectedRno === rno && paramMatch) {
		                        checkboxesHTML += '<div class="col-md-4"><input type="checkbox" id="area_${n.ano}" name="area" value="${n.ano}" data-aname="${n.aname}" checked>${n.aname}</div>';
		                    } else if (selectedRno === rno && !paramMatch) {
		                        checkboxesHTML += '<div class="col-md-4"><input type="checkbox" id="area_${n.ano}" name="area" value="${n.ano}" data-aname="${n.aname}">${n.aname}</div>';
		                    }
				            </c:forEach>
				            break;
				        case"6":
				            <c:forEach items="${areaList}" var="n" begin="87" end="94">
				            var paramValue = "${n.ano}";
				            var paramMatch = areaParamArray.includes(paramValue);
				            var rno = parseInt("${n.rno}");
				            var selectedRno = parseInt(selectedClass);
		                    if (selectedRno === rno && paramMatch) {
		                        checkboxesHTML += '<div class="col-md-4"><input type="checkbox" id="area_${n.ano}" name="area" value="${n.ano}" data-aname="${n.aname}" checked>${n.aname}</div>';
		                    } else if (selectedRno === rno && !paramMatch) {
		                        checkboxesHTML += '<div class="col-md-4"><input type="checkbox" id="area_${n.ano}" name="area" value="${n.ano}" data-aname="${n.aname}">${n.aname}</div>';
		                    }
				            </c:forEach>
				            break;
				        case"7":
				            <c:forEach items="${areaList}" var="n" begin="95" end="99">	
				            var paramValue = "${n.ano}";
				            var paramMatch = areaParamArray.includes(paramValue);
				            var rno = parseInt("${n.rno}");
				            var selectedRno = parseInt(selectedClass);
		                    if (selectedRno === rno && paramMatch) {
		                        checkboxesHTML += '<div class="col-md-4"><input type="checkbox" id="area_${n.ano}" name="area" value="${n.ano}" data-aname="${n.aname}" checked>${n.aname}</div>';
		                    } else if (selectedRno === rno && !paramMatch) {
		                        checkboxesHTML += '<div class="col-md-4"><input type="checkbox" id="area_${n.ano}" name="area" value="${n.ano}" data-aname="${n.aname}">${n.aname}</div>';
		                    }
				            </c:forEach>
				            break;
				        case"9":
				            <c:forEach items="${areaList}" var="n" begin="100" end="104">	
				            var paramValue = "${n.ano}";
				            var paramMatch = areaParamArray.includes(paramValue);
				            var rno = parseInt("${n.rno}");
				            var selectedRno = parseInt(selectedClass);
		                    if (selectedRno === rno && paramMatch) {
		                        checkboxesHTML += '<div class="col-md-4"><input type="checkbox" id="area_${n.ano}" name="area" value="${n.ano}" data-aname="${n.aname}" checked>${n.aname}</div>';
		                    } else if (selectedRno === rno && !paramMatch) {
		                        checkboxesHTML += '<div class="col-md-4"><input type="checkbox" id="area_${n.ano}" name="area" value="${n.ano}" data-aname="${n.aname}">${n.aname}</div>';
		                    }
				            </c:forEach>
				            break; 
				        case"10":
				            <c:forEach items="${areaList}" var="n" begin="105" end="121">	
				            var paramValue = "${n.ano}";
				            var paramMatch = areaParamArray.includes(paramValue);
				            var rno = parseInt("${n.rno}");
				            var selectedRno = parseInt(selectedClass);
		                    if (selectedRno === rno && paramMatch) {
		                        checkboxesHTML += '<div class="col-md-4"><input type="checkbox" id="area_${n.ano}" name="area" value="${n.ano}" data-aname="${n.aname}" checked>${n.aname}</div>';
		                    } else if (selectedRno === rno && !paramMatch) {
		                        checkboxesHTML += '<div class="col-md-4"><input type="checkbox" id="area_${n.ano}" name="area" value="${n.ano}" data-aname="${n.aname}">${n.aname}</div>';
		                    }
				            </c:forEach>
				            break; 
				        case"11":
				            <c:forEach items="${areaList}" var="n" begin="122" end="132">	
				            var paramValue = "${n.ano}";
				            var paramMatch = areaParamArray.includes(paramValue);
				            var rno = parseInt("${n.rno}");
				            var selectedRno = parseInt(selectedClass);
		                    if (selectedRno === rno && paramMatch) {
		                        checkboxesHTML += '<div class="col-md-4"><input type="checkbox" id="area_${n.ano}" name="area" value="${n.ano}" data-aname="${n.aname}" checked>${n.aname}</div>';
		                    } else if (selectedRno === rno && !paramMatch) {
		                        checkboxesHTML += '<div class="col-md-4"><input type="checkbox" id="area_${n.ano}" name="area" value="${n.ano}" data-aname="${n.aname}">${n.aname}</div>';
		                    }
				            </c:forEach>
				            break; 
				        case"12":
				            <c:forEach items="${areaList}" var="n" begin="133" end="147">	
				            var paramValue = "${n.ano}";
				            var paramMatch = areaParamArray.includes(paramValue);
				            var rno = parseInt("${n.rno}");
				            var selectedRno = parseInt(selectedClass);
		                    if (selectedRno === rno && paramMatch) {
		                        checkboxesHTML += '<div class="col-md-4"><input type="checkbox" id="area_${n.ano}" name="area" value="${n.ano}" data-aname="${n.aname}" checked>${n.aname}</div>';
		                    } else if (selectedRno === rno && !paramMatch) {
		                        checkboxesHTML += '<div class="col-md-4"><input type="checkbox" id="area_${n.ano}" name="area" value="${n.ano}" data-aname="${n.aname}">${n.aname}</div>';
		                    }
		                    </c:forEach>
				            break; 
				        case"13":
				            <c:forEach items="${areaList}" var="n" begin="148" end="166">	
				            var paramValue = "${n.ano}";
				            var paramMatch = areaParamArray.includes(paramValue);
				            var rno = parseInt("${n.rno}");
				            var selectedRno = parseInt(selectedClass);
		                    if (selectedRno === rno && paramMatch) {
		                        checkboxesHTML += '<div class="col-md-4"><input type="checkbox" id="area_${n.ano}" name="area" value="${n.ano}" data-aname="${n.aname}" checked>${n.aname}</div>';
		                    } else if (selectedRno === rno && !paramMatch) {
		                        checkboxesHTML += '<div class="col-md-4"><input type="checkbox" id="area_${n.ano}" name="area" value="${n.ano}" data-aname="${n.aname}">${n.aname}</div>';
		                    }
		                    </c:forEach>
				            break; 
				        case"14":
				            <c:forEach items="${areaList}" var="n" begin="167" end="183">	
				            var paramValue = "${n.ano}";
				            var paramMatch = areaParamArray.includes(paramValue);
				            var rno = parseInt("${n.rno}");
				            var selectedRno = parseInt(selectedClass);
		                    if (selectedRno === rno && paramMatch) {
		                        checkboxesHTML += '<div class="col-md-4"><input type="checkbox" id="area_${n.ano}" name="area" value="${n.ano}" data-aname="${n.aname}" checked>${n.aname}</div>';
		                    } else if (selectedRno === rno && !paramMatch) {
		                        checkboxesHTML += '<div class="col-md-4"><input type="checkbox" id="area_${n.ano}" name="area" value="${n.ano}" data-aname="${n.aname}">${n.aname}</div>';
		                    }
				            </c:forEach>
				            break;
				        case"15":
				        	<c:forEach items="${areaList}" var="n" begin="184" end="197">
				            var paramValue = "${n.ano}";
				            var paramMatch = areaParamArray.includes(paramValue);
				            var rno = parseInt("${n.rno}");
				            var selectedRno = parseInt(selectedClass);
		                    if (selectedRno === rno && paramMatch) {
		                        checkboxesHTML += '<div class="col-md-4"><input type="checkbox" id="area_${n.ano}" name="area" value="${n.ano}" data-aname="${n.aname}" checked>${n.aname}</div>';
		                    } else if (selectedRno === rno && !paramMatch) {
		                        checkboxesHTML += '<div class="col-md-4"><input type="checkbox" id="area_${n.ano}" name="area" value="${n.ano}" data-aname="${n.aname}">${n.aname}</div>';
		                    }
				        </c:forEach>
				        break;
				        case"16":
				        	<c:forEach items="${areaList}" var="n" begin="198" end="219">
				            var paramValue = "${n.ano}";
				            var paramMatch = areaParamArray.includes(paramValue);
				            var rno = parseInt("${n.rno}");
				            var selectedRno = parseInt(selectedClass);
		                    if (selectedRno === rno && paramMatch) {
		                        checkboxesHTML += '<div class="col-md-4"><input type="checkbox" id="area_${n.ano}" name="area" value="${n.ano}" data-aname="${n.aname}" checked>${n.aname}</div>';
		                    } else if (selectedRno === rno && !paramMatch) {
		                        checkboxesHTML += '<div class="col-md-4"><input type="checkbox" id="area_${n.ano}" name="area" value="${n.ano}" data-aname="${n.aname}">${n.aname}</div>';
		                    }
				        </c:forEach>
				        break;
				        case"17":
				        	<c:forEach items="${areaList}" var="n" begin="220" end="221">
				            var paramValue = "${n.ano}";
				            var paramMatch = areaParamArray.includes(paramValue);
				            var rno = parseInt("${n.rno}");
				            var selectedRno = parseInt(selectedClass);
		                    if (selectedRno === rno && paramMatch) {
		                        checkboxesHTML += '<div class="col-md-4"><input type="checkbox" id="area_${n.ano}" name="area" value="${n.ano}" data-aname="${n.aname}" checked>${n.aname}</div>';
		                    } else if (selectedRno === rno && !paramMatch) {
		                        checkboxesHTML += '<div class="col-md-4"><input type="checkbox" id="area_${n.ano}" name="area" value="${n.ano}" data-aname="${n.aname}">${n.aname}</div>';
		                    }
				        </c:forEach>
				        break;
				        default:
				            // 위의 어떤 조건도 맞지 않는 경우 기본적으로 표시할 내용
				            $(".Citycontainer").html("기본 내용");
				    }

				    // 생성된 체크박스로 .Citycontainer를 업데이트합니다.
				    $(".Citycontainer").html(checkboxesHTML);

				    // 'area' 이름을 가진 체크박스에 변경 이벤트 핸들러를 추가하고, 변경되면 updateSelectedOptions() 함수를 호출합니다.
				    $("input[name='area']").on("change", function() {
				        updateSelectedOptions();
				    });
				});

				
			
			
				/* 가격 슬라이더 관련 스크립트 */
				 $("#price-slider").slider({
					    range: true, // 최소와 최대 값 사이의 범위 슬라이더로 설정
					    min: 0,      // 최소 값
					    max: 100,   // 최대 값
					    values: [0, 100], // 초기 값 
					    slide: function(event, ui) {
					        // 슬라이더의 값이 변경될 때마다 호출되는 콜백 함수
					        // 변경된 최소와 최대 값을 각각의 input 요소에 표시
					        $("#min-price").val(ui.values[0]);
					        $("#max-price").val(ui.values[1]);
					        updateSelectedOptions();
					    }
					});
				 
				// 직접 입력 필드의 값이 변경될 때 슬라이더의 값도 업데이트  +	슬라이드의 최소 최대 값을 넘는 입력 막기
				 $("#min-price").on("input", function() {
				     var minPrice = parseInt($(this).val());
				     var maxPrice = parseInt($("#max-price").val());
				     $("#price-slider").slider("values", [minPrice, maxPrice]);
				     updateSelectedOptions();
				 });

				 $("#max-price").on("input", function() {
				     var minPrice = parseInt($("#min-price").val());
				     var maxPrice = parseInt($(this).val());
				     $("#price-slider").slider("values", [minPrice, maxPrice]);
				     updateSelectedOptions();
				 });
			
				 
				 $("#min-price").on("input", function() {
					    var minPrice = parseInt($(this).val());
					    var maxPrice = parseInt($("#max-price").val());
					    var sliderMaxValue = $("#price-slider").slider("option", "max");

					    if (minPrice < 0) {
					        minPrice = 0;
					    } else if (minPrice > sliderMaxValue) {
					        minPrice = sliderMaxValue;
					    }

					    if (minPrice > maxPrice) {
					        maxPrice = minPrice;
					       
					    }

					    $("#min-price").val(minPrice);
					    $("#price-slider").slider("values", [minPrice, maxPrice]);
					    updateSelectedOptions();
					});

					$("#max-price").on("input", function() {
					    var minPrice = parseInt($("#min-price").val());
					    var maxPrice = parseInt($(this).val());
					    var sliderMaxValue = $("#price-slider").slider("option", "max");

					    if (maxPrice < 0) {
					        maxPrice = 0;
					    } else if (maxPrice > sliderMaxValue) {
					        maxPrice = sliderMaxValue;
					    }

					    if (maxPrice < minPrice) {
					        minPrice = maxPrice;
					       
					    }

					    $("#max-price").val(maxPrice);
					    $("#price-slider").slider("values", [minPrice, maxPrice]);
					    updateSelectedOptions();
					});
					
			    var selectedOptions = [];
			    const iconHtml = '<i class="fa-solid fa-xmark"></i>';
				
			    
				/* 모달에서 파라미터로 옵션을 보내 주는  스크립트 */
				
				
				
				var areaParamArray = "${param.areas}".split(',');
				var categoryParamArray = "${param.categories}".split(','); // 예시: 서버에서 받은 카테고리 파라미터 값
				var minPriceParam = ("${param.minPrice}"/10000); // 예시: 서버에서 받은 최소 가격 파라미터 값
				var maxPriceParam = ("${param.maxPrice}"/10000); // 예시: 서버에서 받은 최대 가격 파라미터 값
				var equipmentParamArray = "${param.equipments}".split(','); // 예시: 서버에서 받은 시설물 파라미터 값
				
				// 지역 체크박스 설정
				
					// 지역 체크박스 설정
				$("input[name='area']").each(function() {
				    var areaValue = $(this).val();
				    if (areaParamArray.includes(areaValue)) {
				        $(this).prop("checked", true); // 파라미터 값에 해당하는 체크박스 체크
				    }
				});
		
				// 카테고리 체크박스 설정
				$("input[name='category']").each(function() {
   					 var categoryValue = $(this).val();
    				if (categoryParamArray.includes(categoryValue)) {
        			$(this).prop("checked", true); // 파라미터 값에 해당하는 체크박스 체크
   					 }
				});

					// 가격 슬라이더 및 입력 필드 설정
				$("#min-price").val(minPriceParam);
				$("#max-price").val(maxPriceParam);
				$("#price-slider").slider("values", [minPriceParam, maxPriceParam]);

					// 시설물 체크박스 설정
				$("input[name='equipment']").each(function() {
    			var equipmentValue = $(this).val();
    			if (equipmentParamArray.includes(equipmentValue)) {
        		$(this).prop("checked", true); // 파라미터 값에 해당하는 체크박스 체크
    			}
			});
			    
			    
			    
			    // 각 탭에서 선택된 값들을 가져와서 selectedOptions 배열에 저장하는 함수
			    function updateSelectedOptions() {
			        
			    	selectedOptions = [];
			  

			        $("input[name='area']:checked").each(function() {
			        	var ano = $(this).val(); 
			        	var aname = $(this).data("aname");
			            var optionValue = "area:" + aname;
			            selectedOptions.push("<span data-option-value='area_" + ano + "'>" + aname + iconHtml + "</span>");
			            
			        });

			        $("input[name='category']:checked").each(function() {
			        	var cno = $(this).val(); 
			        	var cname = $(this).data("cname");
			            var optionValue = "category:" + cname;
			            selectedOptions.push("<span data-option-value='cate_" + cno + "'>" + cname + iconHtml + "</span>");
			            
			        });

			        var minPrice = $("#min-price").val();
			        var maxPrice = $("#max-price").val();

			       

			        $("input[name='equipment']:checked").each(function() {
			        	var eno = $(this).val(); 
			        	var ename = $(this).data("ename");
			            var optionValue = "equipment:" + ename;
			            selectedOptions.push("<span data-option-value='equip_" + eno + "'>" + ename + iconHtml + "</span>");
			           
			        });

			        // 선택된 옵션들을 푸터에 표시
			        $("#footer").html(selectedOptions.join("&nbsp;"));
			    }

			    // 가격 입력값이 변경될 때 이벤트 처리
			    $("#min-price, #max-price").change(function() {
			        updateSelectedOptions();
			    });

			    // 각 탭에서 옵션을 선택할 때 발생하는 이벤트 처리
			    $("input[name='area'], input[name='category'], input[name='equipment']").change(function() {
			        updateSelectedOptions();
			    });
			    
			    // 초기화 버튼을 누르면  선택한 옵션이 철회 됩니다 .
			    
			    $(document).on("click", "#resetButton", function() {
				    $("input[name='area']").prop("checked", false);
			        $("input[name='category']").prop("checked", false);
			        $("input[name='equipment']").prop("checked", false);
			        
			        // 가격 슬라이더의 값을 초기값으로 설정
			        $("#min-price").val(0);
			        $("#max-price").val(100);
			        $("#price-slider").slider("values", [0, 100]);
			        
			        // 선택된 옵션을 업데이트
			        updateSelectedOptions();
			    });
			    
			 // 삭제 시 처리
			    $(document).on("click", "#test_modal .fa-xmark", function(event) {
			        event.stopPropagation();
			        var optionValue = $(this).closest('span').data("option-value");

			        // prefix 추출
			        var prefix = optionValue.split(":")[0];
			        // minPrice 또는 maxPrice 삭제 처리
			        if (prefix === "price") {
			        	$("#price-slider").slider("values", [0, 100]);
			        	 $("#min-price").val(0);
			             $("#max-price").val(100);
			        	
			        } else {
			            // 기타 옵션 삭제 처리
			            var inputId = optionValue.replace(prefix + "_", '');
			            var correspondingInput = $("#" + inputId);

			            // 체크된 <input> 요소를 찾아 체크 해제
			            correspondingInput.prop("checked", false);
			        }

			        // 해당 값이 존재하는지 확인하고 제거
			        var optionIndex = selectedOptions.findIndex(function(item) {
			            return $(item).data("option-value") === optionValue;
			        });

			        if (optionIndex !== -1) {
			            selectedOptions.splice(optionIndex, 1);
			            updateSelectedOptions();
			        }

			        // data("option-value") 값과 일치하는 <span> 요소 제거
			        $("#footer").find("span[data-option-value='" + optionValue + "']").remove();
			    });
			  
				
				$("#applyButton").on("click",function() {
							// 선택한 값들을 수집
							var selectedAreas = $("input[name='area']:checked")
									.map(function() {
										return $(this).val();
									}).get();
							
							var selectedCategories = $(
									"input[name='category']:checked").map(
									function() {
										return $(this).val();
									}).get();

							var selectedEquipments = $(
									"input[name='equipment']:checked").map(
									function() {
										return $(this).val();
									}).get();
							
						    var minPrice = ($("#min-price").val() * 10000);
						    var maxPrice = ($("#max-price").val() * 10000);
						    
						    
							// 선택한 값들을 URL 파라미터로 추가
							var queryString = "?searchV=${param.searchV}"
									+ "&areas=" + selectedAreas.join(",")
									+ "&categories="
									+ selectedCategories.join(",")
									+ "&equipments="
									+ selectedEquipments.join(",")
									+ "&minPrice=" + minPrice
					        		+ "&maxPrice=" + maxPrice
									+ "&sort="+sort;
							// 현재 페이지 URL에 파라미터를 추가한 뒤 리다이렉트
							window.location.href = window.location.pathname
									+ queryString;
						});
									
							// 파라미터로 추가된 옵션들도 footer 에 찍어주기 
							// 파라미터로 받아온 옵션 값들을 이용하여 span 태그를 생성하고 #footer에 추가하는 함수
							function addOptionsToFooter() {
							    var areaParam = "${param.areas}";
							    var categoryParam = "${param.categories}";
							    var equipmentParam = "${param.equipments}";
							    var minPriceParam = parseInt("${param.minPrice}")/10000;
							    var maxPriceParam = parseInt("${param.maxPrice}")/10000;

							    // 지역 옵션 추가
							    if (areaParam) {
							        var selectedAreas = areaParam.split(",");
							        selectedAreas.forEach(function(area) {
							            var areaElement = $("#area_" + area);
							            if (areaElement.length > 0) {
							                var areaName = areaElement.data("aname"); // 해당 지역의 이름을 가져옴
							                $("#footer").append("<span data-option-value='area_" + area + "'>" + areaName + iconHtml + "</span>");
							            }
							        });
							    }

							    // 카테고리 옵션 추가
							    if (categoryParam) {
							        var selectedCategories = categoryParam.split(",");
							        selectedCategories.forEach(function(category) {
							            var categoryElement = $("#cate_" + category);
							            if (categoryElement.length > 0) {
							                var categoryName = categoryElement.data("cname"); // 해당 카테고리의 이름을 가져옴
							                $("#footer").append("<span data-option-value='cate_" + category + "'>" + categoryName + iconHtml + "</span>");
							            }
							        });
							    }

							    // 시설물 옵션 추가
							    if (equipmentParam) {
							        var selectedEquipments = equipmentParam.split(",");
							        selectedEquipments.forEach(function(equipment) {
							            var equipmentElement = $("#equip_" + equipment);
							            if (equipmentElement.length > 0) {
							                var equipmentName = equipmentElement.data("ename"); // 해당 시설물의 이름을 가져옴
							                $("#footer").append("<span data-option-value='equip_" + equipment + "'>" + equipmentName + iconHtml + "</span>");
							            }
							        });
							    }
							    if (!isNaN(minPriceParam) && !isNaN(maxPriceParam) && (minPriceParam !== 0 && maxPriceParam !== 1000000)) {
							        var priceOption = "price:" + minPriceParam + "-" + maxPriceParam;
							        $("#footer").append("<span data-option-value='" + priceOption + "'>" + minPriceParam + "만원 ~ " + maxPriceParam + "만원" + iconHtml + "</span>");
							    }else{
							    	   $("#min-price").val(0);
								       $("#max-price").val(100);
								       $("#price-slider").slider("values", [0, 100]);
							    }
							    
							}

							// 페이지 로드 시 실행하여 파라미터로 받아온 옵션들을 #footer에 추가
							$(document).ready(function() {
							    addOptionsToFooter();
							});
			  
			  
			}); 
	 
</script>

<script>
// 문서가 로드된 후에 실행되도록 이벤트 핸들러 등록
document.addEventListener("DOMContentLoaded", function() {
    // 초기화 버튼에 클릭 이벤트 핸들러 등록
    document.getElementById("sresetButton").addEventListener("click", function() {
        // searchV 필드 초기화
        document.getElementsByName("searchV")[0].value = "";
        // 검색 폼 제출
        document.getElementById("searchForm").submit();
    });
});

let id = "${sessionScope.mid}";

$(document).scroll(function() {
    // 스크롤 위치가 일정 이상 내려갔을 때 버튼을 보이게 하기
    if ($(this).scrollTop() > 100) {
        $("#scrollToTopBtn").fadeIn();
    } else {
        $("#scrollToTopBtn").fadeOut();
    }
});

// 최상단으로 스크롤 이동 버튼 클릭 이벤트 핸들러
$("#scrollToTopBtn").click(function() {
    // 스크롤 위치를 최상단으로 이동시킴 (1초 동안 부드럽게 스크롤 이동)
    $("html, body").animate({ scrollTop: 0 }, 1000);
});

$("#writeButton").click(function() {
	if(id == null || id == "" ){
		alert("글을 작성하시려면 로그인이 필요합니다");
		
		return false;
	}

    location.href = '/bwrite'; // 이동할 페이지의 URL로 수정하세요.
});

// 나열 버튼 


$(document).ready(function() {
    // 초기에는 selectBoxList를 숨김
    $(".selectBoxList").hide();

    // selectBtn을 클릭했을 때 이벤트 핸들러 등록
    $("#selectBtn").click(function() {
        // selectBoxList의 현재 상태를 확인하여 보이기/숨기기 토글
        $(".selectBoxList").toggle();
    });
    
    

// 버튼 클릭 이벤트 처리   분류순
  // URL에서 sort 매개변수 값을 읽어옴
function getSortValueFromUrl() {
    var urlParams = new URLSearchParams(window.location.search);
    var sortValue = urlParams.get('sort');
    return sortValue;
}

// 페이지 로드 시 URL에서 sort 매개변수 값을 읽어와서 선택된 옵션 설정
$(document).ready(function() {
    var sortValue = getSortValueFromUrl();
    if (sortValue) {
        $("#sort_sel").val(sortValue);
    }

    // select 요소의 값이 변경될 때 이벤트 핸들러
    $("#sort_sel").change(function() {
        var selectedValue = $(this).val();
        sortBoardPage(selectedValue);
    });
});

// 분류 버튼 클릭 이벤트 처리 함수
function sortBoardPage(sortValue) {
    var queryParams = {
        searchV: "${param.searchV}",
        areas: "${param.areas}",
        categories: "${param.categories}",
        equipments: "${param.equipments}",
        minPrice: "${param.minPrice}",
        maxPrice: "${param.maxPrice}",
        sort: sortValue
    };

    var queryString = $.param(queryParams);
    location.href = "/board?" + queryString;
}
  	// 좋아요 보드에서 찍기 
    
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

    const $likesCountElement = $(this).closest(".card_item2.pop-up").find(".likes_count");
    console.log($likesCountElement);

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
        let likesCount = $likesCountElement.data("count");

        $likesCountElement.text(likesCount);
        if (likes == "on") {
            $likesCountElement.text(likesCount + 1);
            $likesCountElement.data("count", likesCount + 1);
        } else {
            $likesCountElement.text(likesCount - 1);
            $likesCountElement.data("count", likesCount - 1);
        }
    })
    .fail(function(error) {
        alert(error.responseText);
    });
});
    
});


</script>


</body>
</html>
