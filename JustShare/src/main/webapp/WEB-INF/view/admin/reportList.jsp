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
   <link rel="stylesheet" href="/css/footer.css" />

   <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<img alt="logo" src="../img/JustShare.png" width="25%;">&nbsp<br><br>
<body> 
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
	width: 25%;
}

.div-cell-a{
	border: 1px solid #f0f0f0;
	display: table-cell;
}

.report-table {
	display: table;
	width: 100%;
}

.report-row {
	display: table-row;
}

.report-table-header{
	display: table;
	width: 100%;
}

.report-row-header{
	display: table-row;
	background-color: #f5f5f5;
}



</style>

<div style="text-align: center">
<div class="div-table">
		<div class="div-row">
			<div class="div-cell">신고 아이디</div>
			<div class="div-cell">신고 누적</div>
		</div>
		
		<c:forEach items="${reportListMember}" var="m">
			<div class="div-row">
				 <div class="div-cell" onclick="showReports('${m.mid}')">${m.mid}</div>
				<div class="div-cell">${m.count}회
				<c:if test="${m.count >= 5}">&nbsp&nbsp<span style="color: red">신고 횟수 5회 이상 계정 정지</span></c:if>
			</div>
		</div>
</c:forEach>
</div>
 <div id="donutchart" style="width: 100%; height: 100%;"></div>
<button id="toggleButton">펼치기/숨기기</button>	
<br>
	<div class="report-table-header">
    <div class="report-row-header">
        <div class="div-cell">신고한 사람</div>
        <div class="div-cell">신고 당한<br>사람</div>
        <div class="div-cell">신고 내용</div>
        <div class="div-cell">신고<br>카테고리</div>
    </div>
    </div>
    <div class="report-table">
    <c:forEach items="${reportList}" var="row">
        <div class="report-row" onclick="location.href='/bdetail?bno=${row.bno}'">
            <div class="div-cell">${row.rmid}</div>
            <div class="div-cell-a">${row.mid}</div>
            <div class="div-cell">${row.rcontent}</div>
            <div class="div-cell">${row.rcateName}</div>
        </div>
    </c:forEach>
</div>
</div>

<br><br><br><br>

<script>
     $(document).ready(function () {
        $('#toggleButton').click(function () {
            $('.report-table').toggle();
        });
    }); 
    function showReports(userId) {
    	  $('.report-table .report-row').hide();
        if (userId) {
            $('.div-cell-a').each(function () {
                if ($(this).text() === userId) {
                    console.log(userId);
                    $(this).closest('.report-table .report-row').show();
                }
            });
        }
    }
</script>
<%@ include file="adminfooter.jsp"%>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['정보 다름',     ${category[0].category1 }],
          ['중복게시물',      ${category[0].category2 }],
          ['의심스러움',  ${category[0].category3 }],
          ['거래관련 분쟁', ${category[0].category4 }],
          ['기타',    ${category[0].category5 }]
        ]);

        var options = {
          title: '<카테고리별 신고>',
          pieHole: 0.1,
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
        chart.draw(data, options);
      }
    </script>





		
				
</body>
</html>