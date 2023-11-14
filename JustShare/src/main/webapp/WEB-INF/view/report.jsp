<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
  
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
    <link rel="stylesheet" href="./css/login.css">

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
<%@ include file="header.jsp"%>
	<h1>신고하기</h1>
	신고자 : ${map.rmid}
	신고 게시물 : ${map.bno }
	
	<form id="reportForm" action="./report" method="post" >
	<input type="hidden" name="bno" value="${map.bno }">
	<input type="hidden" name="rmid" value="${map.rmid }">
	<input type="hidden" name="mid" value=${map.mid }>
	신고 사유
	<div>
	<c:forEach items="${reportCateList }" var="n">
	<div>
	<input type="radio" name="rcate" value="${n.rcate}">${n.rcateName }
	</div>
	</c:forEach>
	</div>
	상세내용
	<div>
	<textarea name="rcontent" id="rcontent"></textarea>
	</div>
	<button type="button" onclick="reportSubmit()">신고하기</button>
	</form>

<!--  여기스크립트 지금 비상비상  -->

	<script>
    function reportSubmit() {
        const dpValue = ${map.dp}; // dp 값 가져오기
        const rmidValue = "${map.rmid}"; // rmid 값 가져오기
        const midValue = "${map.mid}"; // mid 값 가져오기
        const rcateValue = document.querySelector('input[name="rcate"]:checked');
        const rcontentInput =document.getElementById('rcontent');
        const rcontent = rcontentInput.value.trim();
		console.log(rcateValue);
        if (dpValue != 0) {
           
            alert("이미 신고한 게시물의 중복신고는 불가능합니다.");
            return false;
            
        }
        if (rmidValue === midValue) {
            // rmid 값과 mid 값이 같을 때 폼 제출을 막음
            alert("신고 대상과 신고자가 같습니다. 올바른 신고 대상을 선택해주세요.");
            return false;
        }
        if (!rcateValue) {
            alert("신고 사유를 선택해주세요.");
            return false;
        }
        if (rcontent ==="" || rcontent.length < 10 || rcontent.length > 100) {
           alert("신고 상세내용을 10자 이상 입력해주세요.");
            return false;
        }
       
        document.querySelector('form').submit();
    };
</script>

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