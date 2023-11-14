<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>푸터</title>
<link rel="canonical" href="https://www.valuevenue.co.kr/login" />
<link rel="stylesheet" href="/css/fullcalendar.css" />
<link rel="stylesheet" href="/css/import.css?ver=20000120" />
<link rel="stylesheet" href="/css/style.css?ver=20000120" />
<link rel="stylesheet" href="/css/owl.carousel.min.css" />
<link rel="stylesheet" href="/css/valuevenue.css?ver=20000120" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
<link rel="stylesheet" href="/css/listpage.css?ver=20000120">

<link rel="stylesheet" href="/css/footer.css" />
<link rel="stylesheet" href="/css/login.css"/>

<!-- 폰트어썸 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />

<meta name="robots" content="index,follow">
<meta name="naver-site-verification"
	content="a2a89e942b8a6cb220490a635dc04627db8547ed" />
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
<script src="/js/valuevenue.js?ver=20000120" defer></script>
<script src="/js/jquery-3.3.1.min.js"></script>
<script src="/js/owl.carousel.min.js"></script>
<script src="/js/common.js?ver=20000120" defer></script>
<script src="/js/cookie.js?ver=20000120" defer></script>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">


 <style>
.b_nav_list {
	top: 7px;
}

.xi-home, .xi-home-o, .xi-group, .xi-emoticon-devil-o, .xi-exchange {
	text-align: center;
	font-size: 162%;
	position: relative;
	top: 7px;
	color: rgba(0, 0, 0, 0.4);
}

.bottom_nav_menu {
    position: fixed;
    left: 0;
    bottom: -11px !important; /* 수정된 부분 */
    width: 100%;
    height: 56px;
    color: #262626;
    text-align: center;
    z-index: 10;
    background: #fcfcfc;
    -webkit-transition: bottom 0.2s;
    transition: bottom 0.2s;
    -webkit-box-shadow: 0 0 12px rgba(0, 0, 0, 0.12);
    box-shadow: 0 0 12px rgba(0, 0, 0, 0.12);
}
@media screen /*  and /* (max-width:550px) */ {
  .banner_back_img .mo_banner{
    display: block ;
  }



</style>

<nav class="bottom_nav_menu">
	<ul>
		<li class="b_nav_listb "><a href='./'> <i class="xi-home"></i> </svg><p class="">관리자메인</p></a></li>
		<li class="b_nav_listb "><a href='../'> <i	class="xi-home-o"></i> </svg><p class="">일반 메인</p></a></li>
		<li class="b_nav_list "><a href='./member'> <i class="xi-group"></i></svg><p class="">회원관리</p></a></li>
		<li class="b_nav_list "><a href='./reportList'> <i class="xi-emoticon-devil-o"></i></svg><p class="">신고관리</p></a></li>
		<li class="b_nav_list "><a href='./tradeList'> <i class="xi-exchange"></i></svg><p class="">거래내역</p></a></li>
	</ul>
</nav>
</body>
</html>
