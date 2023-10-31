<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>신고하기</h1>
	<form action="./report" method="post" >
	<input type="hidden" name="bno" value="${map.bno }">
	<input type="hidden" name="rmno" value="${map.rmno }">
	<input type="hidden" name="mno" value=${map.mno }>
	신고 사유
	<div>
	<input type="radio" name="rcate">
	</div>
	<select name="rcate">
	<%--  <c:forEach items="${rcatelist }" var="n">
	<option value ="${n.rcate}" >${n.rcateType }</option>
	</c:forEach>  --%>
	</select>
	상세내용
	<div>
	<textarea name="rcontent"></textarea>
	</div>
	<button type="submit">신고하기</button>
	</form>
</body>
</html>