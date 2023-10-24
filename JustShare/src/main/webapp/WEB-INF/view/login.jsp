<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 창</title>
</head>
<body>
<div style="text-align:center;">
<img alt="login" src="./img/JustShare.png" width="15%;">
<div class="login-form">
		<form action="./login" method="post">
			<input type="text" name="mid" placeholder="아이디를 입력하세요" required="required"><br>
			<input type="password" name="mpw" placeholder="암호를 입력하세요" required="required"><br>
			<c:if test="${sessionScope.mname eq null}">
			<button type="submit">로그인33333333333</button>
			</c:if>
		</form>
		<form action="./logout" method="post">
			<c:if test="${sessionScope.mname ne null}">
		 	<button type="submit">로그아웃</button>
		 	</c:if>
		</form>
	</div>
</div>
</body>
</html>