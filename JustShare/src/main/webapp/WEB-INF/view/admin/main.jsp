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
    <link rel="stylesheet" href="/css/footer.css" />
    <link rel="stylesheet" href="/css/register.css?ver=20000120" />
    <link rel="stylesheet" href="/css/customer_service_center.css?ver=20000120" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />

    <link rel="shortcut icon" href="/images/v_favicon32.ico" sizes="32x32" />
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

    <style> 
</style>
</head>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Just Share - Admin Page</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #333;
            text-align: center;
        }

        .admin-info {
            margin-bottom: 20px;
            padding: 10px;
            background-color: #e0e0e0;
            border-radius: 5px;
            text-align: center;
        }

        .admin-actions {
            display: flex;
            justify-content: space-around;
            margin-bottom: 20px;
        }

        .admin-actions a {
            text-decoration: none;
            color: #fff;
            background-color: #007bff;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .admin-actions a:hover {
            background-color: #0056b3;
        }

        .warning-message {
            background-color: #dc3545;
            color: #fff;
            padding: 10px;
            border-radius: 5px;
            text-align: center;
        }
       .data-table {
    margin-top: 20px;
}

table {
    width: 100%;
    border-collapse: collapse;
}

th, td {
    border: 1px solid #ddd;
    padding: 8px;
    text-align: !important;
    
}

th {
    background-color: #f2f2f2;
}   

td{
	padding: 30px 0 34px !important;
	text-align: center !important;
} 
</style>
</head>
 <img alt="logo" src="../img/JustShare.png" width="25%;">&nbsp<br><br><br><br><br><br><br><br><br>
<body class="container">
    <h1>Just Share - Admin Page</h1>
    <div class="admin-info">
        관리자 아이디 : ${sessionScope.mid} 관리자님 안녕하세요.
    </div>
    <div class="admin-actions">
        <a href="../logout">로그아웃</a>
    </div>
   	<div class="data-table" style="text-align: center">
    <table>
        <tr>
            <th>종류</th>
            <th>개수</th>
        </tr>
        <tr>
            <td>총 멤버</td>
            <td><a href="./member">${memberCount}개</a></td>
        </tr>
        <tr>
            <td>상품 등록 수</td>
            <td><a href="../board">${boardCount}개</a></td>
        </tr>
        <tr>
            <td>신고 갯수</td>
            <td><a href="./reportList">${reportCount}개</a></td>
        </tr>
        <tr>
            <td>거래 횟수</td>
            <td><a href="./tradeList">${tradeCount}개</a></td>
        </tr>
    </table>
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

