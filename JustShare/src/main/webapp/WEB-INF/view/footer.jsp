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

.footer1 div {

font-size: 20px;

}
 
  </style>
<body>
<script>

document.getElementById('icon1').addEventListener('click', function() {
    toggleImage('icon1', '/img/home.png', '/img/share.png');
});

document.getElementById('icon2').addEventListener('click', function() {
    toggleImage('icon2', '/img/share.png', '/img/home.png');
});

// 다른 아이콘들도 필요에 따라 추가할 수 있습니다.
// document.getElementById('icon3').addEventListener('click', function() {
//     toggleImage('icon3', '/img/previous.png', '/img/next.png');
// });

function toggleImage(iconId, originalImage, alternateImage) {
    var iconElement = document.getElementById(iconId);
    var currentSrc = iconElement.src;

    if (currentSrc.includes(originalImage)) {
        iconElement.src = alternateImage;
    } else {
        iconElement.src = originalImage;
    }
}


</script>


        <!-- Footer-->
 <footer class="footer1">
<a href="./index"><img id="icon1" src="/img/home.png" ><div>홈</div></a>
<a href="./board"><img class="icon2"   src="/img/share.png" ><div>게시글</div></a>
<a href="./mapMark4"><img class="icon3"  src="/img/map.png" ><div>지도</div></a>
<a href="./chat1"><img class="icon4"   src="/img/chat.png" ><div>채팅</div></a>
<a href="/member/mypage"><img class="icon5"  src="/img/mypage.png" ><div>내정보</div></a>
</footer>    


</body>
</html>