<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
   <link rel="stylesheet" href="/css/footer.css" />

   <!-- 회원가입 3가지회원 유형 css new -->
   <link rel="stylesheet" href="/css/register.css?ver=20000120" />
   <!-- 고객센터 css -->
   <link rel="stylesheet" href="/css/customer_service_center.css?ver=20000120" />
   <!-- 폰트어썸 -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

   <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />
   <link rel="shortcut icon" href="/images/v_favicon32.ico" sizes="32x32" />
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<img alt="logo" src="../img/JustShare.png" width="25%;">&nbsp<br><br>
<body> 
<div style="text-align: center">
<h1>날짜별 거래내역</h1>
<br>
<style>
.div-table {
	display: table;
	width: 100%;
}

.div-row {
	display: table-row;
}
.div-rowrow{
	display: table-row;
}

.div-cell {
	display: table-cell;
	padding: 10px;
	border: 1px solid #f0f0f0;
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

 <button class="btn btn-primary" id="showAllTransactions">전체 거래내역 보기</button>
            <div class="div-table" id="allTransactionsTable" style="display:none;">
                <!-- 전체 거래내역을 표시할 테이블 -->
                <div class="div-rowrow">
                    <div class="div-cell">구매자</div>
                    <div class="div-cell">판매자</div>
                    <div class="div-cell">거래시간</div>
                    <div class="div-cell">글번호</div>
                </div>
                <c:forEach items="${tradeList}" var="row">
                    <div class="div-row" onclick="location.href='/bdetail?bno=${row.bno}'">
                        <div class="div-cell">${row.from_user_id}</div>
                        <div class="div-cell">${row.to_user_id}</div>
                        <div class="div-cell">${row.timestamp}</div>
                        <div class="div-cell" onclick="location.href='/bdetail?bno=${row.bno}'">${row.bno}</div>
                    </div>
                </c:forEach>
            </div>
        </div>
<%@ include file="adminfooter.jsp"%>

<br><br>
				
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
  google.charts.load("current", {packages:["corechart"]});
  google.charts.setOnLoadCallback(drawChart);

  function drawChart() {
    var data = google.visualization.arrayToDataTable([
      ["Element", "횟수", { role: "style" }],
      <c:forEach items="${dateList}" var="row">
        ["${row.dateOnly}", ${row.count}, "#3366cc"],
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
    	    title: "JustShare 거래내역 차트",
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



</body>
</html>