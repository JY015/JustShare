<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 창</title>
<link rel="stylesheet" href="./css/login.css">
</head>
<body>
<div style="text-align:center;">
<img alt="login" src="./img/JustShare.png">
<div class="login-form">
		<form action="./login" method="post">
			<input id="mid" type="text" name="mid" placeholder="아이디를 입력하세요" required="required"><br>
			<input id="mpw" type="password" name="mpw" placeholder="암호를 입력하세요" required="required"><br>
			<button type="submit">로그인</button><br><br>
			</form>
	</div>
	<a href="./findId">아이디 찾기 ㅣ</a>
	<a href="./findPw">비밀번호 찾기 ㅣ</a>
	<a href="./join">회원가입 </a>
</div>

<div style="text-align:center;">
<c:if test="${loginCheckCount eq 1}">
<p style="color: red;"> 아이디(로그인 전용 아이디) 또는 비밀번호를 잘못 입력했습니다. 입력하신 내용을 다시 확인해주세요.</p>
</c:if>
</div>




<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function () {
    sessionStorage.setItem("mid",  "<%=session.getAttribute("mid")%>" );
 });
</script>
</body>
</html>