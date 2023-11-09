<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<link href="css/index.css" rel="stylesheet" /> 
    <style>
       body {
            font-family: Arial, sans-serif;
            text-align: center;
        }

        .container {
            max-width: 30%;
            margin: 0 auto;
        }

        form {
            text-align: center;
        }

        input[type="text"] {
            width: 30%;
            padding: 8px;
            margin: 5px 0;
        }

        button {
            background-color: #007BFF;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        } 
    </style>
</head>
<body>
<img alt="login" src="./img/JustShare.png">
<c:if test="${findPwCheck eq null && findPwEmail ne 1}">
<form action="./findPwCheck" method="post">
    	아이디<br>
        <input type="text" name="mid" placeholder="ex) five" required="required" maxlength="15"><br>
        핸드폰 번호<br>
        <input type="text" name="mphone" placeholder="ex) 01012345678" required="required" maxlength="11"><br>
        <button type="submit">이메일 인증</button>
</form>
</c:if>

<c:if test="${findPwCheck eq 1}">
<p style="color: red;">가입하신 이메일로 임시비밀번호를 발급해드리겠습니다.</p>
<form action="./findPw" method="post">
				<input type="hidden" name="to" value="${memail}">
				<input type="hidden" name="uuid" value="${uuid}">
				<button type="submit">확인</button>
</form>	
</c:if>

<c:if test="${findPwEmail eq 1}">
<form id="findPwFinal" action="./findPwFinal" method="post">
				임시비밀번호를 입력하세요<br>
			<input type="text" id="findPwFinalCode" name="findPwFinalCode" placeholder="임시비밀번호 6자리" required="required" maxlength="6"><br>
			<input type="hidden" name="memail" value="${memail}">
			<input type="hidden" name="uuid" value="${uuid}">
			<button type="button"  id="send" onclick="findPwFinal()">확인</button>
</form>	
</c:if>

<c:if test="${findPwCheck eq 0}">
<p style="color: red; font-weight: bold;">일치하는 회원정보가 없습니다. 아이디와 핸드폰 번호를 다시 확인해주세요.</p>
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

        alert("로그인해주세요.")
    } else {   
        alert('임시비밀번호가 일치하지 않습니다.');

    }
    const remainingMin = document.getElementById("remaining__min");
    const remainingSec = document.getElementById("remaining__sec");
    const completeBtn = document.getElementById("userNum");
    var get__number = document.getElementById("send");

    let time = 3;

    const takeTarget = () => {
        timerInterval = setInterval(function () {
            if (time == 0) {
                $('#userNum').attr('disabled', true);
                resetTimer();
            } else if (time > 0) {
                $('#send').attr('disabled', true);
                $('#to').attr('disabled', true);
                $('#userNum').attr('disabled', false);
                time = time - 1;
                let min = Math.floor(time / 60);
                let sec = String(time % 60).padStart(2, "0");
                remainingMin.innerText = min;
                remainingSec.innerText = sec;
            } else {
                $('#userNum').attr('disabled', true);
            }
        }, 1000);
    };
}
</script>
</body>
</html>







