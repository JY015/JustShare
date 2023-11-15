<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
   <link rel="stylesheet" href="/css/listpage.css?ver=20000120">
   <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"> 
   <link rel="stylesheet" href="/css/main_page.css" />
   <link rel="stylesheet" href="/css/findId.css" />

   <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />
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
  <%@ include file="header.jsp"%>
<body>
    <div class="image-container">
        <!-- <img alt="login" src="./img/JustShare.png"> -->
    </div><br>
        
    <c:if test="${findPwCheck eq null && findPwEmail ne 1}">
        <form action="./findPwCheck" method="post" class="container">
          <div class="text_find_pw">
            <h1 style="font-size: 30px;">FIND PASSWORD</h1><br>
           <span style="color: #8A8A8A">가입하신 정보를 입력해주시면<br> 등록된 이메일로 임시 비밀번호를 전송 해드립니다.</span>
         </div><br><br>
            <label for="mid" style="text-align: left;">아이디</label>
            <input style="width: 100%;" type="text" id="mid" name="mid" placeholder="ex) five" required="required" maxlength="15"><br><br>
            <label for="mphone" style="text-align: left;">핸드폰 번호</label>
            <input type="text" id="mphone" name="mphone" placeholder="ex) 01012345678" required="required" maxlength="11"><br>
            <br><br>
            <div class="button-container">
           <button type="button" style="margin-right: 10px!important; border: solid 1px #020202 !important; color: black !important; background-color: white !important;" onclick="window.location.href = './login';">취소</button>
           <button type="submit">이메일 인증</button>
       </div>
</form>   
    </c:if>
    <br>
    <c:if test="${findPwCheck eq 1}">
        <p style="color: red;" class="error">가입하신 이메일로 임시비밀번호를 발급해드리겠습니다.</p>
        <form action="./findPw" method="post">
            <input type="hidden" name="to" value="${memail}">
            <input type="hidden" name="uuid" value="${uuid}">
            <br><br><br><br>
            <button style="width: 50%;" type="submit">확인</button>
        </form>
    </c:if>
    <c:if test="${findPwEmail eq 1}">
        <form id="findPwFinal" action="./findPwFinal" method="post" class="container">
            <label for="findPwFinalCode">임시비밀번호를 입력하세요</label>
                        <div class="timer">
                <span style="color: red;" id="remaining__min">1</span> :
                <span style="color: red;" id="remaining__sec">00</span>
            </div>
            <input type="text" id="findPwFinalCode" name="findPwFinalCode" placeholder="임시비밀번호 6자리" required="required" maxlength="6">
            <input type="hidden" name="memail" value="${memail}">
            <input type="hidden" name="uuid" value="${uuid}"><br><br><br>
            <div class="button-container">
             <button type="button" style="margin-right: 10px!important; border: solid 1px #020202 !important; color: black !important; background-color: white!important; width: 50%;" onclick="window.location.href = './findPw';">취소</button>
            <button style="width: 50%;" type="button" id="send" onclick="findPwFinal()">확인</button>
            </div>
        </form>
    </c:if>
    <br><br><br><br><br><br><br>
    <c:if test="${findPwCheck eq 0}">
        <p style="color: red;" class="error">일치하는 회원정보가 없습니다.<br> 아이디와 핸드폰 번호를 다시 확인해주세요.</p>
        <br><br><br>
        <a href="./findPw">돌아가기</a>
    </c:if>
    <br><br><br><br><br><br><br>
    
 <%--    findpwCheck : ${findPwCheck}<br>
    findpwEmail : ${findPwEmail}<br>
    memail :  ${memail}<br>
    uuid : ${uuid}<br>
    uuidPw : ${uuidPw} --%>
    <script type="text/javascript">
        function findPwFinal() { 
            var input = document.getElementById('findPwFinalCode'); 
            var findPwFinalCode = '${uuidPw}'; 
            if (input.value === findPwFinalCode) {
                alert('임시비밀번호가 일치합니다.');
                document.getElementById('findPwFinal').submit();
                alert("로그인해주세요.");
            } else {   
                alert('임시비밀번호가 일치하지 않습니다.');
            }
        }

        const remainingMin = document.getElementById("remaining__min");
        const remainingSec = document.getElementById("remaining__sec");
        const findPwFinalCode = document.getElementById("findPwFinalCode");
        let time = 60;
        const takeTarget = () => {
            const intervalId = setInterval(function () {
                if (time > 0) {
                    time = time - 1;
                    let min = Math.floor(time / 60);
                    let sec = String(time % 60).padStart(2, "0");
                    remainingMin.innerText = min;
                    remainingSec.innerText = sec;
                } else {
                    clearInterval(intervalId);
                    findPwFinalCode.disabled = true;
                    alert("시간이 초과 되었습니다. 다시 시도해주세요.");
                }
            }, 1000);
        };
        takeTarget();
    </script>
<br><br><br>

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
          <div style="text-align: left;">
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