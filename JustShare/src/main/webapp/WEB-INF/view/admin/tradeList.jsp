<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scaleable=no, maximum-scale=1" />
<meta name="description"
	content="JustShare은 가능성 속 잠재된 가치를 발굴하며, 공간 소유자에게는 유휴공간의 재발견을, 브랜드에게는 홍보의 장을, 소비자에게는 새로운 경험을 선사합니다" />
<title>Just Share</title>
<link rel="canonical" href="https://www.valuevenue.co.kr/" />
<link rel="stylesheet" href="/css/fullcalendar.css" />
<link rel="stylesheet" href="/css/import.css?ver=20000120" />
<link rel="stylesheet" href="/css/style.css?ver=20000120" />
<link rel="stylesheet" href="/css/owl.carousel.min.css" />
<link rel="stylesheet" href="/css/valuevenue.css?ver=20000120" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
<!--link rel="stylesheet" href="/css/spacedetail.css?ver=20000120"-->
<link rel="stylesheet" href="/css/listpage.css?ver=20000120">
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" href="/css/footer.css" />

<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</head>

<body>
<%@ include file="header.jsp"%>
	<div style="text-align: center">
		<button class="btn btn-primary2" >날짜별 거래내역</button>
		<br>
		<br>
		
<style>
.div-table {
	width: 100%;
	border-collapse: collapse;
}

.btn.btn-primary2 {
    pointer-events: none;
}


.div-row {
	display: flex;
	width: 100%;
}

.div-rowrow {
	display: flex;
	width: 100%;
	background-color: #ccdaee;
}

.div-cell {
	flex: 1;
	border: 1px solid #ddd;
	padding: 8px;
	text-align: center;
	box-sizing: border-box;
	border: 1px solid black;
}

.line{
 	border: none;
    border-top: 1px solid black; 
    margin: 10px 0; 
}

button {
	background-color: #004AAD !important;
}

</style>
		<div class="div-table">
			<div class="div-rowrow">
				<div class="div-cell">거래 날짜</div>
				<div class="div-cell">거래 횟수</div>
			</div>
			<c:forEach items="${dateList}" var="row">
				<div class="div-row">
					<div class="div-cell">${row.dateOnly}</div>
					<div class="div-cell">${row.count}</div>
				</div>
			</c:forEach>
		</div>

		<div id="barchart_values" style="width: 100%; height: 100%;"></div>
		<hr class="line">
		<button class="btn btn-primary" id="showAllTransactions">전체 거래내역 보기</button>
		<br>
		<br>
		<div class="div-table" id="allTransactionsTable" style="display: none;">
			<!-- 전체 거래내역을 표시할 테이블 -->
			<div class="div-rowrow">
				<div class="div-cell">구매자</div>
				<div class="div-cell">판매자</div>
				<div class="div-cell">거래시간</div>
				<div class="div-cell">글번호</div>
			</div>
			<c:forEach items="${tradeList}" var="row">
				<div class="div-row"
					onclick="location.href='/bdetail?bno=${row.bno}'">
					<div class="div-cell">${row.from_user_id}</div>
					<div class="div-cell">${row.to_user_id}</div>
					<div class="div-cell">${row.timestamp}</div>
					<div class="div-cell"
						onclick="location.href='/bdetail?bno=${row.bno}'">${row.bno}</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>

	<br>
	<br>

	<script type="text/javascript"
		src="https://www.gstatic.com/charts/loader.js"></script>
	<script type="text/javascript">
  google.charts.load("current", {packages:["corechart"]});
  google.charts.setOnLoadCallback(drawChart);

  function drawChart() {
    var data = google.visualization.arrayToDataTable([
      ["Element", "횟수", { role: "style" }],
      <c:forEach items="${monthDay}" var="row">
        ["${row.monthDay}", ${row.count}, "#3366cc"],
      </c:forEach>
    ]);

    var view = new google.visualization.DataView(data);
    view.setColumns([0, 1,
      {
        calc: "stringify",
        sourceColumn: 1,
        type: "string",
        role: "annotation"
      },
      2]);

    var options = {
    	    title: "<JustShare 거래내역 차트>",
    	    width: '100%', 
    	    height: 300,
    	    bar: { groupWidth: "85%" },
    	    legend: { position: "none" },
    	    hAxis: {
    	      title: '거래 수',
    	    },
    	  };

    	  var chart = new google.visualization.BarChart(document.getElementById("barchart_values"));

    	  // 창 크기가 변경될 때마다 drawChart 함수를 호출하여 차트를 그립니다.
    	  google.visualization.events.addListener(chart, 'ready', function () {
    	    window.onresize = function () {
    	      drawChart();
    	    };
    	  });

    	  chart.draw(view, options);
    	}
  $(document).ready(function () {
      $("#showAllTransactions").click(function () {
          $("#allTransactionsTable").toggle();
      });        
  });
  
</script>

  <%@ include file="adminfooter.jsp"%>
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
</body>
</html>