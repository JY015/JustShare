<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
	<link href="css/index.css" rel="stylesheet" />
</head>
<style>
body {
	margin: 0 auto;
	padding-top : 100px;
}


nav {
	top: 0;
	width: 100%;
	height: 45px;
	color: black;
	background-color: white;
	z-index: 10;
	position: fixed;
	border-bottom: 3px solid #004AAD;
}

nav ul {
	margin: 0 auto;
	padding: 0;
	text-decoration: none;
}

nav li {
	margin: 0 auto;
	padding: 0;
	list-style: none;
	width: 180px;
	height: 100%;
	line-height: 50px;
	list-style: none;
	text-align: center;
}


nav li:hover {
	cursor: pointer;
}

.lli {
	float: left;
	color: #004AAD
}


.nav-item {
	float: right;
	font-weight: bold;
	font-size: large;
	font-family: 'Noto Sans KR', sans-serif;
}
</style>
<body>
	<nav>
		<ul>
		<li class="lli"><img alt="logo" src="./img/JustSharelogo.png" height="100%;"></li>
			<c:choose>
				<c:when test="${sessionScope.mname eq null}">
					<li class="nav-item"><a class="nav-link" href="./login"><i class="xi-user">로그인</i></a></li>
				</c:when>
				<c:otherwise>
					<li class="nav-item"><a class="nav-link" href="./logout" onclick="return confirm('로그아웃 하시겠습니까?')"><i class="xi-log-out">로그아웃</i></a></li>
				</c:otherwise>
			</c:choose>

		</ul>
	</nav>

</body>
</html>