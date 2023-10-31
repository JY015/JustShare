<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
 <style>
    
    .footer1 {
    /* 푸터의 스타일 설정 */
    position: sticky;
    bottom: 0;
    left: 0;
    width: 100%;
    background-color: white;
    color: white;
    text-align: center;
    padding: 10px;
    z-index: 10;
}

.footer1 {

      display: grid;
      grid-template-columns: repeat(5, 20%);
      
      justify-content: center;
}

.footer1 a {
   
    text-decoration: none;
}

.footer1 img {
   
    height: 100%;
    width : 50%;
}
 
  </style>
<body>

        <!-- Footer-->
 <footer class="footer1">
<a href="./index"><img  src="/img/home.png" ></a>
<a href="./board"><img  src="/img/share.png" ></a>
<a href="./mapGps"><img src="/img/map.png" ></a>
<a href="./chat1"><img  src="/img/chat.png" ></a>
<a href="./board"><img src="/img/mypage.png" ></a>
</footer>    


</body>
</html>