<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scaleable=no, maximum-scale=1" />
    <meta name="description" content="가치공간은 가능성 속 잠재된 가치를 발굴하며, 공간 소유자에게는 유휴공간의 재발견을, 브랜드에게는 홍보의 장을, 소비자에게는 새로운 경험을 선사합니다"/>
    <title>아이디 찾기</title>

   <link rel="stylesheet" href="/css/valuevenue.css?ver=20000120" />
   <link rel="stylesheet" href="/css/main_page.css" />
   <link rel="stylesheet" href="/css/findId.css" />
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>   

<body>
  <%@ include file="header.jsp"%>
</head>
    
<c:if test="${findId eq null}">
<div class="findId-form">
    <form action="./findId" method="post" class="container">
    <div class="text_find_id">
             <h1 style="font-size: 30px;">FIND ID</h1><br>
            <span style="color: #8A8A8A">가입하신 정보를 입력해주시면 등록된 <br>휴대폰 번호로 전송 해드립니다.</span>
         </div>  
        <label style="text-align: left;" for="mname">이름</label>
        <input type="text" name="mname" placeholder="ex) 홍길동" required="required" maxlength="8"><br><br>
        <label style="text-align: left;">핸드폰 번호</label>
        <input type="text" name="mphone" placeholder="ex) 01012345678" required="required" maxlength="11"><br><br><br>
         <div class="button-container">
         <button type="button" style=" border: solid 1px #020202 !important; margin-right: 10px!important; color:black !important; background-color: white !important;" onclick="window.location.href = './login';">취소</button>
        <button type="submit">아이디 찾기</button> 
        </div>
    </form>
</div>
</c:if>

<c:if test="${findId ne null}">
<br><br><br><br><br><br><br><br><br>
    당신의 아이디는 <span style="color: red">'${findId}'</span>입니다.
    <br><br><br><br><br><br><br><br><br><br>
    <button style="width: 50%;" type="button" onclick="location.href='./login'">로그인 하러 가기</button><br>
</c:if>
<c:if test="${count eq 0}">
<br><br>
    <p style="color: red; font-weight: bold;">가입된 아이디가 없습니다. 다시 확인해주세요.</p>
</c:if>
<br><br><br>

<%@ include file="footer.jsp"%>
<footer class="footer1400">
        <div id="footer__box" class="footer__inner txt__subtit">
          <div class="flex">
            <ul>
              <li><a href="/notice/list">공지사항</a></li>
              <li class="line" style="border-left: 1px solid grey; height: 14px; padding-right: 18px;"></li>
              <li><a href="/contact/forms">제휴 및 입점문의</a></li>
              <li class="line" style="border-left: 1px solid grey; height: 14px; padding-right: 18px;"></li>
              <li><a href="/qna/list">문의하기</a></li>
              <li class="line" style="border-left: 1px solid grey; height: 14px; padding-right: 18px;"></li>
              <li><a href="/faq">자주 묻는 질문</a></li>
              <li class="line" style="border-left: 1px solid grey; height: 14px; padding-right: 18px;"></li>
              <li><a href="/help/policy">이용약관</a></li>
                   <c:if test="${sessionScope.mgrade eq 4}"><a href="./admin/main">관리자페이지</a></c:if>             
            </ul>
          </div>
          <hr style="margin-top:12px; margin-bottom: 20px; width: 100%;">
          <div class="contact-social">
          <div style="text-align: left;">
            <img style="width: 96px;margin-left: 4px;" src="./img/JustSharelogo.png" alt="">
            <p>서울특별시 강남구 테헤란로7길 7 에스코빌딩 6~7층<br>
            TEL : <a href="tel:010-1111-2222">010-1111-2222</a> &nbsp;&nbsp;사업자등록번호 : 000-00-00000 <br>
            <a href="mailto:valuevenue@valuevenue.co.kr">JustShare@valuevenue.co.kr</a> </p>
          </div>
        </div>
        </div>
      </footer>
    </div>

  </body>
</html>