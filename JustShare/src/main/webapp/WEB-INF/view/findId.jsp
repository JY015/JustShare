<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
</head>
<body>
<c:if test="${findId eq null}">
<div class="findId-form">
    <form action="./findId" method="post">
        <input type="text" name="mname" placeholder="이름을 입력하세요" required="required" maxlength="8"><br>
        <input type="text" name="mphone" placeholder="핸드폰번호를 입력하세요" required="required" maxlength="11"><br>
        <button type="submit">아이디 찾기</button>
    </form>
</div>
</c:if>

<c:if test="${findId ne null}">
    당신의 아이디는 '${findId}' 입니다.
    <br>
    <button type="button" onclick="location.href='./login'">로그인 하러 가기</button>
</c:if>
<c:if test="${count eq 0}">
    가입된 아이디가 없습니다.
</c:if>

<script type="text/javascript">
</script>

</body>
</html>

