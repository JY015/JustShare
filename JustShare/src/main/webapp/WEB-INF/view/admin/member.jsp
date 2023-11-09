<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<script type="text/javascript">
function gradeCh(mno, name, value){
	/* let select = document.getElementById("grade")[0];  */
/* 	let selectName =select.options[select.selectedIndex].text;
	let selectValue=select.options[select.selectedIndex].value; */
if(confirm(name + "님의 등급을 변경하시겟습니까?")){
location.href="./gradeChange?mno="+mno+"&grade="+value;

	
}
  }

</script>
</head>
<style>
.div-table {
	display: table;
	width: 100%;
}

.div-row {
	display: table-row;
	background-color: #f0f0f0;
}

.div-cell {
	display: table-cell;
	padding: 10px;
	border: 1px solid #f0f0f0;
}

.white {
	background-color: #fff;
}

select {
	width: 100%;
}
</style>
</head>
<body>
	<h1>회원관리</h1>
	<a href="./reportList">신고 관리</a> 
	
	<div class="div-table">
		<div class="div-row">
			<div class="div-cell">번호</div>
			<div class="div-cell">아이디</div>
			<div class="div-cell">이름</div>
			<div class="div-cell">이메일</div>
			<div class="div-cell">핸드폰번호</div>
			<div class="div-cell">등급</div>


		</div>
		<c:forEach items="${memberList}" var="row">
			<div class="div-row" style="${row.mgrade <= 2 ? 'background-color: red;' : ''}", ${row.mgrade > 2 ? 'background-color: white;' : ''}">
				<div class="div-cell">${row.mno}</div>
				<div class="div-cell">${row.mid}</div>
				<div class="div-cell">${row.mname}</div>
				<div class="div-cell">${row.memail}</div>
				<div class="div-cell">${row.mphone}</div>

				<div class="div-cell">
					<select id="grade" name="grade"
						onchange="gradeCh(${row.mno }, '${row.mname }', this.value)">
						<optgroup label="회원등급 관리">
							<option value="0" ${row.mgrade eq 0 ? 'selected="selected"' : ''}>강퇴</option>
							<option value="1" ${row.mgrade eq 1 ? 'selected="selected"' : ''}>징계</option>
							<option value="2" ${row.mgrade eq 2 ? 'selected="selected"' : ''}>경고</option>
							<option value="3" ${row.mgrade eq 3 ? 'selected="selected"' : ''}>일반
								회원</option>
							<option value="4" ${row.mgrade eq 4 ? 'selected="selected"' : ''}>관리자</option>
						</optgroup>
					</select>
				</div>
			</div>
		</c:forEach>
	</div>
	<%@ include file="../footer.jsp"%>
</body>
</html>