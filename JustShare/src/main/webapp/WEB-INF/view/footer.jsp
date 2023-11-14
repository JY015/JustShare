<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>푸터</title>
<link rel="canonical" href="https://www.valuevenue.co.kr/login" />
    <link rel="stylesheet" href="/css/fullcalendar.css" />
    <link rel="stylesheet" href="/css/import.css?ver=20000120" />
    <link rel="stylesheet" href="/css/style.css?ver=20000120" />
    <link rel="stylesheet" href="/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="/css/valuevenue.css?ver=20000120" />
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
   <link rel="stylesheet" href="/css/listpage.css?ver=20000120">
   <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"> 
   <link rel="stylesheet" href="/css/main_page.css" />

   <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
   
<meta name="robots" content="index,follow">
<meta name="naver-site-verification"  content="a2a89e942b8a6cb220490a635dc04627db8547ed" />
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
<script src="/js/valuevenue.js?ver=20000120" defer></script>
<script src="/js/jquery-3.3.1.min.js"></script>
<script src="/js/owl.carousel.min.js"></script>
<script src="/js/common.js?ver=20000120" defer></script>
<script src="/js/cookie.js?ver=20000120" defer></script>


<style>
.b_nav_list {
   top: 7px;
}

.xi-document, .xi-gps, .xi-message-o, .xi-user-o {
   text-align: center;
   font-size: 162%;
   position: relative;
   top: 7px;
   color: rgba(0, 0, 0, 0.4);
}

</style>

<nav class="bottom_nav_menu">
   <ul><!-- 여기 수정함 b로-->
      <li class="b_nav_listb "><a href='/board'> <i class="xi-document"></i> </svg><p class="">게시판</p></a></li>

      <li class="b_nav_listb "><a href='/mapMark7'> <i   class="xi-gps"></i> </svg><p class="">내위치</p></a></li>

      <li class=""><a href="/">
            <div class="home_btn">
               <div class="container_w">
                  <div class="svgm">
                     <svg xmlns="http://www.w3.org/2000/svg" width="24" height="23" viewBox="0 0 24 23" fill="none"><path fill-rule="evenodd" clip-rule="evenodd"
                           d="M24 10L11.5 0L0 10H2.66602V22.5H8.49935V14.3333H15.4993V22.5H21.3327V10H24Z"   fill="white" /></svg>
                  </div>
               </div>
            </div>
      </a></li>

      <li class="b_nav_list "><a href='/chat1'> <i class="xi-message-o"></i></svg><p class="">채팅</p></a></li>

      <li class="b_nav_list "><a href='/mypage'> <i class="xi-user-o"></i></svg><p class="">마이페이지</p></a></li>
   </ul>
</nav>
</body>
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
 </script>
</html>