<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scaleable=no, maximum-scale=1" />
	<meta name="description" content="임차대행 | 가치공간만의 전문성과 세분화된 조직 체계로 차별화된 수익 구조와 안정적인 프로젝트 서비스를 제공합니다. - 가치공간, 온라이프(On-Life) 리테일 플랫폼"/>
    <title>가치공간 Leasing Management</title>
	<link rel="canonical"  href="https://www.valuevenue.co.kr/help/leasing?gubun=leasing"/>
    <link rel="stylesheet" href="/css/fullcalendar.css" />
    <link rel="stylesheet" href="/css/import.css?ver=20000120" />
    <link rel="stylesheet" href="/css/style.css?ver=20000120" />
    <link rel="stylesheet" href="/css/owl.carousel.min.css" />
   <link rel="stylesheet" href="/css/valuevenue.css?ver=20000120" />
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
	<!--link rel="stylesheet" href="/css/spacedetail.css?ver=20000120"-->
	<link rel="stylesheet" href="/css/listpage.css?ver=20000120">
	<link rel="stylesheet" href="/css/main_page.css" />
	<!-- 회원가입 3가지회원 유형 css new -->
	<link rel="stylesheet" href="/css/register.css?ver=20000120" />
	<!-- 고객센터 css -->
	<link rel="stylesheet" href="/css/customer_service_center.css?ver=20000120" />
	<!-- 폰트어썸 -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />
	<link rel="shortcut icon" href="/images/v_favicon32.ico" sizes="32x32" />
	
	<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    <script src="/js/valuevenue.js?ver=20000120" defer></script>
    <script src="/js/jquery-3.3.1.min.js"></script>
    <script src="/js/owl.carousel.min.js"></script>
    <script src="/js/common.js?ver=20000120" defer></script>
    <script src="/js/cookie.js?ver=20000120" defer></script>
<script>
var _ss_user_id	= "";
</script>
  </head>
<body>
<%@ include file="header.jsp"%>
  <div class="body__container section">
	<section class="ani1 leasing-management">
	  <div class="whole-title_black">
	    <h1>Leasing</h1>
	  </div>
	  <a href="/contact/forms?no=6" ><div class="sticker_new">
	    <img class="building" src="https://www.value-venue.com/images/rentask.png" alt="">
		<div class="sticker-content">
		  <img src="https://www.value-venue.com/images/ic_asking.svg" alt="">
		  <p>채팅 문의</p>
		</div>
		</div>
      </a> 
	  <h1 class="title">관리자 페이지</h1>
      <div class="leasing-management-subtitle">
	    <p class="sub-copy">JustShare의 전문성과 세분화된 조직 체계로 
		차별화된 수익 구조와 안정적인 프로젝트</p>
	  </div>
	</section>

	<section class="wework ani1">
	<div class="workcard-container">
		<div class="work-card">
		<div class="work-content">
			<img src="https://www.value-venue.com/images/ic_work1.svg" alt="">
			<div>
			<p class="work-title">총 멤버</p>
			<p class="work-description"> <br>
			<a style="font-size: 22px;" href="./member">• ${memberCount}명</a>
		</div>
		</div>
		</div>
		<div class="work-card">
		<div class="work-content">
			<img src="https://www.value-venue.com/images/ic_work2.svg" alt="">
			<div>
			<p class="work-title">상품 등록</p>
			<p class="work-description">
			 <br>
			<a style="font-size: 22px;" href="../board">• ${boardCount}개</a>
		</div>
		</div>
		</div>
		<div class="work-card">
		<div class="work-content">
			<img src="../img/report.png" alt="">
			<div>
			<p class="work-title">신고</p>
			<p class="work-description">
			 <br>
			<a style="font-size: 22px;" href="./reportList">• ${reportCount}개</a></p>
		</div>
		</div>
		</div>
			<div class="work-card">
		<div class="work-content">
			<img src="https://www.value-venue.com/images/ic_work3.svg" alt="">
			<div>
			<p class="work-title">거래</p>
			<p class="work-description"><br>
			<a style="font-size: 22px;" href="./tradeList">• ${tradeCount}개</a></p>
		</div>
		</div>
		</div>
	</div>
	</section>
<div id="donutchart" style="width: 100%; height: 100%; text-align: center;"></div>
<br><br><br>
    <c:if test="${sessionScope.mgrade < 4 || sessionScope.mgrade == null}">
        <div class="warning-message">
            <script>
                alert("관리자모드는 접근할 수 없습니다.");
                window.location.href = "/";
            </script>
        </div>
    </c:if>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', '보드 카테고리'],
          ['카페',     ${boardCate[0].bcategory1 }],
          ['식당',      ${boardCate[0].bcategory2 }],
          ['술집',  ${boardCate[0].bcategory3 }],
          ['연습실', ${boardCate[0].bcategory4 }],
          ['녹음실',    ${boardCate[0].bcategory5 }],
          ['파티장',    ${boardCate[0].bcategory6 }],
          ['세트장',    ${boardCate[0].bcategory7 }],
          ['공방',    ${boardCate[0].bcategory8 }],
          ['강당',    ${boardCate[0].bcategory9 }],
          ['갤러리',    ${boardCate[0].bcategory10 }],
          ['공연장',    ${boardCate[0].bcategory11 }],
          ['사무실',    ${boardCate[0].bcategory12 }],
          ['오피스텔',    ${boardCate[0].bcategory13 }], 
        ]);
        var options = {
          title: '<상품 등록 카테고리>',
          pieHole: 0.1,
        };
        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
        chart.draw(data, options);
      }
    </script>    


 <footer class="footer1400">
        <div id="footer__box" class="footer__inner txt__subtit">
          <div class="flex">
          </div>
          <div class="contact-social">
          <div>
            <img style="width: 96px;margin-left: 4px;" src="../img/JustSharelogo.png" alt="">
            <p>서울특별시 강남구 테헤란로7길 7 에스코빌딩 6~7층<br>
            TEL : <a href="tel:010-1111-2222">010-1111-2222</a> &nbsp;&nbsp;사업자등록번호 : 000-00-00000 <br>
            <a href="mailto:valuevenue@valuevenue.co.kr">JustShare@valuevenue.co.kr</a> </p>
          </div>
        </div>
        </div>
      </footer>
    </div>
    <br><br><br>
	<%@ include file="adminfooter.jsp"%>
	
	<style>
.contentbox img{
	width: 100%;
}


.leasing-content{
	height: 59%;
}

.workcard-container{
		grid-template-columns: repeat(2, 1fr)!important;
		gap: 30px!important;
	}
	
	
.leasing-container_new {
	height: 760px;
	margin-bottom: 0px;
}

/* /* .leasing-content{
	top: 0%;
	height: 40%;
}	




.leasing-container_new {
	height: 20%;
	margin-bottom: 0px;
}

.textcontent{
	padding-top: 0%;
}

.text-box {
    margin-top: 40px;
    padding-left: 0%;
    padding-right: 0%;
} */ */
	
	
/* .leasing-container_new {
    height: 550px;
    margin-bottom: 125px;
}	
	.workcard-container{
		grid-template-columns: repeat(2, 1fr)!important;
		gap: 30px!important;
	}
	
.leasing-content{
 top: 0%;
 height: 400px;
}	
	
	.textcontent{
		padding-top: 27%;
	}
	
	.work-card .work-title{
	font-weight: 600;
    font-size: 22px;
    margin-bottom: 14px;
	}
	
	
	.work-card {
		width: 107%;
	} */
	
	.mb-banner {
		height:200px;
		margin: 0 10px 120px 10px;
		background-color: #fff;
		border-radius: 10px;
	}
	.mb-banner-img{
		width:100%;
		height:80px;
		text-align:center;
	}
	.mb-banner-sub {
		height:30px;
		color: #fff;
		background-color: #1F6CFD;
		border-radius: 5px;
		padding: 5px;
		margin-top:5px;		
	}
	.mb-banner_title {
		color:black;
		text-align:center;
		font-size:14px;
	}
	.mobile_pop_section {
		display:block;
		bottom:0;
		position:fixed;
		width:100%;
		z-index:110;
		left:0;		
	}
	
	.notScroll {overflow: hidden;width: 100%;height: 100vh;}
	</style>
  </body>
</html>