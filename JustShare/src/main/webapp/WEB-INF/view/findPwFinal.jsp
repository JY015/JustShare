<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경</title>
</head>
<body>
비밀번호 변경
		<div class="article">			
				<h1>메일보내기</h1>
				<form action="./findPwFinal" method="post">
					<input type="text" name="title" placeholder="제목을 적어주세요">
					<input type="text" name="to" placeholder="받는 사람 email주소를 적어주세요">
					<textarea name="content"></textarea>
					<button type="submit">비밀번호 찾기</button>
				</form>	
			</div>
<script type="text/javascript">
</script>
</body>
</html>
