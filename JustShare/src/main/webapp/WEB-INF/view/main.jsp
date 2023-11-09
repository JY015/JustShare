<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
<script>
var _ss_user_id   = "";
</script>
  </head>
<body>
  <div class="body__container section">
  <input type="hidden" class="is_phpself" value="/index.php">
  <input type="hidden" class="is_app_banner" value="">
   
   <div class="top_app_banner" style="display:none;background-color: #fff7e1">
      <div class="app_div">가치공간 앱으로 더욱 편리하게 이용해 보세요, 
         <a class="banner_app_link" href="https://play.google.com/store/apps/details?id=com.valuevenue.gachispace"><span class="app_down">다운로드</span></a>
      </div>
      <div class="app_div_close"></div>
   </div>

   <style>
   .top_app_banner{
      height:30px;
      width:100%;
      display:flex;
   }
   .app_div {
      text-align:center;
      width:100%;
      font-size:12px;
      padding:5px;
      margin-left:15px;
   }
   .app_down {
      color: white;
      font-weight:bold;
      background-color: #3CB4FF;
      border-radius: 20px;
      padding: 2px 10px 2px 10px;
      margin-left:10px;
   }
   .app_div_close {
      background: url('/images/close.svg') no-repeat 50% 50%; 
      width:34px;
      height:22px; 
      padding:10px 10px 20px 0px;
   }
      .all-category-container {
        display: flex;
        justify-content: space-between;
    }

    .all-category-container .category-item {
        text-align: center;
        margin-right: 20px;
        margin-left: 20px; 
    }

    .all-category-container img,
    .entire-cate img {
        max-width: 50px; 
        height: auto; 
    }

    .entire-cate {
        display: flex;
        flex-wrap: wrap;
        gap: 10px; 
    }

    .entire-cate .category {
        flex-basis: calc(25% - 10px); 
        text-align: center;
    }
   
   
   </style>
   <header id="header" class="header_bg_new">
      <div class="header__inner">
        <div class="header__first_row">
           <div class="sign-area">
           <c:choose>
                         <c:when test="${sessionScope.mid eq null}"><li class="nav-item"><a class="nav-link" href="./login"><i class="xi-user">로그인</i></a></li></c:when>
                         <c:otherwise><li class="nav-item"><a class="nav-link" href="./logout" onclick="return confirm('로그아웃 하시겠습니까?')"><i class="xi-log-out">로그아웃</i></a></li></c:otherwise>
                        </c:choose>     
         <div class="half-line"></div>
            <a href="/mypage"> 마이페이지</a> 
            
         <div class="half-line"></div>
            <a href="/help/pc_guide20230426.pdf" target="_blank">가이드</a>
            <div class="half-line"></div>
         <a href="/contact/forms">제휴 및 입점문의</a>
            <div class="half-line"></div>
         <a href="/faq">자주 묻는 질문</a>
           </div>
        </div>
        <div class="full-line"></div>
        <div class="header__second_row"> 
         <div class="left-side">   
            <h1 class="logo"><a href="/">로고</a></h1>
         </div>
         <div class="right-side">
            <div class="sign-group">
			
            </div>
          </div>
		</div>
         <!--  <div class="search-area">
            <form class="searchbar searchbar-length" action="/schedule/search">
              <input type="text" placeholder="전체 둘러보기" name="stx" class="gnb_stx" value="" style="padding-right: 50px;">
              <button type="submit"> <img src="/images/ic_search.svg" alt=""></button> 
            </form>
          </div>
        <div class="right-side">
            <div class="sign-group">
           <div class="alarm-group" onclick="top.location.href='/member/alarm'">알림아이콘</div>
           <div class="my-thumb" style="background-image: url(/images/ico_profile.svg);">내 썸네일 이미지</div>            
         
            </div>
          </div>
      </div> -->

        <div class="header__third_row">
          <div class="main-menu-area">
            <div><a class="" href="/schedule/search?gubun=popup">팝업 스토어</a></div>
            <div><a class="" href="/schedule/search?gubun=space">리테일 공간 대관</a></div>
            <div><a class="" href="/schedule/search?gubun=event">전국 행사 정보</a></div>
            <div><a class="" href="/help/leasing?gubun=leasing">LEASING</a></div>
          </div>
          <div class="btn-com">
            <a href="https://www.value-venue.com/index.html" target='_blank'>About VALUEVENUE<i></i></a>
          </div>
        </div>  
      </div>
    </header>
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
     <%--  <header class="header_topnav_new">
        <div class="header_topnav_inner_n">
         <div class="first_row">
             <div class="logo">             
             <img src="./img/JustSharelogo.png" width="25%;" onclick="location.href='./main2'">
             </div>
              <c:choose>
                         <c:when test="${sessionScope.mid eq null}"><li class="nav-item"><a class="nav-link" href="./login"><i class="xi-user">로그인</i></a></li></c:when>
                         <c:otherwise><li class="nav-item"><a class="nav-link" href="./logout" onclick="return confirm('로그아웃 하시겠습니까?')"><i class="xi-log-out">로그아웃</i></a></li></c:otherwise>
                        </c:choose>     
         </div>

         <div class="topnav_searchbar_new">
           <form action="/schedule/search" method="get">
            <input type="text" placeholder="전체 둘러보기" name="stx" id="stx" value="">
            <button type="submit"> <img src="/images/ico_topnav_search_mo.svg" alt=""></button> 
           </form>
         </div>
        </div>
      </header> --%>
      
      <section class="myinfo__pop">
        <div class="myInfo__inner">
          <div class="myregInfo">
            <div class="infoarea">
              <img src="/images/ico_profile.svg" alt="" />
              <div class="userInfo">
                <div class="infoBox">
                  <span class="txt__card__tit2"></span>
                  <span class="txt__card__tit2"></span>
                </div>
                <div class="gradeBox">


                  <div class="grade grade1">일반회원</div>
                </div>
              </div>
            </div>
            <ul class="btn-group">
              <li>
                <button type='button' class="btn btn--outlined-primary" onclick="location.href='mypage'">마이 페이지</button>
              </li>
              <li>
                <button type='button' class="btn btn--outlined-primary" onclick="location.href='/member/modify'">정보수정</button>
              </li>
              <li>
                <button type='button' class="btn btn--primary" onclick="top.location.href='/logout'">로그아웃</button>
              </li>
            </ul>
          </div>
        </div>
      </section>
   <div class="banner_img_back">
   <section class="banner_img_wrap mySwiper swiper-fade swiper-initialized swiper-horizontal swiper-watch-progress swiper-backface-hidden">
      <ul class="swiper-wrapper" id="swiper-wrapper-84f107fad5823f5ee" aria-live="off">
    
         
         <li class="swiper-slide tranEff tranEff swiper-slide-next" role="group"">
<div class="main_banner_w">
               <div class="banner_back_img">
                  <img class="pc_banner" src="/img/pc1.jpg" onerror="this.src='/images/no_image.png'" alt="배너">
                  <img class="mo_banner" src="/img/m1.jpg" onerror="this.src='/images/no_image.png'" alt="배너 모바일" />
               </div>                
               
               <div class="main_banner_text">
                  <h2>
  <div class="font_w300">팝업, 전시, 축제 등</div>
  <div>한 번에 확인할 수 없을까?</div>
</h2>
<div class="num_text">03</div>
<div class="main_sub_text">전국의 다양한 콘텐츠를 경험하세요.</div>
               </div>
            </div>
         </li>
    
      <li class="swiper-slide tranEff swiper-slide-prev" >
            <div class="main_banner_w">
               <div class="banner_back_img">
                  <img class="pc_banner" src="/img/pc2.jpg"  onerror="this.src='/images/no_image.png'" alt="배너">
                  <img class="mo_banner" src="/img/m2.jpg" onerror="this.src='/images/no_image.png'" alt="배너모바일">
               </div>                
               
               <div class="main_banner_text">
                  <h2>
  <div class="font_w300">팝업스토어? 플리마켓?</div>
  <div>하나도 어렵지 않아요.</div>
</h2>
<div class="num_text">01</div>
  <div class="main_sub_text">A부터 Z까지 가치공간과 함께라면!
</div>
         </div>
            </div>
         </li><li class="swiper-slide tranEff swiper-slide-visible swiper-slide-active">
            <div class="main_banner_w">
               <div class="banner_back_img">
                  <img class="pc_banner" src="/img/pc3.jpg"  onerror="this.src='/images/no_image.png'" alt="배너">
                  <img class="mo_banner" src="/img/m3.jpg" onerror="this.src='/images/no_image.png'" alt="배너모바일">
               </div>                
               
               <div class="main_banner_text">
                  <h2>
  <div class="font_w300">니즈에 딱 맞는 </div>
  <div>팝업 공간이 바로 여기에!</div>
</h2>

<div class="num_text" xss="removed">02</div>
<div class="main_sub_text">가치공간의 공간 매칭 서비스를 받아보세요.</div>
         </div>
            </div>
         </li></ul>

      <div class="swiper-button-next main" tabindex="0" role="button" aria-label="Next slide" aria-controls="swiper-wrapper-84f107fad5823f5ee"></div>
      <div class="swiper-button-prev main" tabindex="0" role="button" aria-label="Previous slide" aria-controls="swiper-wrapper-84f107fad5823f5ee"></div>
      <div class="pagination_bullet main swiper-pagination-bullets swiper-pagination-horizontal"><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet swiper-pagination-bullet-active" aria-current="true"></span><span class="swiper-pagination-bullet"></span></div>

   <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></section>
   </div>
   <br>
   <script>
  var swiper = new Swiper(".mySwiper", {
  slidesPerView: 2,
	  navigation: {
		nextEl: ".swiper-button-next.main",
		prevEl: ".swiper-button-prev.main" 
		},
			
	  effect: "fade",
	  loop: "infinite",
		autoHeight: false, // 슬라이드 높이 자동 조절 비활성화
	  pagination: {   //페이징 사용자 설정
			el: ".pagination_bullet",   //페이징 태그 클래스 설정 
			type : 'bullets'
		},
		
	  });

	swiper.on('slideChange', function (sld) {
	  document.body.setAttribute('data-sld', sld.realIndex);
	});
	
	</script>


<div class="all-category-container">
    <div class="category-item"><img class="all" alt="all" src="./img/category/all.png"><p>전체</p></div>
    <div class="category-item"><img class="commercial" alt="commercial" src="./img/category/commercial.png"><p>상업</p></div>
   <div class="category-item"><img class="studio" alt="studio" src="./img/category/studio.png"><p>스튜디오</p></div>
    <div class="category-item"><img class="culture" alt="culture" src="./img/category/culture.png"><p>문화</p></div>    
    <div class="category-item"><img class="business" alt="business" src="./img/category/business.png"><p>업무</p></div>
    </div>
    <hr>
    <br>

<div class="entire-cate">
<div class="category commercial"><img alt="cafe" src="./img/category/cafe.png"><p>${cateList[0].cname }</p></div>
<div class="category commercial"><img alt="food" src="./img/category/food.png"><p>${cateList[1].cname }</p></div>
<div class="category commercial"><img alt="drink" src="./img/category/drink.png"><p>${cateList[2].cname }</p></div>
<div class="category commercial"><img alt="else" src="./img/category/else.png"><p>${cateList[7].cname }</p></div>
<div class="category studio"><img alt="practice" src="./img/category/practice.png"><p>${cateList[3].cname }</p></div>
<div class="category studio"><img alt="rec" src="./img/category/rec.png"><p>${cateList[4].cname }</p></div>
<div class="category studio"><img alt="party" src="./img/category/party.png"><p>${cateList[5].cname }</p></div>
<div class="category studio"><img alt="set" src="./img/category/set.png"><p>${cateList[6].cname }</p></div>
<div class="category studio"><img alt="auditorium" src="./img/category/auditorium.png"><p>${cateList[8].cname }</p></div>
<div class="category business"><img alt="office" src="./img/category/office.png"><p>${cateList[11].cname }</p></div>
<div class="category business"><img alt="officetels" src="./img/category/officetels.png"><p>${cateList[12].cname }</p></div>
<div class="category culture"><img alt="gallery" src="./img/category/gallery.png"><p>${cateList[9].cname }</p></div>
<div class="category culture"><img alt="concert" src="./img/category/concert.png"><p>${cateList[10].cname }</p></div>
</div>
 <script>
  $(".commercial, .business, .studio, .culture").click(function () {
       var category = $(this).attr("class");
       showCategory(category);
     });

     $(".all").click(function() {
       showCategory('all');
     });

     function showCategory(category) {
       $(".category").hide();
       if (category === 'all') {
         showAllItems();
       } else {
         $(".category." + category).show();
       }
     }

     function showAllItems() {
       $(".category").show();
     }
  </script>
  <!-- jy 메인 css한 부분--> 
    <div class="partition-line"></div>
    <section class="section--cardtype inner1400 m-pd24 pdt80 m-pdr0">
        <h4 class="txt__tit">최신순</h4>
        <span class="txt__subtit">최신이다</span>
        <span class="see-more"><a href="/schedule/search?gubun=space">더보기
        <div class="arrow_right"></div></span></a>
        <div class="swiper swiper_space1">
        <div class="swiper-wrapper">
         <div class="card__item3 swiper-slide">
            <div class="">
               <div class="card-sign-group">
                   <div class="sign-recommand"><p>추천</p></div> 
               </div>
            </div>
            
      <c:forEach items="${imageC }" var="row" varStatus="loop">
              <button class="space_120 btn_like-16 " data-id="120" data-gubun="space"></button>
              <a href="./bdetail?bno=${row.bno}">
               <img class="card_img" src="/images/places/${row.realFile}" style="width:230px; height:170px;" onerror="this.src='/images/no_image.png'" alt="" />
            <div  class="card__inner">         
              <div class="txt__wrap">
               <p class="txt__card__tit">${row.btitle}</p><p class="txt__subtit__sm">${row.addr}</p>
              </div>
            </div>
              </a>   
         </div>
         
         <div class="card__item3 swiper-slide">
              <button class="space_119 btn_like-16 " data-id="119" data-gubun="space"></button>        
      </c:forEach> 
         </div>
      <div class="swiper-button-next space_card2_next"></div>
      <div class="swiper-button-prev space_card2_prev"></div>
     </div>
   </section>
   
   <script>
   var mySwiper = new Swiper('.swiper', {
slidesPerView : 'auto', // 한 슬라이드에 보여줄 갯수
spaceBetween : 6, // 슬라이드 사이 여백
 slidesPerGroup: 1,
loop : false, // 슬라이드 반복 여부
loopAdditionalSlides : 1, // 슬라이드 반복 시 마지막 슬라이드에서 다음 슬라이드가 보여지지 않는 현상 수정
pagination : false, // pager 여부
autoplay : {  // 자동 슬라이드 설정 , 비 활성화 시 false
  delay : 30000,   // 시간 설정
  disableOnInteraction : false,  // false로 설정하면 스와이프 후 자동 재생이 비활성화 되지 않음
},
navigation: {   // 버튼 사용자 지정
	nextEl: '.swiper-button-next',
	prevEl: '.swiper-button-prev',
},
});

</script>

   <div class="partition-line"></div>
    <section class="section--cardtype inner1400 m-pd24 pdt80 m-pdr0">
        <h4 class="txt__tit">조회수 높은순</h4>
        <span class="txt__subtit">조회수가 높다</span>
        <span class="see-more"><a href="/schedule/search?gubun=space">더보기
        <div class="arrow_right"></div></span></a>
        <div class="swiper swiper_space2">
        <div class="swiper-wrapper swiper_space2">
         <div class="card__item3 swiper-slide">
            <div class="">
               <div class="card-sign-group">
                   <div class="sign-recommand"><p>추천</p></div> 
               </div>
            </div>
            
      <c:forEach items="${imageC }" var="row" varStatus="loop">
              <button class="space_120 btn_like-16 " data-id="120" data-gubun="space"></button>
              <a href="./bdetail?bno=${row.bno}">
               <img class="card_img" src="/images/places/${row.realFile}"  style="width:230px; height:230px;" onerror="this.src='/images/no_image.png'" alt="" />
            <div  class="card__inner">         
              <div class="txt__wrap">
               <p class="txt__card__tit">${row.btitle}</p><p class="txt__subtit__sm">${row.addr}</p>
              </div>
            </div>
              </a>   
         </div>
         
         <div class="card__item3 swiper-slide">
              <button class="space_119 btn_like-16 " data-id="119" data-gubun="space"></button>        
      </c:forEach> 
         </div>
      <div class="swiper-button-next space_card2_next"></div>
      <div class="swiper-button-prev space_card2_prev"></div>
     </div>
   </section>
   
   <script>
   var mySwiper = new Swiper('.swiper', {
slidesPerView : 'auto', // 한 슬라이드에 보여줄 갯수
spaceBetween : 6, // 슬라이드 사이 여백
loop : false, // 슬라이드 반복 여부
loopAdditionalSlides : 1, // 슬라이드 반복 시 마지막 슬라이드에서 다음 슬라이드가 보여지지 않는 현상 수정
pagination : false, // pager 여부
autoplay : {  // 자동 슬라이드 설정 , 비 활성화 시 false
  delay : 30000,   // 시간 설정
  disableOnInteraction : false,  // false로 설정하면 스와이프 후 자동 재생이 비활성화 되지 않음
},
navigation: {   // 버튼 사용자 지정
	nextEl: '.swiper-button-next',
	prevEl: '.swiper-button-prev',
},
});

</script>
   <div class="partition-line"></div>
<section class="section--cardtype inner1400 m-pd24 pdt80 m-pdr0">
	  <h4 class="txt__tit">찜 높은순</h4>
	  <span class="txt__subtit">찜이 높아요</span>
	  <span class="see-more"><a href="/schedule/search?gubun=popup&amp;sort=soon">더보기</a><div class="arrow_right"></div></span>
	  <div>
		<div class="swiper popup_due_card3_swiper swiper-initialized swiper-horizontal swiper-backface-hidden">
		  <div class="swiper-wrapper" id="swiper-wrapper-95dca4881fa61d33" aria-live="polite">	
	<c:forEach items="${imgsubst }" var="row" varStatus="loop">
			<div class="card__item2 swiper-slide main-p swiper-slide-active" role="group" aria-label="1 / 10" style="margin-right: 20px;">			  
				<div class="cccc">
					<div class="card-sign-group">
					</div>
					<button class="schedule_2568 btn_like-16 " data-id="2568" data-gubun="schedule"></button>
					<div class="location-box">
						<img src="../images/ico_card_location.svg" alt=""><span>${row.addr }</span>
					</div>
					 <a href="./bdetail?bno=${row.bno}">
					  <img class="card_img" src="/images/places/${row.realFile}" onerror="this.src='/images/no_image.png'" alt="">

				</div>
  	<div  class="card__inner2">         
              <div class="txt__wrap2">
               <p class="txt__card__tit">${row.btitle}</p>
               <p class="txt__subtit__sm">${row.addDetail}</p>
               <hr class="card-line">
               <div class="reception-period-tex">게시일<br>
               <span class="term">${row.bdate}</span></div>
               
              </div>
            </div>			
			</div>
			</a>
			 </c:forEach> 
			</div>
		<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
	  </div>
	  <div class="swiper-button-next popup_due_card3_next" tabindex="0" role="button" aria-label="Next slide" aria-controls="swiper-wrapper-95dca4881fa61d33" aria-disabled="false"></div>
	  <div class="swiper-button-prev popup_due_card3_prev swiper-button-disabled" tabindex="-1" role="button" aria-label="Previous slide" aria-controls="swiper-wrapper-95dca4881fa61d33" aria-disabled="true"></div>


	</section>
   
   <script>
   var mySwiper = new Swiper('.swiper', {
slidesPerView : 'auto', // 한 슬라이드에 보여줄 갯수
spaceBetween : 6, // 슬라이드 사이 여백
loop : false, // 슬라이드 반복 여부
loopAdditionalSlides : 1, // 슬라이드 반복 시 마지막 슬라이드에서 다음 슬라이드가 보여지지 않는 현상 수정
pagination : false, // pager 여부
autoplay : {  // 자동 슬라이드 설정 , 비 활성화 시 false
  delay : 30000,   // 시간 설정
  disableOnInteraction : false,  // false로 설정하면 스와이프 후 자동 재생이 비활성화 되지 않음
},
navigation: {   // 버튼 사용자 지정
	nextEl: '.swiper-button-next',
	prevEl: '.swiper-button-prev',
},
});

</script>

   <div class="partition-line"></div>
<section class="section--cardtype inner1400 m-pd24 pdt80 m-pdr0">
	  <h4 class="txt__tit">더미1</h4>
	  <span class="txt__subtit">더미1</span>
	  <span class="see-more"><a href="/schedule/search?gubun=popup&amp;sort=soon">더보기</a><div class="arrow_right"></div></span>
	  <div>
		<div class="swiper popup_due_card3_swiper swiper-initialized swiper-horizontal swiper-backface-hidden">
		  <div class="swiper-wrapper" id="swiper-wrapper-95dca4881fa61d33" aria-live="polite">	
	<c:forEach items="${imgsubst }" var="row" varStatus="loop">
			<div class="card__item2 swiper-slide main-p swiper-slide-active" role="group" aria-label="1 / 10" style="margin-right: 20px;">			  
				<div class="cccc">
					<div class="card-sign-group">
					</div>
					<button class="schedule_2568 btn_like-16 " data-id="2568" data-gubun="schedule"></button>
					<div class="location-box">
						<img src="../images/ico_card_location.svg" alt=""><span>${row.addr }</span>
					</div>
					 <a href="./bdetail?bno=${row.bno}">
					  <img class="card_img" src="/images/places/${row.realFile}" onerror="this.src='/images/no_image.png'" alt="">

				</div>
  	<div  class="card__inner2">         
              <div class="txt__wrap2">
               <p class="txt__card__tit">${row.btitle}</p>
               <p class="txt__subtit__sm">${row.addDetail}</p>
               <hr class="card-line">
               <div class="reception-period-tex">게시일<br>
               <span class="term">${row.bdate}</span></div>
               
              </div>
            </div>			
			</div>
			</a>
			 </c:forEach> 
			</div>
		<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
	  </div>
	  <div class="swiper-button-next popup_due_card3_next" tabindex="0" role="button" aria-label="Next slide" aria-controls="swiper-wrapper-95dca4881fa61d33" aria-disabled="false"></div>
	  <div class="swiper-button-prev popup_due_card3_prev swiper-button-disabled" tabindex="-1" role="button" aria-label="Previous slide" aria-controls="swiper-wrapper-95dca4881fa61d33" aria-disabled="true"></div>


	</section>

   <div class="partition-line"></div>
   <script>
   var mySwiper = new Swiper('.swiper', {
slidesPerView : 'auto', // 한 슬라이드에 보여줄 갯수
spaceBetween : 6, // 슬라이드 사이 여백
loop : false, // 슬라이드 반복 여부
loopAdditionalSlides : 1, // 슬라이드 반복 시 마지막 슬라이드에서 다음 슬라이드가 보여지지 않는 현상 수정
pagination : false, // pager 여부
autoplay : {  // 자동 슬라이드 설정 , 비 활성화 시 false
  delay : 30000,   // 시간 설정
  disableOnInteraction : false,  // false로 설정하면 스와이프 후 자동 재생이 비활성화 되지 않음
},
navigation: {   // 버튼 사용자 지정
	nextEl: '.swiper-button-next',
	prevEl: '.swiper-button-prev',
},
});

</script>

<div class="partition-line"></div>


<!-- mktime : 16--><!-- time : 2023-11-03 16:30:02-->
<section class="section--cardtype inner1400 m-pd24 pdt80 m-pdr0">
  
<section class="pdt80">
  <div class="sub-banner">
   <div class="banner-wrap">
     <div class="banner-title">
      <p class="txt__banner_tit">JustShare</p>
     </div>
     <div class="banner-copy">
      <p class="txt__banner_copy">JustShare은 공간자와 브랜드, 그리고 소비자가 가치공간의 플랫폼 안에서 각자의 가치를 실현하고 한 단계 성장할 수 있는 기회를 제공하는 진화(revolution)의 장입니다.</p>
      <button class="btn_banner"><a href="/help/pc_guide20230426.pdf" target="_blank">사용자 가이드 보기</a></button>
     </div>
     <div class="banner-img img_adjustment">
      <img src="../images/subbanner_img1.png" alt="">
     </div>
   </div>
  </div>
</section>
<script>
function search_check_m2()
{
   var stx   = $('#stxm').val().trim();
   var gubun = $('#gubunm').val() ?? '';
   var datestart = $('#dateStartm').val() ?? '';   
   var duration = $('#durationm').val() ?? '';

   if(stx == '' && gubun == '' && datestart == '' && duration == ''){
      alert('하나이상의 검색 조건을 입력 또는 선택해주세요.');
      return false;
   }
}

</script>
      <section class="section section--m--search">
        <div class="container">
          <header id="header" class="header__type2">
            <div class="header__wrap">
              <div><p style="font-weight: 400; font-size: 24px; margin-left: 12px;">검색</p></div>
              <div class="back btnClose" style="background: url('/images/close.svg') no-repeat 50% 50%; margin: 0;"></div>
            </div>
          </header>
          <form id="search-form" class="inner m_search" method="GET" action="/schedule/search" onsubmit="return search_check_m2();">
            <ul class="searchForm__inner">
              <li class="search_location">
                <img src="/images/ico_search1.png" alt="" />
                <dl>
                  <!--dt>검색어</dt-->
                  <dd>
                    <input type="text" placeholder="키워드를 입력해주세요.(eq. 현대백화점, 강남등)" name="stx" id="stxm" class="input--text" value="" autocomplete="off" />
                  </dd>
                </dl>
              </li>
              <li class="search_type">
                <img src="/images/ico_search2.png" alt="" />
                <dl>
                  <dt>검색 유형</dt>
                  <dd>
                    <select class="selectBox" name="gubun" id="gubunm">
                      <option value="" selected>전체</option>
                      <option value="popup" >팝업 스토어</option>
                      <option value="space" >리테일 공간 대관</option>
                 <option value="event" >전국 행사 정보</option>
                    </select>
                  </dd>
                </dl>
              </li>
              <li class="search_date datepick has--schedule">
                <img src="/images/ico_search3.png" alt="" />
                <dl>
                  <dt>시작 날짜</dt>
                  <dd>
                    <input class="datepick" id="dateStartm" type="text" name="dateStart" value="" placeholder="선택 하세요" readonly="readonly" />
                    <i></i>
                  </dd>
                </dl>
              </li>
              <li class="search_period">
                <img src="/images/ico_search4.png" alt="" />
                <dl>
                  <dt>운영 기간</dt>
                  <dd>
                    <select class="selectBox" name="duration" id="durationm">
                      <option value="" selected>전체</option>
                      <option value="7" >1주일 이하</option>
                      <option value="14" >2주일 이하</option>
                      <option value="31" >1달 이하</option>
                    </select>
                  </dd>
                </dl>
              </li>
              <script></script>
            </ul>
            <button class="search btn--primary">검색</button>
          </form>
        </div>
        <div id="m_search_schedule_list">
            <!-- 메인/팝업 지정 공간 표시용 -->
        </div>
      </section>

    <section class="aside-layerpop">
      <div class="aside-wrap">
        <div class="aside-content">
          <div class="aside-header">
            <a href="/"><img style="width: 100px;" src="/images/mo/logo_m_active2.svg" alt=""></a>
           <form class="searchbar searchbar-length" action="/schedule/search">
            <input type="text" placeholder="전체 둘러보기" name="stx" class="gnb_stx" value="">
            <button type="submit"> <img src="/images/ico_search.svg" alt=""></button> 
           </form>
              <div class="btn-aside-layerpop-close">닫기버튼</div>
          </div>
          <div class="aside-body">
         <!-- 브랜드 stats가 없는경우에만 "non-stat" 추가-->
            <div class="aside-sign-group non-stat">
              <div class="sign-group-profile">
                <div class="sign-group-profile-left">
                <span><a href="/login">로그인</a></span>
                <span><img src="/images/ico_login.svg" alt=""></a></span>
                </div>
                <div class="sign-group-profile-right">
                  <div class="aside-icon-alarm">
                    <img src="/images/ico_alarm.svg" alt="" onclick="top.location.href='/member/alarm'">
              </div>
                </div>
              </div>
              <div class="aside-notice">
                <a href="/schedule/list?dateStart=2023-11-03">
                  <div class="notice-box">
                    <div class="notice-txt">
                      <p class="notice-alarm">&lt;알림&gt;</p>
                      <p class="notice-title">23년 11월 셀러 모집합니다</p>
                    </div>
                      <img src="/images/arrow_right.svg" alt="">
                  </div>
                </a>
              </div>
            </div>
            <!-- 광고배너 -->
            <div class="ad-banner-group">
              <div class="card__item" class="row" id="adbanner" onclick="openModal();currentSlide(1)" >
                <a href="/help/leasing">
                  <img src="/images/ad_banner.png">
                </a>
              </div>
            </div> 
            <!-- 광고배너 종료-->

            <div class="aside-menu-group">
            <p class="txt__aside_maintit">가치공간</p>
              <ul>
                <li><a href="/notice/list" class="aside-arrow">공지사항</a><li>
                <li><a href="/contact/forms" class="aside-arrow">제휴 및 입점문의</a><li>
                <li><a href="/help/leasing" class="aside-arrow">리징</a><li>
                <li><a href="/faq" class="aside-arrow">자주 묻는 질문</a><li>
                <li><a href="/help/pc_guide20230426.pdf" class="aside-arrow" target='_blank'>사용자 가이드</a><li>
              </ul>
            </div>
            <hr class="menu-line">
            <div class="aside-contact-group">
            <p class="txt__aside_maintit">고객센터</p>
              <p class="contact-tit">TEL.  <a href="tel:02-1661-6925">02-1661-6925</a></p>
              <p class="contact-tit">사업자등록번호.  156-81-00883</p>
              <p class="contact-tit">E-mail. <a href="mailto:valuevenue@valuevenue.co.kr">valuevenue@valuevenue.co.kr</a></p>
            </div>
            <hr class="menu-line">
            <div class="aside-sns-group">
            <p class="txt__aside_maintit">SNS</p>
              <div class="social-logo">
                <div class="roundlogo" ><a href="https://www.instagram.com/valuevenue_official" target="_blank"><img src="/images/insta.svg" alt=""></a></div>
                <div class="roundlogo" ><a href="https://www.youtube.com/channel/UC_Yp-_yUp6JxwZAVRkzF94A" target="_blank"><img src="/images/youtube.svg" alt=""></a></div>
                <div class="roundlogo"><a href="https://blog.naver.com/value_venue" target="_blank"><img src="/images/blog.svg" alt=""></a></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

       <%@ include file="footer.jsp"%>
      
      
 <!-- 내가 만진 부분-->     
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
              <li class="line" style="border-left: 1px solid grey; height: 14px; padding-right: 18px;"></li>
              <li><a href="/help/privacy">개인정보처리방침</a></li>
             
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
          <div class="social-list">
            <!-- <p style="font-size:16px; font-weight: bold;">SNS & Blog</p> <br> -->
            <div class="social-logo">
            <div class="roundlogo"><a href="https://www.value-venue.com/" target="_blank"><img src="/images/underbar.svg" alt=""></a></div>
            <div class="roundlogo"><a href="https://apps.apple.com/app/id1514738613" target="_blank"><img src="/images/apple.svg" alt=""></a></div><!--앱스토어-->
            <div class="roundlogo"><a href="https://play.google.com/store/apps/details?id=com.valuevenue.gachispace" target="_blank"><img src="/images/triangle.svg" alt=""></a></div><!--플레이스토어-->
            <div class="roundlogo"><a href="https://pf.kakao.com/_useHC" target="_blank"><img src="/images/comma.svg" alt=""></a></div><!--카카오채널-->
            <div class="roundlogo" ><a href="https://www.facebook.com/valuevenue1" target="_blank"><img src="/images/face.svg" alt=""></a></div><!--페이스북-->
            <div class="roundlogo" ><a href="https://www.instagram.com/valuevenue_official" target="_blank"><img src="/images/insta.svg" alt=""></a></div><!--인스타그램-->
            <div class="roundlogo" ><a href="https://www.youtube.com/channel/UC_Yp-_yUp6JxwZAVRkzF94A" target="_blank"><img src="/images/youtube.svg" alt=""></a></div><!--유튜브-->
            <div class="roundlogo"><a href="https://blog.naver.com/value_venue" target="_blank"><img src="/images/blog.svg" alt=""></a></div><!--블로그-->
          </div>
          </div>
        </div>
        </div>
      </footer>
    </div>
<!-- 내가 만진 부분-->

   <section class="mobile_pop_section mobile_pop" style="display:none;">
      <div class="mb-banner">
         <div class="banner-wrap">
            <div class="mb-banner-img"><a href="https://play.google.com/store/apps/details?id=com.valuevenue.gachispace"><img src="/images/ico_download_logo.svg" style="width:80px;height:auto;margin-bottom: 10px;
             margin-top: -10px;" /></a></div>
            <div class="banner-title" style="width:100%;">
               <p class="mb-banner_title">모바일 앱으로 더욱 쉽고, 빠르게!</p>
               <p class="mb-banner_title" style="font-weight:900;">가치공간 팝업스토어 서비스를 만나보세요!</p>
               <div class="mb-banner-sub">
                  <p class="mb-banner_title" style="color:#fff; text-align:center; font-weight:700;font-size:16px;" onclick="app_link_move('https://play.google.com/store/apps/details?id=com.valuevenue.gachispace')">가치공간 앱으로 보기 <img src="/images/ico_download_arrow.svg" style="width:20px; height:auto; margin-top:-1px;"/></p>
               </div>               
            </div>
         </div>
         <div>
            <p class="mb-banner_title" style="color:#fff; text-align:center; text-decoration:underline;" onclick="mobile_app_func();">괜찮아요, 모바일 웹으로 볼래요!</p>
         </div>
      </div>
   </section>
   <style>
   .mb-banner {
      height:200px;
      margin: 0 10px 120px 10px;
      background-color: #fff;
      border-radius: 10px;
   }
   .mb-banner-img{
      width:100%;
      height:80px;
      text-align:center;
   }
   .mb-banner-sub {
      height:30px;
      color: #fff;
      background-color: #1F6CFD;
      border-radius: 5px;
      padding: 5px;
      margin-top:5px;      
   }
   .mb-banner_title {
      color:black;
      text-align:center;
      font-size:14px;
   }
   .mobile_pop_section {
      display:block;
      bottom:0;
      position:fixed;
      width:100%;
      z-index:110;
      left:0;      
   }
   .notScroll {overflow: hidden;width: 100%;height: 100vh;}
   </style>
   <!-- 내가 만진 부분-->
   <script>
   $(document).ready(function() {
       // "마이페이지" 링크를 클릭했을 때
       $(".b_nav_list a").click(function(event) {
           if (${sessionScope.mid eq null}) {
               // sessionScope.mid가 null일 때 알림 메시지 표시
               alert("로그인 후 이용이 가능합니다.");
               event.preventDefault(); // 링크 이동을 막음
           }
       });
   });
   <!-- 내가 만진 부분-->
   </script>

    <!--date layer-->
    <div class="dateLayer" id="container"></div>
    <!--Simple Calender-->
    <link rel="stylesheet" href="/js/animated-event-calendar/dist/simple-calendar.css">
    <script src="/js/animated-event-calendar/dist/jquery.simple-calendar.js"></script>
    <script>
</script>
  <div id="mask" class="mask"></div>
  <iframe name="_hidden_frame" id="_hidden_frame" width=0 height=0></iframe>
<!-- Global site tag (gtag.js) - Google Analytics -->
<!-- 구글 애널리틱스 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-234069340-1"></script>


  </body>
</html>