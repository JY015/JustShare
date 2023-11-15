<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scaleable=no, maximum-scale=1" />
   <meta name="description" content="가치공간은 가능성 속 잠재된 가치를 발굴하며, 공간 소유자에게는 유휴공간의 재발견을, 브랜드에게는 홍보의 장을, 소비자에게는 새로운 경험을 선사합니다"/>
   <link rel="canonical"  href="https://www.valuevenue.co.kr/login"/>
    <link rel="stylesheet" href="/css/fullcalendar.css" />
    <link rel="stylesheet" href="/css/import.css?ver=20000120" />
    <link rel="stylesheet" href="/css/style.css?ver=20000120" />
    <link rel="stylesheet" href="/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="/css/valuevenue.css?ver=20000120" />
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
   <link rel="stylesheet" href="/css/listpage.css?ver=20000120">
    <link rel="stylesheet" href="/css/main_page.css" />
    <link rel="stylesheet" href="./css/login.css">
      <link rel="stylesheet" href="/css/register.css?ver=20000120" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />
   <meta property="og:locale"       content="ko_KR" />
   <meta property="og:type"       content="website" />
   <meta property="og:title"       content="팝업스토어 NO.1 가치공간 - 온라이프(On-Life) 리테일 플랫폼" />
   <meta property="og:description"  content="가치공간은 가능성 속 잠재된 가치를 발굴하며, 공간 소유자에게는 유휴공간의 재발견을, 브랜드에게는 홍보의 장을, 소비자에게는 새로운 경험을 선사합니다" />
   <meta property="og:url"          content="https://www.valuevenue.co.kr/login" />
   <meta property="og:image"       content="https://www.valuevenue.co.kr/images/main_default_v.jpg"/>
   <meta property="og:site_name"    content="가치공간" />
   <meta name="naver-site-verification" content="daa1d446d775041d4d3610f1a1cc60c1562046b1" />
   <meta name="twitter:card"       content="summary" />
   <meta name="twitter:title"       content="팝업스토어 NO.1 가치공간 - 온라이프(On-Life) 리테일 플랫폼" />
   <meta name="twitter:description" content="가치공간은 가능성 속 잠재된 가치를 발굴하며, 공간 소유자에게는 유휴공간의 재발견을, 브랜드에게는 홍보의 장을, 소비자에게는 새로운 경험을 선사합니다" />
   <meta name="twitter:image"       content="https://www.valuevenue.co.kr/images/main_default_v.jpg" />
   <meta name="twitter:domain"       content="가치공간" /> 
   <meta name="robots" content="index,follow">
   <meta name="naver-site-verification" content="a2a89e942b8a6cb220490a635dc04627db8547ed" />
 <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    <script src="/js/valuevenue.js?ver=20000120" defer></script>
    <script src="/js/owl.carousel.min.js"></script>
    <script src="/js/common.js?ver=20000120" defer></script>
    <script src="/js/cookie.js?ver=20000120" defer></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<style type="text/css">
#myform fieldset{
    display: inline-block;
    direction: rtl;
    border:0;
}
#myform fieldset legend{
    text-align: right;
}
#myform input[type=radio]{
    display: none;
}
#myform label{
    font-size: 3em;
    color: transparent;
    text-shadow: 0 0 0 gray;
   	
}
#myform label:hover{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
#myform label:hover ~ label{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
#myform input[type=radio]:checked ~ label{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
#reviewContents {
    width: 100%;
    height: 150px;
    padding: 10px;
    box-sizing: border-box;
    border: solid 1.5px #D3D3D3;
    border-radius: 5px;
    font-size: 16px;
    resize: none;
}
.rating {
   width: 180px;
}

.rating__star {
   cursor: pointer;
   color: #dabd18b2;
}
.border_bottom th label {font-size: 25px !important;}


</style>
</head>
<body>
<%@ include file="header.jsp"%>
<div class="body__container section">
<section class="signup_wrap">
<div class="sign_inner">
<div class="signup_list_wrap">
<div class="signup_title">
<div class="sign_text">리뷰 </div>
<div class="sign_text_list">거래 게시글 번호 : ${map.bno } / 판매자 : ${map.tid } / 구매자 : ${map.fid }</div>
</div>
</div>
 <!-- 내용 -->
<form class="mb-3" name="myform" id="myform" method="post">
<input type="hidden" name=bno value="${map.bno}">
<input type="hidden" id="rfid" name="rfid" value="<c:choose><c:when test='${sessionScope.mid eq map.fid }'>${map.fid}</c:when><c:otherwise>${map.tid }</c:otherwise></c:choose>" >
<input type="hidden" id ="rtid" name="rtid" value="<c:choose><c:when test='${sessionScope.mid eq map.fid }'>${map.tid}</c:when><c:otherwise>${map.fid }</c:otherwise></c:choose>">
<div class="input_sign_w">
<table>
<colgroup>
	<col style="width:180px">
</colgroup>
 <tbody>
 <tr class="border_bottom">
 <th><label for="reviewStar">별점 주기</label></th>
 <td>
 <fieldset>
<input type="radio" name="reviewStar" value="5" id="rate1"><label for="rate1"><i class="rating__star fas fa-star"></i></label>
<input type="radio" name="reviewStar" value="4" id="rate2"><label for="rate2"><i class="rating__star fas fa-star"></i></label>
<input type="radio" name="reviewStar" value="3" id="rate3"><label for="rate3"><i class="rating__star fas fa-star"></i></label>
<input type="radio" name="reviewStar" value="2" id="rate4"><label for="rate4"><i class="rating__star fas fa-star"></i></label>
<input type="radio" name="reviewStar" value="1" id="rate5"><label for="rate5"><i class="rating__star fas fa-star"></i></label>
 </fieldset>
 </td>
 </tr>
 <tr class="border_bottom">
 <th><label for="content">상세 내용</label><span aria-hidden="true">*</span></th>
 <td>
  <textarea class="col-auto form-control"  name="reviewContent" id="reviewContent" placeholder="거래후기를 남겨주세요 !!"></textarea>
 </td>
 </tr>
 </tbody> 
</table>
</div>
<div class="sign_btn_w">
<button>취소하기</button><button type="button" onclick="submitReview()">리뷰 남기기 </button>		
</div>
</form>
</div>
</section>
</div>
<%@ include file="footer.jsp"%>
<script>
//유효성 검사 

function submitReview() {
	var contentInput = document.getElementById('reviewContent');
    var selectedRating = document.querySelector('input[name="reviewStar"]:checked');
    var content = contentInput.value.trim();
	
    if (selectedRating) {
    
    var ratingValue = selectedRating.value;
    
    }else{
    	
    	alert("별점을 선택해주세요");
    	return false;
    	
    }
    
    if(content ==="" || content.length < 5 || content.length > 100){
    	alert("상세 리뷰 내용을 5자 이상 적어주세요");
    	return false;
    }
    
    document.querySelector('form').submit();
    
}
	
</script>			
	    <%@ include file="footer.jsp"%>
      
      
 <!-- 내가 만진 부분-->     
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
          <div>
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