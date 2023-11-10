<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scaleable=no, maximum-scale=1" />
   <meta name="description" content="JustShare은 가능성 속 잠재된 가치를 발굴하며, 공간 소유자에게는 유휴공간의 재발견을, 브랜드에게는 홍보의 장을, 소비자에게는 새로운 경험을 선사합니다"/>
    <title>Just Share</title>
   <link rel="canonical"  href="https://www.valuevenue.co.kr/"/>
    <link rel="stylesheet" href="/css/fullcalendar.css" />
    <link rel="stylesheet" href="/css/import.css?ver=20000120" />
    <link rel="stylesheet" href="/css/style.css?ver=20000120" />
    <link rel="stylesheet" href="/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="/css/valuevenue.css?ver=20000120" />
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
   <!--link rel="stylesheet" href="/css/spacedetail.css?ver=20000120"-->
   <link rel="stylesheet" href="/css/listpage.css?ver=20000120">
   <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"> 
   <link rel="stylesheet" href="/css/main_page.css" />

   <!-- 회원가입 3가지회원 유형 css new -->
   <link rel="stylesheet" href="/css/register.css?ver=20000120" />
   <!-- 고객센터 css -->
   <link rel="stylesheet" href="/css/customer_service_center.css?ver=20000120" />
   <!-- 폰트어썸 -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

   <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />
   <link rel="shortcut icon" href="/images/v_favicon32.ico" sizes="32x32" />
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
</head>
<body> 

<a href="./member">멤버 관리</a><br>
<a href="./main">admin main</a><br>
<style>
.div-table {
	display: table;
	width: 100%;
}

.div-row {
	display: table-row;
}

.div-cell {
	display: table-cell;
	padding: 10px;
	border: 1px solid #f0f0f0;
}
</style>
	<div class="div-table">
		<div class="div-row">
			<div class="div-cell">구매자</div>
			<div class="div-cell">판매자</div>
			<div class="div-cell">거래시간</div>
			<div class="div-cell">글번호</div>
			<div class="div-cell">글 확인</div>
			<div class="div-cell">카운트</div>
		</div>
		<c:forEach items="${tradeList}" var="row">
			<div class="div-row">
				<div class="div-cell">${row.from_user_id}</div>
				<div class="div-cell">${row.to_user_id}</div>
				<div class="div-cell">${row.timestamp}</div>
				<div class="div-cell">${row.bno}</div>
				<div class="div-cell"><button onclick="location.href='/bdetail?bno=${row.bno}'">글 확인</button></div>
				<div class="div-cell">${row.total_count}</div>
</div>
</c:forEach>
</div>
				총 결제 횟수: ${totalTradeList[0].total_count}

<br><br><br>
<%@ include file="adminfooter.jsp"%>
		
				
<script type="text/javascript">
</script>
</body>
</html>