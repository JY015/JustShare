<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
</head>
<body>
가입하신 아이디를 입력하세요, 가입하신 핸드폰번호를 입력하세요, 인증번호를 입력해서 같은지를 확인도 해야함

<c:if test="${findPwCheck eq null && findPwEmail ne 1}">
<form action="./findPwCheck" method="post">
    	아이디<br>
        <input type="text" name="mid" placeholder="ex) five" required="required" maxlength="8"><br>
        핸드폰 번호<br>
        <input type="text" name="mphone" placeholder="ex) 01012345678" required="required" maxlength="11"><br>
        <button type="submit">이메일 인증</button>
</form>
</c:if>

<c:if test="${findPwCheck eq 1}">
<p style="color: red;">가입하신 이메일로 인증번호를 보내드리겠습니다.</p>

<form action="./findPw" method="post">
				<input type="hidden" name="to" value="${memail}">
				<button type="submit">확인</button>
</form>	
</c:if>

<c:if test="${findPwEmail eq 1}">
<form id="findPwFinal" action="./findPwFinal" method="post">
				인증번호를 입력하세요. 여기 : ${memail}<br>
			<input type="text" id="findPwFinalCode" name="findPwFinalCode" placeholder="인증번호 8자리" required="required" maxlength="8"><br>
			<input type="hidden" name="to" value="${memail}">
			 <button type="button" onclick="findPwFinal()">확인</button>
</form>	
</c:if>

<c:if test="${findPwCheck eq 0}">
<p style="color: red;">일치하는 회원정보가 없습니다. 아이디와 핸드폰 번호를 다시 확인해주세요.</p>
<a href="./findPw">돌아가기</a>
</c:if>


findpwCheck : ${findPwCheck}<br>
findpwEmail : ${findPwEmail}<br>
memail :  ${memail}

<script type="text/javascript">
function findPwFinal() {
    var input = document.getElementById('findPwFinalCode');
    var findPwFinalCode = '01234567'; 

    if (input.value === findPwFinalCode) {
        alert('인증번호가 일치합니다.');
        document.getElementById('findPwFinal').submit();
    } else {
      
        alert('인증번호가 일치하지 않습니다.');
    }
}
</script>
</body>
</html>







