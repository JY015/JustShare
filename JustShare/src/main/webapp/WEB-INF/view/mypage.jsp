<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link href="css/index.css" rel="stylesheet" />
</head>
<body>
	<%@ include file="menu.jsp"%>
	<br>
	<c:forEach items="${mypageList}" var="m">
		<div class="form-input">
			<label>아이디</label><br>
			 <input type="text" name="mid" readonly="readonly" value="${m.mid}" class="mid"><br> 
			<label>이름</label><br>
			 <input type="text" name="mname" readonly="readonly" value="${m.mname}" class="mname"><br> 
			 <label>주소</label><br> 
			 <input type="text" name="maddr" readonly="readonly" value="${m.maddr}" class="maddr"><br>
			 <label>생년월일</label><br> 
			 <input type="text" name="mbirth" readonly="readonly" value="${m.mbirth}" class="mbirth"><br>
			 <label>핸드폰 번호</label><br> 
			 <input type="text" name="mphone" readonly="readonly" value="${m.mphone}" class="mphone"><br>
			  <label>이메일</label><br> 
			 <input type="text" name="memail" readonly="readonly" value="${m.memail}" class="memail"><br>
		</div>
	</c:forEach>
	<script type="text/javascript">		
	</script>
	<%@ include file="footer.jsp"%>
</body>
</html>