<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, maximum-scale=1" />
    <meta name="description" content="JustShare은 가능성 속 잠재된 가치를 발굴하며, 공간 소유자에게는 유휴공간의 재발견을, 브랜드에게는 홍보의 장을, 소비자에게는 새로운 경험을 선사합니다" />
    <title>Just Share</title>
    <link rel="canonical" href="https://www.valuevenue.co.kr/" />
    <link rel="stylesheet" href="/css/fullcalendar.css" />
    <link rel="stylesheet" href="/css/import.css?ver=20000120" />
    <link rel="stylesheet" href="/css/style.css?ver=20000120" />
    <link rel="stylesheet" href="/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="/css/valuevenue.css?ver=20000120" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
    <link rel="stylesheet" href="/css/listpage.css?ver=20000120">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <link rel="stylesheet" href="/css/main_page.css" />
    <link rel="stylesheet" href="/css/register.css?ver=20000120" />
    <link rel="stylesheet" href="/css/customer_service_center.css?ver=20000120" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />
    <link rel="shortcut icon" href="/images/v_favicon32.ico" sizes="32x32" />
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <link href="css/index.css" rel="stylesheet" />
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
        }
        .container {
            max-width: 500px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
            font-size: 16px;
        }

        input[type="text"] {
            width: 80%;
            padding: 8px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            max-width: 360px;
        }

        button {
            background-color: #f64d61 !important;
            color: white !important;
            padding: 10px 20px !important;
            border: none !important;
            cursor: pointer !important;
            border-radius: 4px !important;
            font-size: 16px !important;
            width: 47%;
            max-width: 180px;
        }
        .error {
            color: red;
            font-weight: bold;
        }

        .image-container {
            margin: 20px 0;
        }
        .timer {
            font-size: 24px;
            font-weight: bold;
            color: #ff5c5c;
        }
      .text_find_pw{   
         color: #8A8A8A;
          font-size: 1rem;
            font-weight: 400;
          word-break: keep-all;
            line-height: 1.4;
          text-align: center;
          padding: 26px 0 42px;
    
      }   
    </style>
</head>
<body>
    <div class="image-container">
        <img alt="login" src="./img/JustShare.png">
    </div>
        
    <c:if test="${findPwCheck eq null && findPwEmail ne 1}">
        <form action="./findPwCheck" method="post" class="container">
          <div class="text_find_pw">
            <h4>FIND PASSWORD</h4>
            <span>가입하신 정보를 입력해주시면 등록된 휴대폰 번호로 전송 해드립니다.</span>
         </div>  
            <label for="mid">아이디</label><br>
            <input type="text" id="mid" name="mid" placeholder="ex) five" required="required" maxlength="15"><br><br>
            <label for="mphone">핸드폰 번호</label><br>
            <input type="text" id="mphone" name="mphone" placeholder="ex) 01012345678" required="required" maxlength="11"><br>
            <br><br>
            <button type="button" style=" border: solid 1px #020202 !important; color:black !important; background-color: white !important;" onclick="window.location.href = './login';">취소</button>
            <button type="submit">이메일 인증</button>
        </form>
    </c:if>
    <br>
    <c:if test="${findPwCheck eq 1}">
        <p class="error">가입하신 이메일로 임시비밀번호를 발급해드리겠습니다.</p>
        <form action="./findPw" method="post">
            <input type="hidden" name="to" value="${memail}">
            <input type="hidden" name="uuid" value="${uuid}">
            <button type="submit">확인</button>
        </form>
    </c:if>
    <c:if test="${findPwEmail eq 1}">
        <form id="findPwFinal" action="./findPwFinal" method="post" class="container">
            <label for="findPwFinalCode">임시비밀번호를 입력하세요</label>
            <input type="text" id="findPwFinalCode" name="findPwFinalCode" placeholder="임시비밀번호 6자리" required="required" maxlength="6">
            <input type="hidden" name="memail" value="${memail}">
            <input type="hidden" name="uuid" value="${uuid}">
            <button type="button" id="send" onclick="findPwFinal()">확인</button>
            <div class="timer">
                <span id="remaining__min">3</span> :
                <span id="remaining__sec">00</span>
            </div>
        </form>
    </c:if>
    <c:if test="${findPwCheck eq 0}">
        <p class="error">일치하는 회원정보가 없습니다. 아이디와 핸드폰 번호를 다시 확인해주세요.</p>
        <a href="./findPw">돌아가기</a>
    </c:if>
    findpwCheck : ${findPwCheck}<br>
    findpwEmail : ${findPwEmail}<br>
    memail :  ${memail}<br>
    uuid : ${uuid}<br>
    uuidPw : ${uuidPw}
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
        let time = 5;
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
    <%@ include file="footer.jsp"%>
</body>
</html>