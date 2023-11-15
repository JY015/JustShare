<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scaleable=no, maximum-scale=1" />
   <meta name="description" content="가치공간은 가능성 속 잠재된 가치를 발굴하며, 공간 소유자에게는 유휴공간의 재발견을, 브랜드에게는 홍보의 장을, 소비자에게는 새로운 경험을 선사합니다"/>
   <link rel="canonical"  href="https://www.valuevenue.co.kr/login"/>
    <link rel="stylesheet" href="/css/fullcalendar.css" />
    <link rel="stylesheet" href="/css/import.css?ver=20000120" />
    <link rel="stylesheet" href="/css/style.css?ver=20000120" />
    <link rel="stylesheet" href="/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="/css/valuevenue.css?ver=20000120" />
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
   <link rel="stylesheet" href="/css/listpage.css?ver=20000120">

	  <link rel="stylesheet" href="/css/main_page.css" />
   <!-- 회원가입 3가지회원 유형 css new -->

    <link rel="stylesheet" href="/css/main_page.css" />
    <link rel="stylesheet" href="./css/login.css">


   <!-- 고객센터 css -->
   <link rel="stylesheet" href="/css/customer_service_center.css?ver=20000120" />
   <!-- 폰트어썸 -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

   <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />
   <link rel="shortcut icon" href="/images/v_favicon32.ico" sizes="32x32" />   
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
<head>
<meta charset="UTF-8">
<title>로그인 창</title>

<script src="./js/jquery-3.7.0.min.js"></script>
</head>

<script>
var _ss_user_id   = "";

</script>
  </head>
<body>

<!--헤더 시작-->
<%@ include file="header.jsp"%>
<!--헤더 끝-->
  <div class="body__container section">
  <input type="hidden" class="is_phpself" value="/login.php">
  <input type="hidden" class="is_app_banner" value="">
  


    
<script type="text/javascript" src="//appleid.cdn-apple.com/appleauth/static/jsapi/appleid/1/en_US/appleid.auth.js"></script>
<script src="/js/member.js?ver=200" defer></script>

<div class="login_inner" style="text-align: center">

<div class="login-form" >

      <form action="./login" method="post" class="container">
      <h4 class="login_t" style="text-align: left;">LOGIN</h4>
      <h3 style="text-align: left;"><label for="name">아이디</label></h3>
         <input id="mid" type="text" name="mid" placeholder="아이디를 입력하세요" required="required"><br><br><br>
      <h3 style="text-align: left;"><label for="name">비밀번호</label></h3>
         <input id="mpw" type="password" name="mpw" placeholder="암호를 입력하세요" required="required"><br><br>
 	  <div style="text-align:center;">
	<c:if test="${loginCheckCount eq 1}">
	<p style="color: red;"> 아이디(로그인 전용 아이디) 또는 비밀번호를 잘못 입력했습니다. 입력하신 내용을 다시 확인해주세요.</p>
	</c:if>
	</div>   
         <button style="background-color: #004AAD!important" class="login_click" type="submit">로그인</button><br><br>
         </form>
   </div>

   <div style="text-align: center">
   <a href="./findId">아이디 찾기 | </a><a href="./findPw">비밀번호 찾기</a>
</div>
      <div class="sign_movement">
            <p>
               회원가입 후 <span>JustShare 서비스를 이용</span>해보세요
            </p>
            <a href="/join"><button class="sign_btn btn_clear_black" style=" border: solid 1px #020202 !important; color:black !important; background-color: white !important;">회원가입 하기</button></a>
         </div>
   </div>
      <br><br>

      <%@ include file="footer.jsp"%>
 
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

            <img style="width: 96px;margin-left: 4px;" src="/images/mo/logo_m_active2.svg" alt="">

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
       button {
            background-color: #f64d61 !important;
            color: white !important;
            padding: 10px 20px !important;
            border: none !important;
            cursor: pointer !important;
            border-radius: 4px !important;
            font-size: 16px !important;
            width: 100%;
            max-width: 600px;
        }
        
         input[type="text"], input[type="password"] {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            max-width: 600px;
        }
           .container {
            max-width: 500px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;        
        }

   </style>

  </body>
</html>
