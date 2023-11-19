<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="kr">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scaleable=no, maximum-scale=1" />
    <title>Just Share</title>

    <link rel="stylesheet" href="/css/style.css?ver=20000120" />
    <link rel="stylesheet" href="/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="/css/valuevenue.css?ver=20000120" />
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
   <link rel="stylesheet" href="/css/listpage.css?ver=20000120">
   <link rel="stylesheet" href="/css/main_page.css" />

   <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

   <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>   

  </head> 
  
  <style>
.logout{
margin-right:-32px !important;
}
</style>
<body>
  <div class="body__container section">
  <input type="hidden" class="is_phpself" value="/index.php">
  <input type="hidden" class="is_app_banner" value="">
   
   <div class="top_app_banner" style="display:none;background-color: #fff7e1">
      <div class="app_div">
         <a class="banner_app_link" href="https://play.google.com/store/apps/details?id=com.valuevenue.gachispace"><span class="app_down">다운로드</span></a>
      </div>
      <div class="app_div_close"></div>
   </div>
   <!--헤더-->
   <header id="header" class="header_bg_new">
      <div class="header__inner">
        <div class="header__first_row">
           <div class="sign-area">
      <c:choose>
                         <c:when test="${sessionScope.mid eq null}"><a class="nav-link2" href="./login"><img class="logout" src="../img/login.png"></a></c:when>
                         <c:otherwise><a class="nav-link2" onclick="confirmLogout();"><img class="logout" src="../img/logout.png"></a></c:otherwise>
                        </c:choose>     
         <div class="half-line"></div>
            <a href="/mypage"> 마이페이지</a> 
            
         <div class="half-line"></div>
            <a href="/login" target="_blank">가이드</a>
            <div class="half-line"></div>
         <a href="/login">제휴 및 입점문의</a>
            <div class="half-line"></div>
         <a href="/login">자주 묻는 질문</a>
           </div>
        </div>
        <div class="full-line"></div>
        <div class="header__second_row"> 
         <div class="left-side">   
<!--          <img alt="back" src="./img/back.png" style="cursor:pointer" onclick="history.back();">-->
            <h1 class="logo"><a href="/"></a></h1>
         </div>
        <div class="right-side">
            <div class="sign-group">
           <div class="alarm-group" onclick="top.location.href='/member/alarm'">알림아이콘</div>
<!--            <div class="my-thumb" style="background-image: url(/images/ico_profile.svg);">내 썸네일 이미지</div>                     
 -->            </div>
          </div>
      </div>
 
      </div>
    </header>
          
          <!--  모바일  -->
  <header class="header_topnav_new">
        <div class="header_topnav_inner_n">
         <div class="first_row">
        <!--  <img alt="back" src="./img/back.png" style="cursor:pointer" onclick="history.back();"> -->

           <h1 class="logo"><a href="/"></a></h1>
           <div class="blue_btn">
           <c:choose>
                         <c:when test="${sessionScope.mid eq null}"><a class="nav-link2" href="./login"><img class="logout" src="../img/login.png"></a></c:when>
                         <c:otherwise><a class="nav-link2" onclick="logoutAndCloseSocket()"><img class="logout" src="../img/logout.png"></a></c:otherwise>
                        </c:choose>    
              </div>
         </div>

        </div>
      </header>
      <section class="myinfo__pop">
        <div class="myInfo__inner">
          <div class="myregInfo">
            <div class="infoarea">
              <img src="" alt="" />
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
                <button type='button' class="btn btn--primary" onclick="logoutAndCloseSocket()">로그아웃</button>
              </li>
            </ul>
          </div>
        </div>
      </section>
   <div class="banner_img_back">
   <section class="banner_img_wrap mySwiper swiper-fade swiper-initialized swiper-horizontal swiper-watch-progress swiper-backface-hidden">
      <ul class="swiper-wrapper" id="swiper-wrapper-84f107fad5823f5ee" aria-live="off" style="transition-duration: 0ms;">
    
         
         <li class="swiper-slide tranEff">
<div class="main_banner_w">
               <div class="banner_back_img">
                  				<img class="pc_banner" src="/img/pc3.jpg" onerror="this.src='/img/no_image.png'" alt="배너">
                                 <img class="mo_banner" src="/img/m3.jpg" onerror="this.src='/img/no_image.png'" alt="배너 모바일" />
               </div>                
               
               <div class="main_banner_text">
                  <h2>
  <div class="font_w300">여러 공간을</div>
  <div>한 번에 확인할 수 없을까?</div>
</h2>
<div class="num_text">03</div>
<div class="main_sub_text">전국의 다양한 공간을 경험하세요.</div>
               </div>
            </div>
         </li>
    
      <li class="swiper-slide tranEff swiper-slide-prev" style="width: 893px; opacity: 1; transform: translate3d(-893px, 0px, 0px); transition-duration: 0ms;" role="group" aria-label="1 / 3" data-swiper-slide-index="0">
            <div class="main_banner_w">
               <div class="banner_back_img">
                  <img class="pc_banner" src="/img/pc1.jpg"  onerror="this.src='/img/no_image.png'" alt="배너">
                  <img class="mo_banner" src="/img/m1.jpg" onerror="this.src='/img/no_image.png'" alt="배너모바일">
               </div>                
               
               <div class="main_banner_text">
                  <h2>
  <div class="font_w300">공간대여? </div>
  <div>하나도 어렵지 않아요.</div>
</h2>
<div class="num_text">01</div>
  <div class="main_sub_text">A부터 Z까지 JustShare와 함께라면!
</div>
         </div>
            </div>
         </li><li class="swiper-slide tranEff swiper-slide-visible swiper-slide-active" style="width: 893px; opacity: 1; transform: translate3d(-1786px, 0px, 0px); transition-duration: 0ms;" role="group" aria-label="2 / 3" data-swiper-slide-index="1">
            <div class="main_banner_w">
               <div class="banner_back_img">
                  <img class="pc_banner" src="/img/pc2.jpg"  onerror="this.src='/img/no_image.png'" alt="배너">
                  <img class="mo_banner" src="/img/m2.jpg" onerror="this.src='/img/no_image.png'" alt="배너모바일">
               </div>                
               
               <div class="main_banner_text">
                  <h2>
  <div class="font_w300">니즈에 딱 맞는 </div>
  <div>공간이 바로 여기에!</div>
</h2>

<div class="num_text" xss="removed">02</div>
<div class="main_sub_text">JustShare만의 서비스를 받아보세요.</div>
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
<br><br>
<div class="all-container">
<div class="all-category-container">
    <div class="category-item"><p class="all" style="cursor:pointer;">전체</p></div>
    <div class="category-item"><p class="commercial" style="cursor:pointer">상업</p></div>
    <div class="category-item"><p class="studio" style="cursor:pointer">스튜디오</p></div>
    <div class="category-item"><p class="culture" style="cursor:pointer">문화</p></div>    
    <div class="category-item"><p class="business" style="cursor:pointer">업무</p></div>
    </div>
    <br>
<div class="entire-cate">
<div class="category commercial"><img onclick="window.location.href='./board?categories=1'" alt="cafe" src="./img/category/cafe.png"><p>${cateList[0].cname }</p></div>
<div class="category commercial"><img onclick="window.location.href='./board?categories=2'" alt="food" src="./img/category/food.png"><p>${cateList[1].cname }</p></div>
<div class="category commercial"><img onclick="window.location.href='./board?categories=3'" alt="drink" src="./img/category/drink.png"><p>${cateList[2].cname }</p></div>
<div class="category commercial"><img onclick="window.location.href='./board?categories=8'" alt="else" src="./img/category/else.png"><p>${cateList[7].cname }</p></div>
<div class="category studio"><img onclick="window.location.href='./board?categories=4'" alt="practice" src="./img/category/practice.png"><p>${cateList[3].cname }</p></div>
<div class="category studio"><img onclick="window.location.href='./board?categories=5'" alt="rec" src="./img/category/rec.png"><p>${cateList[4].cname }</p></div>
<div class="category studio"><img onclick="window.location.href='./board?categories=6'" alt="party" src="./img/category/party.png"><p>${cateList[5].cname }</p></div>
<div class="category studio"><img onclick="window.location.href='./board?categories=7'" alt="set" src="./img/category/set.png"><p>${cateList[6].cname }</p></div>
<div class="category studio"><img onclick="window.location.href='./board?categories=9'" alt="auditorium" src="./img/category/auditorium.png"><p>${cateList[8].cname }</p></div>
<div class="category business"><img onclick="window.location.href='./board?categories=12'" alt="office" src="./img/category/office.png"><p>${cateList[11].cname }</p></div>
<div class="category business"><img onclick="window.location.href='./board?categories=13'" alt="officetels" src="./img/category/officetels.png"><p>${cateList[12].cname }</p></div>
<div class="category culture"><img onclick="window.location.href='./board?categories=10'" alt="gallery" src="./img/category/gallery.png"><p>${cateList[9].cname }</p></div>
<div class="category culture"><img onclick="window.location.href='./board?categories=11'" alt="concert" src="./img/category/concert.png"><p>${cateList[10].cname }</p></div>
</div>
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
     
     $(".category-item").click(function () {
        
           $(".category-item").css('border-bottom', 'none');

           $(this).css('border-bottom', '2px solid red');
       });


     
  </script>
  <!-- jy 메인 css한 부분--> 
    <div class="partition-line"></div>
    <section class="section--cardtype inner1400 m-pd24 pdt80 m-pdr0">
        <h4 class="txt__tit">최신순</h4>
        <span class="txt__subtit">최근 등록한 게시물을 살펴보세요. </span>
        <span class="see-more"><a href="/board">더보기
        <div class="arrow_right"></div></span></a>
        <div class="swiper swiper_space1">
        <div class="swiper-wrapper">
         <div class="card__item3 swiper-slide">
            <div class="">
               <div class="card-sign-group">
                   <div class="sign-recommand"><p>추천</p></div> 
               </div>
            </div>
            
      <c:forEach items="${boardlatest }" var="row" >
              <button class="space_120 btn_like-16 " data-id="120" data-gubun="space"></button>
              <a href="./bdetail?bno=${row.bno}">
               <img class="card_img" src="../img/places/${row.realFile}" style="width:230px; height:170px;" onerror="this.src='/img/no_image.png'" alt="" />
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
        <span class="txt__subtit">조회수가 높은 게시물을 살펴보세요.</span>
        <span class="see-more"><a href="/board?searchV=&areas=&categories=&equipments=&minPrice=&maxPrice=&sort=3">더보기
        <div class="arrow_right"></div></span></a>
        <div class="swiper swiper_space2">
        <div class="swiper-wrapper swiper_space2">
         <div class="card__item3 swiper-slide">
            <div class="">
               <div class="card-sign-group">
                   <div class="sign-recommand"><p>추천</p></div> 
               </div>
            </div>
            
     <c:forEach items="${boardreadcount }" var="row" >
              <button class="space_120 btn_like-16 " data-id="120" data-gubun="space"></button>
              <a href="./bdetail?bno=${row.bno}">
               <img class="card_img" src="../img/places/${row.realFile}" style="width:230px; height:170px;" onerror="this.src='/img/no_image.png'" alt="" />
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
     <h4 class="txt__tit">좋아요 높은순</h4>
     <span class="txt__subtit">좋아요 높은 게시물을 살펴보세요.</span>
     <span class="see-more"><a href="/board?searchV=&areas=&categories=&equipments=&minPrice=&maxPrice=&sort=2">더보기</a><div class="arrow_right"></div></span>
     <div>
      <div class="swiper popup_due_card3_swiper swiper-initialized swiper-horizontal swiper-backface-hidden">
        <div class="swiper-wrapper" id="swiper-wrapper-95dca4881fa61d33" aria-live="polite">   
   <c:forEach items="${blikescount }" var="row" varStatus="loop">
         <div class="card__item2 swiper-slide main-p swiper-slide-active" role="group" aria-label="1 / 10" style="margin-right: 20px;">           
            <div class="cccc">
               <div class="card-sign-group">
               </div>
               <button class="schedule_2568 btn_like-16 " data-id="2568" data-gubun="schedule"></button>
               <div class="location-box">
                 <span>${row.addr }</span>
               </div>
                <a href="./bdetail?bno=${row.bno}">
                 <img class="card_img" src="../img/places/${row.realFile}" onerror="this.src='/img/no_image.png'" alt="">
            </a>
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

  <%--   <div class="partition-line"></div>
<section class="section--cardtype inner1400 m-pd24 pdt80 m-pdr0">
     <h4 class="txt__tit">내 주변 공간</h4>
     <span class="txt__subtit">내 주변 공간을 살펴보세요.</span>
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
                  <span>${row.addr }</span>
               </div>
                <a href="./bdetail?bno=${row.bno}">
                 <img class="card_img" src="./img/places/${row.realFile}" onerror="this.src='/img/no_image.png'" alt="">

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
 --%>
 
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
<script>
    function confirmLogout() {
        var confirmResult = confirm('로그아웃 하시겠습니까?');
        if (confirmResult) {
            window.location.href = "./logout";
        } else {
        }
    }
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
      <p class="txt__banner_copy">JustShare은 공간자와 브랜드, 그리고 소비자가 JustShare의 플랫폼 안에서 각자의 가치를 실현하고 한 단계 성장할 수 있는 기회를 제공하는 진화(revolution)의 장입니다.</p>
      <button class="btn_banner"><a href="" target="_blank">사용자 가이드 보기</a></button>
     </div>
     <div class="banner-img img_adjustment">
      <img src="" alt="">
     </div>
   </div>
  </div>
</section>

<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function () {
      
      //세션에 저장된 count를 storage에 저장
      sessionStorage.setItem("mid",  "<%=session.getAttribute("mid")%>" );
      
      
      const mid = sessionStorage.getItem("mid");    
      
      
  });

    </script>

    <section class="aside-layerpop">
      <div class="aside-wrap">
        <div class="aside-content">
          <div class="aside-body">
         <!-- 브랜드 stats가 없는경우에만 "non-stat" 추가-->
            <div class="aside-sign-group non-stat">
              <div class="sign-group-profile">

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
              <li><a href="/login">공지사항</a></li>
              <li class="line" style="border-left: 1px solid grey; height: 14px; padding-right: 18px;"></li>
              <li><a href="//login">제휴 및 입점문의</a></li>
              <li class="line" style="border-left: 1px solid grey; height: 14px; padding-right: 18px;"></li>
              <li><a href="/login">문의하기</a></li>
              <li class="line" style="border-left: 1px solid grey; height: 14px; padding-right: 18px;"></li>
              <li><a href="/login">자주 묻는 질문</a></li>
              <li class="line" style="border-left: 1px solid grey; height: 14px; padding-right: 18px;"></li>
              <li><a href="/login">이용약관</a></li>
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
    </div>

  </body>
</html>