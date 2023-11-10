<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scaleable=no, maximum-scale=1" />
    <meta name="description" content="JustShare은 가능성 속 잠재된 가치를 발굴하며, 공간 소유자에게는 유휴공간의 재발견을, 브랜드에게는 홍보의 장을, 소비자에게는 새로운 경험을 선사합니다" />
    <title>Just Share - 관리자</title>

    <!-- 여러 CSS 파일을 통합하여 사용하는 방식으로 변경 -->
    <link rel="stylesheet" href="/css/fullcalendar.css" />
    <link rel="stylesheet" href="/css/import.css?ver=20000120" />
    <link rel="stylesheet" href="/css/style.css?ver=20000120" />
    <link rel="stylesheet" href="/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="/css/valuevenue.css?ver=20000120" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
    <link rel="stylesheet" href="/css/listpage.css?ver=20000120">
    <link rel="stylesheet" href="/css/main_page.css" />
    <link rel="stylesheet" href="/css/register.css?ver=20000120" />
    <link rel="stylesheet" href="/css/customer_service_center.css?ver=20000120" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />

    <link rel="shortcut icon" href="/images/v_favicon32.ico" sizes="32x32" />
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

    <style>
    body {
        font-family: 'Pretendard', sans-serif;
        background-color: #f7f7f7;
        color: #333;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
        text-align: center;
    }
    h1 {
        color: #333;
    }

    a {
        color: #007BFF;
        text-decoration: none;
        font-weight: bold;
        margin-right: 20px;
    }

    a:hover {
        color: #0056b3;
    }

    .container {
        max-width: 80%;
        margin: 0 auto;
    }

    .menu {
        display: flex;
        flex-direction: column;
        align-items: flex-start;
        padding: 20px;
        position: fixed;
        left: 0;
        top: 0;
        height: 100%;
        color: white;
      
    }

    .menu-logo img {
        cursor: pointer;
    }

    .menu-item {
        margin-top: 20px;
        cursor: pointer;
        display: flex;
        align-items: center;
    }

    .menu-item i {
        margin-right: 10px;
    }

    .menu-item:hover {
        border-radius: 4px;
    }

    .warning-message {
        color: red;
        font-weight: bold;
        margin-top: 20px;
    }
</style>

</head>
		<div class="menu">
			<div class="menu-item" onclick="url('')"><i class="xi-user-o xi-2x"></i>관리자 메인</div>
			<div class="menu-item" onclick="url('../')"><i class="xi-user-o xi-2x"></i>일반 메인</div>
			<div class="menu-item" onclick="url('member')"><i class="xi-user-o xi-2x"></i>회원 관리</div>
			<div class="menu-item" onclick="url('reportList')"><i class="xi-user-o xi-2x"></i>신고관리</div>
			<div class="menu-item" onclick="url('../logout')"><i class="xi-flag-o xi-2x"></i>로그아웃</div>
		</div>
		<script>function url(url){location.href="./"+url;}</script>
		
<body class="container">
    <h1>Just Share - 관리자 화면</h1>

    <div class="admin-info">
        관리자 아이디: ${sessionScope.mid}님 등급: ${sessionScope.mgrade}
    </div>

    <div class="admin-actions">
        <a href="./member">멤버 관리</a>
        <a href="./reportList">신고 관리</a>
    </div>

    <c:if test="${sessionScope.mgrade < 4}">
        <div class="warning-message">
            <script>
                alert("관리자모드는 접근할 수 없습니다.");
                window.location.href = "/";
            </script>
        </div>
    </c:if>
<%@ include file="adminfooter.jsp"%>
</body>

</html>
