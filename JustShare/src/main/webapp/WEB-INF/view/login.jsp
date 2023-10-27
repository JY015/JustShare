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
		<form action="./login" method="post" onsubmit="return loginCheck();">
			<input id="mid" type="text" name="mid" placeholder="아이디를 입력하세요" required="required"><br>
			<input id="mpw" type="password" name="mpw" placeholder="암호를 입력하세요" required="required"><br>
			<button type="submit">로그인</button>
			</form>
	</div>
	<a href="./findId">아이디 찾기</a><br>
	<a href="./findPw">비밀번호 찾기</a>
</div>

<script type="text/javascript">
/* function loginCheck(){
	var loginCheckCount = ${loginCheckCount}
	 alert("로그인 시도");
      if(loginCheckCount === 1) {
        alert("로그인 성공");
        return true;
	}else{
      alert("로그인 실패");
		return false;  
	}  
	}  */
</script>
</body>
</html>