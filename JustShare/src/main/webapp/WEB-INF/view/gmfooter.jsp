<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>푸터</title>


<link rel="stylesheet" href="/css/import.css?ver=20000120" />
<link rel="stylesheet" href="/css/style.css?ver=20000120" />

<link rel="stylesheet" href="/css/main_page.css" />






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
 .home_btn {
  width: 60px;
  height: 60px;
  border: solid 4px white;
  border-radius: 200px;
  /* box-shadow: 0 -2px 8px #ffffff inset; */
  box-shadow: 0 -2px 8px #4122d3 inset;
  background-color: #6b4bf5;
  /* background-color: #7759ff; */
  margin: -2px auto;
  /* 여기 바꿈 -12px auto*/
}


</style>
</head>
<nav class="bottom_nav_menu">
   <ul><!-- 여기 수정함 b로-->
      <li class="b_nav_listb "><a href='/board'> <i class="xi-document"></i> </svg><p class="">게시판</p></a></li>

      <li class="b_nav_listb "><a href='/mapMark6'> <i   class="xi-gps"></i> </svg><p class="">내위치</p></a></li>

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