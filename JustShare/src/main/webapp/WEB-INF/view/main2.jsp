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
	
	
	
	<meta property="og:locale"		 content="ko_KR" />
	<meta property="og:type"		 content="website" />
	<meta property="og:title"		 content="팝업스토어 NO.1 가치공간 - 온라이프(On-Life) 리테일 플랫폼" />
	<meta property="og:description"  content="가치공간은 가능성 속 잠재된 가치를 발굴하며, 공간 소유자에게는 유휴공간의 재발견을, 브랜드에게는 홍보의 장을, 소비자에게는 새로운 경험을 선사합니다" />
	<meta property="og:url"			 content="https://www.valuevenue.co.kr/" />
	<meta property="og:image"		 content="https://www.valuevenue.co.kr/images/main_default_v.jpg"/>
	<meta property="og:site_name"	 content="가치공간" />
	<meta name="naver-site-verification" content="daa1d446d775041d4d3610f1a1cc60c1562046b1" />

	<meta name="twitter:card"		 content="summary" />
	<meta name="twitter:title"		 content="팝업스토어 NO.1 가치공간 - 온라이프(On-Life) 리테일 플랫폼" />
	<meta name="twitter:description" content="가치공간은 가능성 속 잠재된 가치를 발굴하며, 공간 소유자에게는 유휴공간의 재발견을, 브랜드에게는 홍보의 장을, 소비자에게는 새로운 경험을 선사합니다" />
	<meta name="twitter:image"		 content="https://www.valuevenue.co.kr/images/main_default_v.jpg" />
	<meta name="twitter:domain"		 content="가치공간" />
	
	<meta name="robots" content="index,follow">
	<meta name="naver-site-verification" content="a2a89e942b8a6cb220490a635dc04627db8547ed" />
	<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    <script src="/js/valuevenue.js?ver=20000120" defer></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>   
    <script src="/js/owl.carousel.min.js"></script>
    <script src="/js/common.js?ver=20000120" defer></script>
    <script src="/js/cookie.js?ver=20000120" defer></script>
<script>
var _ss_user_id	= "";
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
          <div class="search-area">
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
      </div>

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

      <header class="header_topnav_new">
        <div class="header_topnav_inner_n">
         <div class="first_row">
             <img alt="logo" src="./img/JustShare.png" width="25%;" onclick="location.href='./main2'">
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
      </header>
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
   <section class="banner_img_wrap mySwiper">
      <ul class="swiper-wrapper">
    
         
         <li class="swiper-slide tranEff">
            <div class="main_banner_w">
               <div class="banner_back_img">
                  <img class="pc_banner" src="/upload_files/popup/202309/7eafd12a3eacbf4556da7fd48e6dcccb.jpg" alt="배너">
                  <img class="mo_banner" src="/img/mara.jpeg" onerror="this.src='/images/no_image.png'" alt="배너 모바일" />
               </div>                
               
               <div class="main_banner_text">
                  <h2>
  <div class="font_w300">팝업스토어? 플리마켓?</div>
  <div>하나도 어렵지 않아요.</div>
</h2>
<div class="num_text">01</div>
  <div class="main_sub_text">A부터 Z까지 가치공간과 함께라면!
</div>
<button class="main_ba_btn" style="background-color: #ff5252;">
  <a href="/schedule/search?gubun=popup">팝업 스토어 둘러보기</a>
</button>               </div>
            </div>
         </li>
         
         <li class="swiper-slide tranEff">
            <div class="main_banner_w">
               <div class="banner_back_img">
                  <img class="pc_banner" src="/upload_files/popup/202309/cb5a92554d6d6e2bbef0f97e00968f9c.jpg" alt="배너">
                  <img alt="배너 모바일" src="./img/JustShare.png" width="15%;">
               </div>                
               
               <div class="main_banner_text">
                  <h2>
  <div class="font_w300">니즈에 딱 맞는 </div>
  <div>팝업 공간이 바로 여기에!</div>
</h2>
<div class="num_text" xss=removed>02</div>
<div class="main_sub_text">가치공간의 공간 매칭 서비스를 받아보세요.</div>
<button class="main_ba_btn btn_w_b" style="background-color: #ffffff;">
  <a href="/schedule/search?gubun=space">공간 둘러보기</a>
</button>               </div>
            </div>
         </li>
         
         <li class="swiper-slide tranEff">
            <div class="main_banner_w">
               <div class="banner_back_img">
                  <img class="pc_banner" src="/upload_files/popup/202309/5323b6819ecb938849a0e1a4115e566d.jpg" alt="배너">
                  <img alt="배너 모바일" src="./img/1818.png" width="15%;">
               </div>                
               
               <div class="main_banner_text">
                  <h2>
  <div class="font_w300">팝업, 전시, 축제 등</div>
  <div>한 번에 확인할 수 없을까?</div>
</h2>
<div class="num_text">03</div>
<div class="main_sub_text">전국의 다양한 콘텐츠를 경험하세요.</div>
<button class="main_ba_btn" style="background-color: #2463e2;">
  <a href="/schedule/search?gubun=event">전국 행사 둘러보기</a>
</button>               </div>
            </div>
         </li>
    
      </ul>

      <div class="swiper-button-next main"></div>
      <div class="swiper-button-prev main"></div>
      <div class="pagination_bullet main"></div>

   </section>
   </div>
   <br>
   <script>

    var swiper = new Swiper(".mySwiper", {
     navigation: {
      nextEl: ".swiper-button-next.main",
      prevEl: ".swiper-button-prev.main" },
         
     effect: "fade",
     loop: "infinite",
      autoHeight: false, // 슬라이드 높이 자동 조절 비활성화
     pagination: {   //페이징 사용자 설정
         el: ".pagination_bullet",   //페이징 태그 클래스 설정 
         type : 'bullets'
      },
      
     });
      
      $('.swiper-slide').on('mouseover', function(){
     swiper.autoplay.stop();
      });
      $('.swiper-slide').on('mouseout', function(){
         swiper.autoplay.start();
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
	
	
	 <section class="section--cardtype inner1400 m-pd24 pdt80 m-pdr0">
        <h4 class="txt__tit">최신순</h4>
        <span class="txt__subtit">최신이다</span>
        <span class="see-more"><a href="/schedule/search?gubun=space">더보기</a>
        <div class="arrow_right"></div></span>
        <div class="swiper space_card2_swiper">
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
					<img class="card_img" src="/images/places/${row.realFile}" onerror="this.src='/images/no_image.png'" alt="" />
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

	<div class="partition-line"></div>

    <section class="section--cardtype inner1400 m-pd24 pdt80 m-pdr0">
        <h4 class="txt__tit">조회수 높은순</h4>
        <span class="txt__subtit">조회수가 높다</span>
        <span class="see-more"><a href="/schedule/search?gubun=space">더보기</a></span>
        <div class="swiper space_card2_swiper">
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
					<img class="card_img" src="/images/places/${row.realFile}" onerror="this.src='/images/no_image.png'" alt="" />
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

	<div class="partition-line"></div>

<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
<script>
$(function () {
	swiper_init("space_card2", 16, 25);
});

    var mySwiper = new Swiper('.swiper', {
       
        slidesPerView: 3, 
        spaceBetween: 10,
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
    });
</script>

	<section class="section--cardtype inner1400 m-pd24 pdt80 m-pdr0">
	  <h4 class="txt__tit">새로 등록된 팝업 스토어</h4>
	  <span class="txt__subtit">최근 등록된 팝업 스토어를 살펴보세요.</span>
	  <span class="see-more"><a href="/schedule/search?gubun=popup&sort=new">더보기</a><div class="arrow_right"></div></span>
	  <div>
		<div class="swiper popup_card3_swiper">
		  <div class="swiper-wrapper">
			<div class="card__item2 swiper-slide main-p">
			  
				<div class="cccc">
					<div class="card-sign-group">
					</div>
					<button class="schedule_2620 btn_like-16 " data-id="2620" data-gubun="schedule"></button>
					<a href="/schedule/popup_view?id=2620">
					  <img class="card_img" src="/upload_files/schedule/202311/t600_892093dd7a3692961b661b46e013e3f3.jpg" onerror="this.src='/images/no_image.png'" alt="" />
					</a>
					<div class="location-box">
						<img src="../images/ico_card_location.svg" alt=""><span>경기 화성시</span>
					</div>
				</div>
				<a href="/schedule/popup_view?id=2620">
				<div class="card__inner2">
				  <div class="txt__wrap2">
					<p class="txt__card__tit">롯데백화점 동탄점 3층 팝업매장B 3차 V</p><p class="txt__subtit__sm">현 하고 매장</p>
					<hr class="card-line">
					<div class="txt__subtit__event">팝업기간 <span class="term">24.01.17(수) ~ 24.01.31(수)</span></div>
					<div class="reception-period">
					  <div class="reception-period-text">
						<span>접수기간</span>
					  </div>
					  <div class="reception-period-term">
						<span>23.11.02(목) ~ 24.01.16(화)</span>
					  </div>
					</div>
				  </div>
				</div>
				</a>
			</div>
			<div class="card__item2 swiper-slide main-p">
			  
				<div class="cccc">
					<div class="card-sign-group">
					</div>
					<button class="schedule_2618 btn_like-16 " data-id="2618" data-gubun="schedule"></button>
					<a href="/schedule/popup_view?id=2618">
					  <img class="card_img" src="/upload_files/schedule/202311/t600_892093dd7a3692961b661b46e013e3f3.jpg" onerror="this.src='/images/no_image.png'" alt="" />
					</a>
					<div class="location-box">
						<img src="../images/ico_card_location.svg" alt=""><span>경기 화성시</span>
					</div>
				</div>
				<a href="/schedule/popup_view?id=2618">
				<div class="card__inner2">
				  <div class="txt__wrap2">
					<p class="txt__card__tit">롯데백화점 동탄점 3층 팝업매장B 2차 V</p><p class="txt__subtit__sm">현 하고 매장</p>
					<hr class="card-line">
					<div class="txt__subtit__event">팝업기간 <span class="term">24.01.03(수) ~ 24.01.16(화)</span></div>
					<div class="reception-period">
					  <div class="reception-period-text">
						<span>접수기간</span>
					  </div>
					  <div class="reception-period-term">
						<span>23.11.02(목) ~ 24.01.02(화)</span>
					  </div>
					</div>
				  </div>
				</div>
				</a>
			</div>
			<div class="card__item2 swiper-slide main-p">
			  
				<div class="cccc">
					<div class="card-sign-group">
					</div>
					<button class="schedule_2617 btn_like-16 " data-id="2617" data-gubun="schedule"></button>
					<a href="/schedule/popup_view?id=2617">
					  <img class="card_img" src="/upload_files/schedule/202311/t600_892093dd7a3692961b661b46e013e3f3.jpg" onerror="this.src='/images/no_image.png'" alt="" />
					</a>
					<div class="location-box">
						<img src="../images/ico_card_location.svg" alt=""><span>경기 화성시</span>
					</div>
				</div>
				<a href="/schedule/popup_view?id=2617">
				<div class="card__inner2">
				  <div class="txt__wrap2">
					<p class="txt__card__tit">롯데백화점 동탄점 3층 팝업매장B 1차 V</p><p class="txt__subtit__sm">현 하고 매장</p>
					<hr class="card-line">
					<div class="txt__subtit__event">팝업기간 <span class="term">23.12.19(화) ~ 24.01.02(화)</span></div>
					<div class="reception-period">
					  <div class="reception-period-text">
						<span>접수기간</span>
					  </div>
					  <div class="reception-period-term">
						<span>23.11.02(목) ~ 23.12.18(월)</span>
					  </div>
					</div>
				  </div>
				</div>
				</a>
			</div>
			<div class="card__item2 swiper-slide main-p">
			  
				<div class="cccc">
					<div class="card-sign-group">
					</div>
					<button class="schedule_2613 btn_like-16 " data-id="2613" data-gubun="schedule"></button>
					<a href="/schedule/popup_view?id=2613">
					  <img class="card_img" src="/upload_files/schedule/202311/t600_39d8147d7dda090bd8dc8b69d5bbfe3a.png" onerror="this.src='/images/no_image.png'" alt="" />
					</a>
					<div class="location-box">
						<img src="../images/ico_card_location.svg" alt=""><span>서울 성동구</span>
					</div>
				</div>
				<a href="/schedule/popup_view?id=2613">
				<div class="card__inner2">
				  <div class="txt__wrap2">
					<p class="txt__card__tit">기타 성수아뜰리에_초록 4층 팝업매장A V_</p><p class="txt__subtit__sm">서울숲 아뜰리에길 초입</p>
					<hr class="card-line">
					<div class="txt__subtit__event">팝업기간 <span class="term">23.11.15(수) ~ 23.12.15(금)</span></div>
					<div class="reception-period">
					  <div class="reception-period-text">
						<span>접수기간</span>
					  </div>
					  <div class="reception-period-term">
						<span>23.11.01(수) ~ 23.11.05(일)</span>
					  </div>
					</div>
				  </div>
				</div>
				</a>
			</div>
			<div class="card__item2 swiper-slide main-p">
			  
				<div class="cccc">
					<div class="card-sign-group">
					</div>
					<button class="schedule_2612 btn_like-16 " data-id="2612" data-gubun="schedule"></button>
					<a href="/schedule/popup_view?id=2612">
					  <img class="card_img" src="/upload_files/schedule/202311/t600_84c1c7c727614ddefe8b6a5c5bd2de8a.png" onerror="this.src='/images/no_image.png'" alt="" />
					</a>
					<div class="location-box">
						<img src="../images/ico_card_location.svg" alt=""><span>서울 성동구</span>
					</div>
				</div>
				<a href="/schedule/popup_view?id=2612">
				<div class="card__inner2">
				  <div class="txt__wrap2">
					<p class="txt__card__tit">기타 성수아뜰리에_초록 3층 팝업매장A V_</p><p class="txt__subtit__sm">서울숲 아뜰리에길 초입</p>
					<hr class="card-line">
					<div class="txt__subtit__event">팝업기간 <span class="term">23.11.15(수) ~ 23.12.15(금)</span></div>
					<div class="reception-period">
					  <div class="reception-period-text">
						<span>접수기간</span>
					  </div>
					  <div class="reception-period-term">
						<span>23.11.01(수) ~ 23.11.05(일)</span>
					  </div>
					</div>
				  </div>
				</div>
				</a>
			</div>
			<div class="card__item2 swiper-slide main-p">
			  
				<div class="cccc">
					<div class="card-sign-group">
					</div>
					<button class="schedule_2610 btn_like-16 " data-id="2610" data-gubun="schedule"></button>
					<a href="/schedule/popup_view?id=2610">
					  <img class="card_img" src="/upload_files/schedule/202311/t600_2ecd7d4c79bd8f38bd53d29e6246f5a9.png" onerror="this.src='/images/no_image.png'" alt="" />
					</a>
					<div class="location-box">
						<img src="../images/ico_card_location.svg" alt=""><span>서울 성동구</span>
					</div>
				</div>
				<a href="/schedule/popup_view?id=2610">
				<div class="card__inner2">
				  <div class="txt__wrap2">
					<p class="txt__card__tit">기타 성수아뜰리에_초록 2층 팝업매장A V_</p><p class="txt__subtit__sm">서울숲 아뜰리에길 초입</p>
					<hr class="card-line">
					<div class="txt__subtit__event">팝업기간 <span class="term">23.11.15(수) ~ 23.11.30(목)</span></div>
					<div class="reception-period">
					  <div class="reception-period-text">
						<span>접수기간</span>
					  </div>
					  <div class="reception-period-term">
						<span>23.11.01(수) ~ 23.11.05(일)</span>
					  </div>
					</div>
				  </div>
				</div>
				</a>
			</div>
			<div class="card__item2 swiper-slide main-p">
			  
				<div class="cccc">
					<div class="card-sign-group">
					</div>
					<button class="schedule_2603 btn_like-16 " data-id="2603" data-gubun="schedule"></button>
					<a href="/schedule/popup_view?id=2603">
					  <img class="card_img" src="/upload_files/schedule/202311/t600_48f544df80a53506c38465822f4ce37d.png" onerror="this.src='/images/no_image.png'" alt="" />
					</a>
					<div class="location-box">
						<img src="../images/ico_card_location.svg" alt=""><span>서울 성동구</span>
					</div>
				</div>
				<a href="/schedule/popup_view?id=2603">
				<div class="card__inner2">
				  <div class="txt__wrap2">
					<p class="txt__card__tit">기타 성수아뜰리에_초록 1층 팝업매장A V_</p><p class="txt__subtit__sm">성수 아뜰리에 초입</p>
					<hr class="card-line">
					<div class="txt__subtit__event">팝업기간 <span class="term">23.11.15(수) ~ 23.11.30(목)</span></div>
					<div class="reception-period">
					  <div class="reception-period-text">
						<span>접수기간</span>
					  </div>
					  <div class="reception-period-term">
						<span>23.11.01(수) ~ 23.11.05(일)</span>
					  </div>
					</div>
				  </div>
				</div>
				</a>
			</div>
			<div class="card__item2 swiper-slide main-p">
			  
				<div class="cccc">
					<div class="card-sign-group">
					</div>
					<button class="schedule_2601 btn_like-16 " data-id="2601" data-gubun="schedule"></button>
					<a href="/schedule/popup_view?id=2601">
					  <img class="card_img" src="/upload_files/schedule/202310/t600_20231023182430_90917.jpg" onerror="this.src='/images/no_image.png'" alt="" />
					</a>
					<div class="location-box">
						<img src="../images/ico_card_location.svg" alt=""><span>서울 성동구</span>
					</div>
				</div>
				<a href="/schedule/popup_view?id=2601">
				<div class="card__inner2">
				  <div class="txt__wrap2">
					<p class="txt__card__tit">기타 언더스탠드에비뉴 1층 A동 12호A V_</p><p class="txt__subtit__sm">A동 12호 V_</p>
					<hr class="card-line">
					<div class="txt__subtit__event">팝업기간 <span class="term">23.12.01(금) ~ 23.12.31(일)</span></div>
					<div class="reception-period">
					  <div class="reception-period-text">
						<span>접수기간</span>
					  </div>
					  <div class="reception-period-term">
						<span>23.10.01(일) ~ 23.11.30(목)</span>
					  </div>
					</div>
				  </div>
				</div>
				</a>
			</div>
			<div class="card__item2 swiper-slide main-p">
			  
				<div class="cccc">
					<div class="card-sign-group">
					</div>
					<button class="schedule_2600 btn_like-16 " data-id="2600" data-gubun="schedule"></button>
					<a href="/schedule/popup_view?id=2600">
					  <img class="card_img" src="/upload_files/schedule/202310/t600_20231027151453_95065.jpg" onerror="this.src='/images/no_image.png'" alt="" />
					</a>
					<div class="location-box">
						<img src="../images/ico_card_location.svg" alt=""><span>서울 성동구</span>
					</div>
				</div>
				<a href="/schedule/popup_view?id=2600">
				<div class="card__inner2">
				  <div class="txt__wrap2">
					<p class="txt__card__tit">기타 언더스탠드에비뉴 1층 A동 10호A V_</p><p class="txt__subtit__sm">지상1층 A동 10호 V_</p>
					<hr class="card-line">
					<div class="txt__subtit__event">팝업기간 <span class="term">23.12.16(토) ~ 23.12.31(일)</span></div>
					<div class="reception-period">
					  <div class="reception-period-text">
						<span>접수기간</span>
					  </div>
					  <div class="reception-period-term">
						<span>23.10.01(일) ~ 23.12.15(금)</span>
					  </div>
					</div>
				  </div>
				</div>
				</a>
			</div>
			<div class="card__item2 swiper-slide main-p">
			  
				<div class="cccc">
					<div class="card-sign-group">
					</div>
					<button class="schedule_2599 btn_like-16 " data-id="2599" data-gubun="schedule"></button>
					<a href="/schedule/popup_view?id=2599">
					  <img class="card_img" src="/upload_files/schedule/202310/t600_20231023182412_92196.jpg" onerror="this.src='/images/no_image.png'" alt="" />
					</a>
					<div class="location-box">
						<img src="../images/ico_card_location.svg" alt=""><span>서울 성동구</span>
					</div>
				</div>
				<a href="/schedule/popup_view?id=2599">
				<div class="card__inner2">
				  <div class="txt__wrap2">
					<p class="txt__card__tit">기타 언더스탠드에비뉴 1층 A동 4호A V_</p><p class="txt__subtit__sm">A동 4호 V</p>
					<hr class="card-line">
					<div class="txt__subtit__event">팝업기간 <span class="term">23.12.16(토) ~ 23.12.31(일)</span></div>
					<div class="reception-period">
					  <div class="reception-period-text">
						<span>접수기간</span>
					  </div>
					  <div class="reception-period-term">
						<span>23.10.01(일) ~ 23.12.15(금)</span>
					  </div>
					</div>
				  </div>
				</div>
				</a>
			</div>
		  </div>
		</div>
	  </div>
	  <div class="swiper-button-next popup_card3_next"></div>
	  <div class="swiper-button-prev popup_card3_prev"></div>
	</section>

	<div class="partition-line"></div>
	<section class="section--cardtype inner1400 m-pd24 pdt80 m-pdr0">
	  <h4 class="txt__tit">마감 임박 팝업 스토어</h4>
	  <span class="txt__subtit">신청 마감이 2주내인 팝업 스토어를 살펴보세요.</span>
	  <span class="see-more"><a href="/schedule/search?gubun=popup&sort=soon">더보기</a><div class="arrow_right"></div></span>
	  <div>
		<div class="swiper popup_due_card3_swiper">
		  <div class="swiper-wrapper">

			<div class="card__item2 swiper-slide main-p">			  
				<div class="cccc">
					<div class="card-sign-group">
					</div>
					<button class="schedule_2603 btn_like-16 " data-id="2603" data-gubun="schedule"></button>
					<a href="/schedule/popup_view?id=2603">
					  <img class="card_img" src="/upload_files/schedule/202311/t600_48f544df80a53506c38465822f4ce37d.png" onerror="this.src='/images/no_image.png'" alt="" />
					</a>
					<div class="location-box">
						<img src="../images/ico_card_location.svg" alt=""><span>서울 성동구</span>
					</div>
				</div>
				<a href="/schedule/popup_view?id=2603">
				<div class="card__inner2">
				  <div class="txt__wrap2">
					<p class="txt__card__tit">기타 성수아뜰리에_초록 1층 팝업매장A V_</p><p class="txt__subtit__sm">성수 아뜰리에 초입</p>
					<hr class="card-line">
					<div class="txt__subtit__event">팝업기간 <span class="term">23.11.15(수) ~ 23.11.30(목)</span></div>
					<div class="reception-period">
					  <div class="reception-period-text">
						<span>접수기간</span>
					  </div>
					  <div class="reception-period-term">
						<span>23.11.01(수) ~ 23.11.05(일)</span>
					  </div>
					</div>
				  </div>
				</div>
				</a>
			</div>
			<div class="card__item2 swiper-slide main-p">			  
				<div class="cccc">
					<div class="card-sign-group">
					</div>
					<button class="schedule_2610 btn_like-16 " data-id="2610" data-gubun="schedule"></button>
					<a href="/schedule/popup_view?id=2610">
					  <img class="card_img" src="/upload_files/schedule/202311/t600_2ecd7d4c79bd8f38bd53d29e6246f5a9.png" onerror="this.src='/images/no_image.png'" alt="" />
					</a>
					<div class="location-box">
						<img src="../images/ico_card_location.svg" alt=""><span>서울 성동구</span>
					</div>
				</div>
				<a href="/schedule/popup_view?id=2610">
				<div class="card__inner2">
				  <div class="txt__wrap2">
					<p class="txt__card__tit">기타 성수아뜰리에_초록 2층 팝업매장A V_</p><p class="txt__subtit__sm">서울숲 아뜰리에길 초입</p>
					<hr class="card-line">
					<div class="txt__subtit__event">팝업기간 <span class="term">23.11.15(수) ~ 23.11.30(목)</span></div>
					<div class="reception-period">
					  <div class="reception-period-text">
						<span>접수기간</span>
					  </div>
					  <div class="reception-period-term">
						<span>23.11.01(수) ~ 23.11.05(일)</span>
					  </div>
					</div>
				  </div>
				</div>
				</a>
			</div>
			<div class="card__item2 swiper-slide main-p">			  
				<div class="cccc">
					<div class="card-sign-group">
					</div>
					<button class="schedule_2612 btn_like-16 " data-id="2612" data-gubun="schedule"></button>
					<a href="/schedule/popup_view?id=2612">
					  <img class="card_img" src="/upload_files/schedule/202311/t600_84c1c7c727614ddefe8b6a5c5bd2de8a.png" onerror="this.src='/images/no_image.png'" alt="" />
					</a>
					<div class="location-box">
						<img src="../images/ico_card_location.svg" alt=""><span>서울 성동구</span>
					</div>
				</div>
				<a href="/schedule/popup_view?id=2612">
				<div class="card__inner2">
				  <div class="txt__wrap2">
					<p class="txt__card__tit">기타 성수아뜰리에_초록 3층 팝업매장A V_</p><p class="txt__subtit__sm">서울숲 아뜰리에길 초입</p>
					<hr class="card-line">
					<div class="txt__subtit__event">팝업기간 <span class="term">23.11.15(수) ~ 23.12.15(금)</span></div>
					<div class="reception-period">
					  <div class="reception-period-text">
						<span>접수기간</span>
					  </div>
					  <div class="reception-period-term">
						<span>23.11.01(수) ~ 23.11.05(일)</span>
					  </div>
					</div>
				  </div>
				</div>
				</a>
			</div>
			<div class="card__item2 swiper-slide main-p">			  
				<div class="cccc">
					<div class="card-sign-group">
					</div>
					<button class="schedule_2613 btn_like-16 " data-id="2613" data-gubun="schedule"></button>
					<a href="/schedule/popup_view?id=2613">
					  <img class="card_img" src="/upload_files/schedule/202311/t600_39d8147d7dda090bd8dc8b69d5bbfe3a.png" onerror="this.src='/images/no_image.png'" alt="" />
					</a>
					<div class="location-box">
						<img src="../images/ico_card_location.svg" alt=""><span>서울 성동구</span>
					</div>
				</div>
				<a href="/schedule/popup_view?id=2613">
				<div class="card__inner2">
				  <div class="txt__wrap2">
					<p class="txt__card__tit">기타 성수아뜰리에_초록 4층 팝업매장A V_</p><p class="txt__subtit__sm">서울숲 아뜰리에길 초입</p>
					<hr class="card-line">
					<div class="txt__subtit__event">팝업기간 <span class="term">23.11.15(수) ~ 23.12.15(금)</span></div>
					<div class="reception-period">
					  <div class="reception-period-text">
						<span>접수기간</span>
					  </div>
					  <div class="reception-period-term">
						<span>23.11.01(수) ~ 23.11.05(일)</span>
					  </div>
					</div>
				  </div>
				</div>
				</a>
			</div>
			<div class="card__item2 swiper-slide main-p">			  
				<div class="cccc">
					<div class="card-sign-group">
					</div>
					<button class="schedule_2586 btn_like-16 " data-id="2586" data-gubun="schedule"></button>
					<a href="/schedule/popup_view?id=2586">
					  <img class="card_img" src="/upload_files/schedule/202310/t600_20231026192130_14843.jpg" onerror="this.src='/images/no_image.png'" alt="" />
					</a>
					<div class="location-box">
						<img src="../images/ico_card_location.svg" alt=""><span>경기 고양시</span>
					</div>
				</div>
				<a href="/schedule/popup_view?id=2586">
				<div class="card__inner2">
				  <div class="txt__wrap2">
					<p class="txt__card__tit">롯데백화점 일산점 지하2층 팝업A 1차 VT</p><p class="txt__subtit__sm">지하2층 샤롯데광장</p>
					<hr class="card-line">
					<div class="txt__subtit__event">팝업기간 <span class="term">23.11.10(금) ~ 23.11.12(일)</span></div>
					<div class="reception-period">
					  <div class="reception-period-text">
						<span>접수기간</span>
					  </div>
					  <div class="reception-period-term">
						<span>23.10.26(목) ~ 23.11.09(목)</span>
					  </div>
					</div>
				  </div>
				</div>
				</a>
			</div>
			<div class="card__item2 swiper-slide main-p">			  
				<div class="cccc">
					<div class="card-sign-group">
					</div>
					<button class="schedule_2568 btn_like-16 " data-id="2568" data-gubun="schedule"></button>
					<a href="/schedule/popup_view?id=2568">
					  <img class="card_img" src="/upload_files/schedule/202310/t600_20231023182339_34854.png" onerror="this.src='/images/no_image.png'" alt="" />
					</a>
					<div class="location-box">
						<img src="../images/ico_card_location.svg" alt=""><span>부산 해운대구</span>
					</div>
				</div>
				<a href="/schedule/popup_view?id=2568">
				<div class="card__inner2">
				  <div class="txt__wrap2">
					<p class="txt__card__tit">롯데백화점 센텀시티점  지하2층 팝업매장A 2차 VT</p><p class="txt__subtit__sm">입구 앞 (삼성모바일 매장)</p>
					<hr class="card-line">
					<div class="txt__subtit__event">팝업기간 <span class="term">23.11.15(수) ~ 23.11.30(목)</span></div>
					<div class="reception-period">
					  <div class="reception-period-text">
						<span>접수기간</span>
					  </div>
					  <div class="reception-period-term">
						<span>23.10.23(월) ~ 23.11.14(화)</span>
					  </div>
					</div>
				  </div>
				</div>
				</a>
			</div>
			<div class="card__item2 swiper-slide main-p">			  
				<div class="cccc">
					<div class="card-sign-group">
					</div>
					<button class="schedule_2594 btn_like-16 " data-id="2594" data-gubun="schedule"></button>
					<a href="/schedule/popup_view?id=2594">
					  <img class="card_img" src="/upload_files/schedule/202310/t600_20231027151526_21820.png" onerror="this.src='/images/no_image.png'" alt="" />
					</a>
					<div class="location-box">
						<img src="../images/ico_card_location.svg" alt=""><span>서울 성동구</span>
					</div>
				</div>
				<a href="/schedule/popup_view?id=2594">
				<div class="card__inner2">
				  <div class="txt__wrap2">
					<p class="txt__card__tit">기타 언더스탠드에비뉴 1층 A동 2호A V_</p><p class="txt__subtit__sm">A동 2호 V</p>
					<hr class="card-line">
					<div class="txt__subtit__event">팝업기간 <span class="term">23.11.16(목) ~ 23.11.30(목)</span></div>
					<div class="reception-period">
					  <div class="reception-period-text">
						<span>접수기간</span>
					  </div>
					  <div class="reception-period-term">
						<span>23.10.01(일) ~ 23.11.15(수)</span>
					  </div>
					</div>
				  </div>
				</div>
				</a>
			</div>
			<div class="card__item2 swiper-slide main-p">			  
				<div class="cccc">
					<div class="card-sign-group">
					</div>
					<button class="schedule_2595 btn_like-16 " data-id="2595" data-gubun="schedule"></button>
					<a href="/schedule/popup_view?id=2595">
					  <img class="card_img" src="/upload_files/schedule/202310/t600_20231027151526_21820.png" onerror="this.src='/images/no_image.png'" alt="" />
					</a>
					<div class="location-box">
						<img src="../images/ico_card_location.svg" alt=""><span>서울 성동구</span>
					</div>
				</div>
				<a href="/schedule/popup_view?id=2595">
				<div class="card__inner2">
				  <div class="txt__wrap2">
					<p class="txt__card__tit">기타 언더스탠드에비뉴 1층 A동 2호A V_</p><p class="txt__subtit__sm">A동 3호 V</p>
					<hr class="card-line">
					<div class="txt__subtit__event">팝업기간 <span class="term">23.11.16(목) ~ 23.12.15(금)</span></div>
					<div class="reception-period">
					  <div class="reception-period-text">
						<span>접수기간</span>
					  </div>
					  <div class="reception-period-term">
						<span>23.10.01(일) ~ 23.11.15(수)</span>
					  </div>
					</div>
				  </div>
				</div>
				</a>
			</div>
			<div class="card__item2 swiper-slide main-p">			  
				<div class="cccc">
					<div class="card-sign-group">
					</div>
					<button class="schedule_2584 btn_like-16 " data-id="2584" data-gubun="schedule"></button>
					<a href="/schedule/popup_view?id=2584">
					  <img class="card_img" src="/upload_files/schedule/202310/t600_cb689dd3f09cb97f99502b88ef3bdb04.jpg" onerror="this.src='/images/no_image.png'" alt="" />
					</a>
					<div class="location-box">
						<img src="../images/ico_card_location.svg" alt=""><span>경기 남양주시</span>
					</div>
				</div>
				<a href="/schedule/popup_view?id=2584">
				<div class="card__inner2">
				  <div class="txt__wrap2">
					<p class="txt__card__tit">현대프리미엄아울렛 남양주점 2층 팝업B V</p><p class="txt__subtit__sm">1층 팝업존</p>
					<hr class="card-line">
					<div class="txt__subtit__event">팝업기간 <span class="term">23.11.17(금) ~ 23.11.19(일)</span></div>
					<div class="reception-period">
					  <div class="reception-period-text">
						<span>접수기간</span>
					  </div>
					  <div class="reception-period-term">
						<span>23.10.26(목) ~ 23.11.16(목)</span>
					  </div>
					</div>
				  </div>
				</div>
				</a>
			</div>
			<div class="card__item2 swiper-slide main-p">			  
				<div class="cccc">
					<div class="card-sign-group">
					</div>
					<button class="schedule_2587 btn_like-16 " data-id="2587" data-gubun="schedule"></button>
					<a href="/schedule/popup_view?id=2587">
					  <img class="card_img" src="/upload_files/schedule/202310/t600_20231026192130_14843.jpg" onerror="this.src='/images/no_image.png'" alt="" />
					</a>
					<div class="location-box">
						<img src="../images/ico_card_location.svg" alt=""><span>경기 고양시</span>
					</div>
				</div>
				<a href="/schedule/popup_view?id=2587">
				<div class="card__inner2">
				  <div class="txt__wrap2">
					<p class="txt__card__tit">롯데백화점 일산점 지하2층 팝업A 2차 VT</p><p class="txt__subtit__sm">지하2층 샤롯데광장</p>
					<hr class="card-line">
					<div class="txt__subtit__event">팝업기간 <span class="term">23.11.17(금) ~ 23.11.19(일)</span></div>
					<div class="reception-period">
					  <div class="reception-period-text">
						<span>접수기간</span>
					  </div>
					  <div class="reception-period-term">
						<span>23.10.26(목) ~ 23.11.16(목)</span>
					  </div>
					</div>
				  </div>
				</div>
				</a>
			</div>
			</div>
		</div>
	  </div>
	  <div class="swiper-button-next popup_due_card3_next"></div>
	  <div class="swiper-button-prev popup_due_card3_prev"></div>


	</section>

	<div class="partition-line"></div>

<script>
$(function () {
	swiper_init("popup_card3", 20, 18);
	swiper_init("popup_due_card3", 20, 18);
});
</script>
      <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=17998160a1f6d109cd313b82c4d5be2b&libraries=services"></script>
		<div id="main_area_list"></div>
<script>
var is_device	= false
$(function() {
	var options = {
		enableHighAccuracy: true,
		timeout: 8000,
		maximumAge: 0
	};

	if (navigator.geolocation) { // 브라우저 위치 허용(사용 가능) 여부 확인
        navigator.geolocation.getCurrentPosition(function(position){ // 현재 위치의 좌표정보를 가져옴
			var geocoder = new kakao.maps.services.Geocoder();

			geocoder.coord2Address(position.coords.longitude, position.coords.latitude, function(result, status){
				if (status === kakao.maps.services.Status.OK) {
			        // 카카오 API를 통해 좌표에 해당하는 현재 행정구역을 불러 옴
					var area = !!result[0].road_address ? result[0].road_address.region_1depth_name : '서울';
					get_current_location_popup(area, true);
				}
            });
        }, function(error){
			get_current_location_popup('서울', false);
        }, options);
	}else{
		get_current_location_popup('서울' , false);
    }
});

function get_current_location_popup(area_name, current_location = true) {
	// 목록 데이터 ajax 통신
	$.ajax({
		url : '/schedule/_handle.php',
		data : {act:'get_main_area_list', area: area_name, current_location: current_location},
		dataType : 'json',
		method : 'post',
		success : function(data){
			$("#main_area_list").html(data);
			$("#main_area_list .card__type6").owlCarousel({
				loop: false,
				margin: 16,
				nav: true,
				dots: false,
				// autoplay: true,
				autoplayTimeout: 3000,
				autoHeight: false,
				// touchDrag: false,
				// responsiveClass: true,

				responsive: {
					0: {
						items: 1,
						stagePadding: 20,
					},
					720: {
						items: 3,
						nav: false,
						stagePadding: 0,
					},
					1000: {
						items: 4,
						mouseDrag: false
					},
				},
			});
		}
	});
}
</script>
<section class="section--cardtype full-inner1400 mgt80 m-mgt0 cardtype5 m-pdr0 category-inner">
  <div class="container">
	<h4 class="txt__tit">카테고리별 팝업 스토어</h4>
	<div class="swiper  category_swiper">
	  <div class="swiper-wrapper">
		<div class="card__item5 swiper-slide">
		  <a href="/schedule/search?gubun=popup&category=2">
			<div class="img-box">
				<img src="/images/category_new_2.png" alt=""> 
			</div>
			<p class="txt__card__tit">패션잡화 </p>
		  </a>
		</div>
		<div class="card__item5 swiper-slide">
		  <a href="/schedule/search?gubun=popup&category=40">
			<div class="img-box">
				<img src="/images/category_new_40.png" alt=""> 
			</div>
			<p class="txt__card__tit">가드닝 </p>
		  </a>
		</div>
		<div class="card__item5 swiper-slide">
		  <a href="/schedule/search?gubun=popup&category=3">
			<div class="img-box">
				<img src="/images/category_new_3.png" alt=""> 
			</div>
			<p class="txt__card__tit">쥬얼리 </p>
		  </a>
		</div>
		<div class="card__item5 swiper-slide">
		  <a href="/schedule/search?gubun=popup&category=7">
			<div class="img-box">
				<img src="/images/category_new_7.png" alt=""> 
			</div>
			<p class="txt__card__tit">아트 </p>
		  </a>
		</div>
		<div class="card__item5 swiper-slide">
		  <a href="/schedule/search?gubun=popup&category=5">
			<div class="img-box">
				<img src="/images/category_new_5.png" alt=""> 
			</div>
			<p class="txt__card__tit">뷰티 </p>
		  </a>
		</div>
		<div class="card__item5 swiper-slide">
		  <a href="/schedule/search?gubun=popup&category=6">
			<div class="img-box">
				<img src="/images/category_new_6.png" alt=""> 
			</div>
			<p class="txt__card__tit">식품 </p>
		  </a>
		</div>
		<div class="card__item5 swiper-slide">
		  <a href="/schedule/search?gubun=popup&category=4">
			<div class="img-box">
				<img src="/images/category_new_4.png" alt=""> 
			</div>
			<p class="txt__card__tit">리빙/라이프스타일 </p>
		  </a>d
		</div>
		<div class="card__item5 swiper-slide">
		  <a href="/schedule/search?gubun=popup&category=1">
			<div class="img-box">
				<img src="/images/category_new_1.png" alt=""> 
			</div>
			<p class="txt__card__tit">의류 </p>
		  </a>
		</div>
		<div class="card__item5 swiper-slide">
		  <a href="/schedule/search?gubun=popup&category=30">
			<div class="img-box">
				<img src="/images/category_new_30.png" alt=""> 
			</div>
			<p class="txt__card__tit">펫 </p>
		  </a>
		</div>
	  </div>  
	</div>
	<div class="swiper-button-next category_next"></div>
	<div class="swiper-button-prev category_prev"></div>
  </div>
</section>

<div class="partition-line"></div>

<script>
$(function () {
	swiper_init("category", 16, 50);
});
</script>
<!-- mktime : 16--><!-- time : 2023-11-03 16:30:02--><section class="section--cardtype inner1400 m-pd24 pdt80 m-pdr0">
  <h4 class="txt__tit">가치공간 스토리</h4>
  <span class="txt__subtit">가치 공간 브랜드 셀러들의 성공사례를 주목해주세요.</span>
  <span class="see-more"><a href="/story/list">더보기</a><div class="arrow_right"></div></span>
  <div class="swiper story_swiper">
	<div class="swiper-wrapper">
		<div class="story-card swiper-slide">
			<a href='/story/view?id=1893'>	
			 <!--  <img class="story-image" src="/old_images/story/t600_0fb75c7566570e1c28eb588a69265fca.jpg" onerror="this.src='/images/.p.png'" alt=""> -->
			  <div class="story-text">
				<h3 class="story-title">가치공간 뉴스레터 2023년 8월호</h3>
				<p class="story-content">강남 신세계 센트럴 & 언더스탠드에비뉴, 롯데백화점 수원점, 엔터식스 안양에서 진행한  팝업스토어 소식을 알려드립니다.</p>
			  </div>
			</a>
		</div>	
		<div class="story-card swiper-slide">
			<a href='/story/view?id=1585'>	
			  <img class="story-image" src="/old_images/story/t600_19e505082119c2f84dcc256770dda394.jpg" onerror="this.src='/images/no_image.png'" alt="">
			  <div class="story-text">
				<h3 class="story-title">가치공간 뉴스레터 2023년 7월호</h3>
				<p class="story-content">KBO 팝업스토어 ‘KBO ROAD in Seoul Forest’, 영국 프리미어 리그(EPL) 팝업스토어 ‘FOOTBALL STANDARD’, 아몬즈 주티크 x 더 현대서울....</p>
			  </div>
			</a>
		</div>	
		<div class="story-card swiper-slide">
			<a href='https://blog.naver.com/value_venue/223160762166' target=_blank>	
			  <img class="story-image" src="/old_images/story/t600_7cbaaf41b30e781e94602b35d45cee0e.png" onerror="this.src='/images/no_image.png'" alt="">
			  <div class="story-text">
				<h3 class="story-title">[가치공간 x 아몬즈] 아몬즈 주티크 팝업스토어 더현대서울</h3>
				<p class="story-content">영화 속에 나올법한 화려한 부티크 호텔을 콘셉트로 디자인된 \'아몬즈주티크\'는 오직 팝업에서만 만날 수 있는 단독 상품은 물론, 아몬저...</p>
			  </div>
			</a>
		</div>	
		<div class="story-card swiper-slide">
			<a href='/story/view?id=1518'>	
			  <img class="story-image" src="/old_images/story/t600_963b62ff72d9d0e8446cfeeb594c7e06.jpg" onerror="this.src='/images/no_image.png'" alt="">
			  <div class="story-text">
				<h3 class="story-title">가치공간 뉴스레터 2023년 6월호</h3>
				<p class="story-content">신세계 사이먼 프리미엄 아울렛 파주・시흥점 힙스케어, 안아줘요! 
부드라미 팝업스토어, 이벤트, 프로모션 및 가치공간 신규 OPENING 소식을...</p>
			  </div>
			</a>
		</div>	
		<div class="story-card swiper-slide">
			<a href='https://blog.naver.com/value_venue/223154359305' target=_blank>	
			  <img class="story-image" src="/old_images/story/t600_b92b50c4088047489bbd0882f05b9be2.jpg" onerror="this.src='/images/no_image.png'" alt="">
			  <div class="story-text">
				<h3 class="story-title">가치공간 가치툰 ﹝#KBOROAD ⚾️ㅑ구﹞</h3>
				<p class="story-content">요새 KBO ROAD가 그렇게 핫하다며? 
핫한 팝업스토어에 브이와 언더바가 빠질 수 없지.
서울숲 언더스탠드에비뉴 다녀온 썰 푼다.</p>
			  </div>
			</a>
		</div>	
		<div class="story-card swiper-slide">
			<a href='/story/view?id=1477'>	
			  <img class="story-image" src="/old_images/story/t600_6b2b7c87d6af96af67723472c2239d08.jpg" onerror="this.src='/images/no_image.png'" alt="">
			  <div class="story-text">
				<h3 class="story-title">가치공간 뉴스레터 2023년 5월호</h3>
				<p class="story-content">롯데아울렛 서울역점×한화커넥트x가치공간 , 현대 신촌 B2 대행사장 , High Street Italia 5월 가정의 달 맞이 행사 , 롯데아울렛 가정의 달 행사...</p>
			  </div>
			</a>
		</div>	
		<div class="story-card swiper-slide">
			<a href='/story/view?id=1403'>	
			  <img class="story-image" src="/old_images/story/t600_27a93ad38d7602f9e68173365fcaa3d7.jpg" onerror="this.src='/images/no_image.png'" alt="">
			  <div class="story-text">
				<h3 class="story-title">가치공간 뉴스레터 2023년 4월호</h3>
				<p class="story-content">4월 인플루언서들과 함께하는 팝업스토어, 가치공간 플리마켓, High Street Italia 기획 행사, 가치공간 [APP 2.0 리뉴얼 오픈] 소식을 알려드립니다.</p>
			  </div>
			</a>
		</div>	
		<div class="story-card swiper-slide">
			<a href='/story/view?id=1369'>	
			  <img class="story-image" src="/old_images/story/t600_ab7463f264858109c81af8cee432ec3d.jpg" onerror="this.src='/images/no_image.png'" alt="">
			  <div class="story-text">
				<h3 class="story-title">가치공간 뉴스레터 2023년 3월호</h3>
				<p class="story-content">‘3월_푸른 봄을 마주한 팝업스토어’ 플리마켓, High Street Italia 기획 행사, 공간 기획 행사 소식을 알려드립니다.</p>
			  </div>
			</a>
		</div>	



	</div>
  </div>
  <div class="swiper-button-next story_next"></div>
  <div class="swiper-button-prev story_prev"></div>  
</section>

<div class="partition-line"></div>

<script>
$(function () {
	swiper_init("story", 24, 18);
});
</script>
<!-- Cached copy, generated 15:02 -->
      
   	<section class="section--count inner">
        <ul>
          <!--li>
            <dl>
              <dt>팝업 가능 공간</dt>
              <dd>12</dd>
            </dl>
          </li-->
          <li style="width:40%">
            <dl>
              <dt>누적 팝업 수</dt>
              <dd>3,793</dd>
            </dl>
          </li>
          <li style="width:40%">
            <dl>
              <dt class="hidden-mo">누적 팝업 브랜드 수</dt>
              <dt class="visible-mo">누적 팝업 브랜드 수</dt>
              <dd>23,602</dd>
            </dl>
          </li>
        </ul>
      </section>

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
      <nav class="bottom_nav_menu">
        <ul>
          <li class="input--search m_search_input b_nav_list">
            <a href="#">
              <svg class="black_c " xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
					<path fill-rule="evenodd" clip-rule="evenodd" d="M21.5 20.0585L16.4719 15.0304C18.9818 12.0171 18.6777 7.56252 15.7815 4.91827C12.8854 2.27402 8.42161 2.37546 5.64853 5.14853C2.87546 7.92161 2.77402 12.3854 5.41827 15.2815C8.06252 18.1777 12.5171 18.4818 15.5304 15.9719L20.5585 21L21.5 20.0585ZM5.08015 10.3504C5.08015 7.16356 7.66356 4.58015 10.8504 4.58015C14.0372 4.58015 16.6206 7.16356 16.6206 10.3504C16.6206 13.5372 14.0372 16.1206 10.8504 16.1206C7.66503 16.117 5.08368 13.5357 5.08015 10.3504Z" fill="#98A8AF"/>
			  </svg>
			  <p class="">검색</p>
            </a>
          </li>

          <li class="b_nav_list">
            <a href="javascript:alert('로그인 후 이용이 가능합니다.');location.href='/login.php?s_url=%2Fschedule%2Fmy_schedule'">
              <svg class="black_c " xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
					<path fill-rule="evenodd" clip-rule="evenodd" d="M7.6 12H9.4V13.8H7.6V12M20.2 6.6V19.2C20.2 20.1941 19.3941 21 18.4 21H5.8C4.801 21 4 20.19 4 19.2V6.6C4 5.60589 4.80589 4.8 5.8 4.8H6.7V3H8.5V4.8H15.7V3H17.5V4.8H18.4C19.3941 4.8 20.2 5.60589 20.2 6.6M5.8 8.4H18.4V6.6H5.8V8.4M18.4 19.2V10.2H5.8V19.2H18.4M14.8 13.8H16.6V12H14.8V13.8M11.2 13.8H13V12H11.2V13.8Z" fill="#98A8AF"/>
			  </svg>
			  <p class="">내 일정</p>
            </a>
          </li>
		  
          <li class="">
            <a href="/main2">
              <div class="home_btn">
				<div class="container_w">
					<div class="svgm">
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="23" viewBox="0 0 24 23" fill="none">
							<path fill-rule="evenodd" clip-rule="evenodd" d="M24 10L11.5 0L0 10H2.66602V22.5H8.49935V14.3333H15.4993V22.5H21.3327V10H24Z" fill="white" />
						</svg>
					</div>
				</div>
			  </div>
            </a>
          </li>

          <li class="b_nav_list ">
            <a href='/mypage'>
              <svg class="black_c " xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
				 <path fill-rule="evenodd" clip-rule="evenodd" d="M12 5C14.2091 5 16 6.79086 16 9C16 11.2091 14.2091 13 12 13C9.79086 13 8 11.2091 8 9C8 6.79086 9.79086 5 12 5M12 7C10.8954 7 10 7.89543 10 9C10 10.1046 10.8954 11 12 11C13.1046 11 14 10.1046 14 9C14 7.89543 13.1046 7 12 7M12 14C14.67 14 20 15.33 20 18V21H4V18C4 15.33 9.33 14 12 14M12 15.9C9.03 15.9 5.9 17.36 5.9 18V19.1H18.1V18C18.1 17.36 14.97 15.9 12 15.9Z" fill="#98A8AF"/>
			  </svg>
			  <p class="">마이페이지</p>
            </a>
          </li>

          <li class="b_nav_list">
            <a class="btn-aside-open">
              <svg class="black_c" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
				<path fill-rule="evenodd" clip-rule="evenodd" d="M5 5V7H18V5H5M5 11V13H18V11H5M5 17V19H18V17H5" fill="#98A8AF"/>
			  </svg>
			  <p>더보기</p>
            </a>
          </li>
        </ul>
      </nav>
      
      
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
