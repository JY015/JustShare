<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scaleable=no, maximum-scale=1" />
   <meta name="description" content="가치공간은 가능성 속 잠재된 가치를 발굴하며, 공간 소유자에게는 유휴공간의 재발견을, 브랜드에게는 홍보의 장을, 소비자에게는 새로운 경험을 선사합니다"/>
    <title>팝업스토어 NO.1 가치공간 - 온라이프(On-Life) 리테일 플랫폼</title>
    <script src="./js/socket.js"></script>
   <link rel="canonical"  href="https://www.valuevenue.co.kr/login"/>
    <link rel="stylesheet" href="/css/fullcalendar.css" />
    <link rel="stylesheet" href="/css/import.css?ver=20000120" />
    <link rel="stylesheet" href="/css/style.css?ver=20000120" />
    <link rel="stylesheet" href="/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="/css/valuevenue.css?ver=20000120" />
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
   <!--link rel="stylesheet" href="/css/spacedetail.css?ver=20000120"-->
   <link rel="stylesheet" href="/css/listpage.css?ver=20000120">

   <link rel="stylesheet" href="/css/main_page.css" />
   <link rel="stylesheet" href="./css/login.css">
   <!-- 회원가입 3가지회원 유형 css new -->
   <link rel="stylesheet" href="/css/register.css?ver=20000120" />
   <!-- 고객센터 css -->
   <link rel="stylesheet" href="/css/customer_service_center.css?ver=20000120" />
   <!-- 폰트어썸 -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

   <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />
   
   <meta property="og:locale"       content="ko_KR" />
   <meta property="og:type"       content="website" />
   <meta property="og:title"       content="팝업스토어 NO.1 가치공간 - 온라이프(On-Life) 리테일 플랫폼" />
   <meta property="og:description"  content="가치공간은 가능성 속 잠재된 가치를 발굴하며, 공간 소유자에게는 유휴공간의 재발견을, 브랜드에게는 홍보의 장을, 소비자에게는 새로운 경험을 선사합니다" />
   <meta property="og:url"          content="https://www.valuevenue.co.kr/login" />
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
    <script src="/js/jquery-3.3.1.min.js"></script>
    <script src="/js/owl.carousel.min.js"></script>
    <script src="/js/common.js?ver=20000120" defer></script>
    <script src="/js/cookie.js?ver=20000120" defer></script>
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
  
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

 
<nav class="bottom_nav_menu">
        <ul>
          <li class="input--search m_search_input b_nav_list">
            <a href="/board">
              <svg class="black_c " xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
               <path fill-rule="evenodd" clip-rule="evenodd" d="M21.5 20.0585L16.4719 15.0304C18.9818 12.0171 18.6777 7.56252 15.7815 4.91827C12.8854 2.27402 8.42161 2.37546 5.64853 5.14853C2.87546 7.92161 2.77402 12.3854 5.41827 15.2815C8.06252 18.1777 12.5171 18.4818 15.5304 15.9719L20.5585 21L21.5 20.0585ZM5.08015 10.3504C5.08015 7.16356 7.66356 4.58015 10.8504 4.58015C14.0372 4.58015 16.6206 7.16356 16.6206 10.3504C16.6206 13.5372 14.0372 16.1206 10.8504 16.1206C7.66503 16.117 5.08368 13.5357 5.08015 10.3504Z" fill="#98A8AF"/>
           </svg>
           <p class="">게시판</p>
            </a>
          </li>

          <li class="b_nav_list">
            <a href="/mapMark6">
              <svg class="black_c " xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
               <path fill-rule="evenodd" clip-rule="evenodd" d="M7.6 12H9.4V13.8H7.6V12M20.2 6.6V19.2C20.2 20.1941 19.3941 21 18.4 21H5.8C4.801 21 4 20.19 4 19.2V6.6C4 5.60589 4.80589 4.8 5.8 4.8H6.7V3H8.5V4.8H15.7V3H17.5V4.8H18.4C19.3941 4.8 20.2 5.60589 20.2 6.6M5.8 8.4H18.4V6.6H5.8V8.4M18.4 19.2V10.2H5.8V19.2H18.4M14.8 13.8H16.6V12H14.8V13.8M11.2 13.8H13V12H11.2V13.8Z" fill="#98A8AF"/>
           </svg>
           <p class="">map</p>
            </a>
          </li>
        
          <li class="">
            <a href="/main">
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
 
</body>
</html>
