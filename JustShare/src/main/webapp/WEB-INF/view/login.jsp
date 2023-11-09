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
<link rel="stylesheet" href="./css/login.css">
<script src="./js/jquery-3.7.0.min.js"></script>
</head>

<script>
var _ss_user_id   = "";

</script>
  </head>
<body>
<!--헤더 시작-->
<header class="header_topnav_new">
        <div class="header_topnav_inner_n">
         <div class="first_row">
          <!--    <img alt="logo" src="./img/JustShare.png" width="25%;" onclick="location.href='./main'">  -->
			<img alt="back" src="./img/back.png" style="cursor:pointer" onclick="history.back();">
            <div class="logo"><img alt="logo" src="./img/JustSharelogo.png" width="60%;" height="40%;" onclick="location.href='./'"></div>
              <c:choose>
                         <c:when test="${sessionScope.mid eq null}"><li class="nav-item"><a class="nav-link" href="./login"><i class="xi-user"></i></a></li></c:when>
                         <c:otherwise><li class="nav-item"><a class="nav-link" href="./logout" onclick="return confirm('로그아웃 하시겠습니까?')"><i class="xi-log-out"></i></a></li></c:otherwise>
                        </c:choose>     
         </div>
</div>
</header>
<!--헤더 끝-->
  <div class="body__container section">
  <input type="hidden" class="is_phpself" value="/login.php">
  <input type="hidden" class="is_app_banner" value="">
   <header id="header" class="header_bg_new">
      <div class="header__inner">
        <div class="header__first_row">
           <div class="sign-area">
         <a href="./login">로그인</a>
         <div class="half-line"></div> 
         <a href="./join">회원가입</a>
            
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
            <div class="back" style="cursor:pointer" onclick="history.back();">뒤로가기</div>
            <img alt="logo" src="./img/JustSharelogo.png" width="25%;" onclick="location.href='./'">
         </div>
        <div class="right-side">
            <div class="sign-group">
         
            </div>
          </div>
      </div>

      </div>
    </header>
    
<script type="text/javascript" src="//appleid.cdn-apple.com/appleauth/static/jsapi/appleid/1/en_US/appleid.auth.js"></script>
<script src="/js/member.js?ver=200" defer></script>

<div class="login_inner">
<h4 class="login_t">LOGIN</h4>
<div class="login-form">
      <form action="./login" method="post">
      <h3><label for="name">아이디</label></h3>
         <input id="mid" type="text" name="mid" placeholder="아이디를 입력하세요" required="required"><br><br><br>
      <h3><label for="name">비밀번호</label></h3>
         <input id="mpw" type="password" name="mpw" placeholder="암호를 입력하세요" required="required"><br><br>
 	  <div style="text-align:center;">
	<c:if test="${loginCheckCount eq 1}">
	<p style="color: red;"> 아이디(로그인 전용 아이디) 또는 비밀번호를 잘못 입력했습니다. 입력하신 내용을 다시 확인해주세요.</p>
	</c:if>
	</div>   
         <button class="login_click" type="submit">로그인</button><br><br>
         </form>
   </div>

   <div style="text-align: center">
   <a href="./findId">아이디 찾기 | </a><a href="./findPw">비밀번호 찾기 | </a><a href="./join">회원가입</a>
</div>
      <div class="sign_movement">
            <p>
               회원가입 후 <span>JustShare 서비스를 이용</span>해보세요
            </p>
            <a href="/join"><button class="sign_btn btn_clear_black">회원가입 하기</button></a>
         </div>
   
   </div>
      <br><br>

      <%@ include file="footer.jsp"%>
 
      <footer class="footer1400">
        <div id="footer__box" class="footer__inner txt__subtit">
          <div class="flex" style="text-align: center">
            <ul>
              <li><a href="/notice/list">공지사항</a></li>
              <li class="line" style="border-left: 1px solid grey; height: 14px; padding-right: 18px;"></li>
              <li><a href="/qna/list">문의하기</a></li>
              <li class="line" style="border-left: 1px solid grey; height: 14px; padding-right: 18px;"></li>
              <li><a href="/faq">자주 묻는 질문</a></li>
              <li class="line" style="border-left: 1px solid grey; height: 14px; padding-right: 18px;"></li>
              <li><a href="/help/policy">이용약관</a></li>
            </ul>
          </div>
          <hr style="margin-top:12px; margin-bottom: 20px; width: 100%;">
          <div class="contact-social">
          <div>
            <img style="width: 96px;margin-left: 4px;" src="/images/mo/logo_m_active2.svg" alt="">
            <p>서울특별시 강남구 테헤란로7길 7 에스코빌딩 6~7층<br>
            TEL : <a href="tel:02-1111-2222">02-1111-2222</a> &nbsp;&nbsp;사업자등록번호 : 000-00-00000 <br>
            <a href="mailto:valuevenue@valuevenue.co.kr">valuevenue@valuevenue.co.kr</a> </p>
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





<!-- Meta Pixel Code -->
<script>

</script>
  </body>
</html>
