<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scaleable=no, maximum-scale=1" />
	<meta name="description" content="임차대행 | 가치공간만의 전문성과 세분화된 조직 체계로 차별화된 수익 구조와 안정적인 프로젝트 서비스를 제공합니다. - 가치공간, 온라이프(On-Life) 리테일 플랫폼"/>
    <title>가치공간 Leasing Management</title>
	<link rel="canonical"  href="https://www.valuevenue.co.kr/help/leasing?gubun=leasing"/>
    <link rel="stylesheet" href="/css/fullcalendar.css" />
    <link rel="stylesheet" href="/css/import.css?ver=20000120" />
    <link rel="stylesheet" href="/css/style.css?ver=20000120" />
    <link rel="stylesheet" href="/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="/css/valuevenue.css?ver=20000120" />
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
	<!--link rel="stylesheet" href="/css/spacedetail.css?ver=20000120"-->
	<link rel="stylesheet" href="/css/listpage.css?ver=20000120">

	<link rel="stylesheet" href="/css/main_page.css" />

	<!-- 회원가입 3가지회원 유형 css new -->
	<link rel="stylesheet" href="/css/register.css?ver=20000120" />
	<!-- 고객센터 css -->
	<link rel="stylesheet" href="/css/customer_service_center.css?ver=20000120" />
	<!-- 폰트어썸 -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />
	<link rel="shortcut icon" href="/images/v_favicon32.ico" sizes="32x32" />
	
	<meta property="og:locale"		 content="ko_KR" />
	<meta property="og:type"		 content="website" />
	<meta property="og:title"		 content="가치공간 Leasing Management" />
	<meta property="og:description"  content="임차대행 | 가치공간만의 전문성과 세분화된 조직 체계로 차별화된 수익 구조와 안정적인 프로젝트 서비스를 제공합니다. - 가치공간, 온라이프(On-Life) 리테일 플랫폼" />
	<meta property="og:url"			 content="https://www.valuevenue.co.kr/help/leasing?gubun=leasing" />
	<meta property="og:image"		 content="https://www.valuevenue.co.kr/images/main_default_v.jpg"/>
	<meta property="og:site_name"	 content="가치공간" />
	<meta name="naver-site-verification" content="daa1d446d775041d4d3610f1a1cc60c1562046b1" />


	<meta name="twitter:card"		 content="summary" />
	<meta name="twitter:title"		 content="가치공간 Leasing Management" />
	<meta name="twitter:description" content="임차대행 | 가치공간만의 전문성과 세분화된 조직 체계로 차별화된 수익 구조와 안정적인 프로젝트 서비스를 제공합니다. - 가치공간, 온라이프(On-Life) 리테일 플랫폼" />
	<meta name="twitter:image"		 content="https://www.valuevenue.co.kr/images/main_default_v.jpg" />
	<meta name="twitter:domain"		 content="가치공간" />
	
	<meta name="robots" content="index,follow">
	<meta name="naver-site-verification" content="a2a89e942b8a6cb220490a635dc04627db8547ed" />
	<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    <script src="/js/valuevenue.js?ver=20000120" defer></script>
    <script src="/js/jquery-3.3.1.min.js"></script>
    <script src="/js/owl.carousel.min.js"></script>
    <script src="/js/common.js?ver=20000120" defer></script>
    <script src="/js/cookie.js?ver=20000120" defer></script>
<script>
var _ss_user_id	= "";
</script>
  </head>
<body>
  <div class="body__container section">
  <input type="hidden" class="is_phpself" value="/help/leasing.html">
  <input type="hidden" class="is_app_banner" value="">
	<header id="header" class="header_bg_new">
      <div class="header__inner">
        <div class="header__first_row">
           <div class="sign-area">
			<a href="/login">로그인</a>
			<div class="half-line"></div> 
            <!--a href="/member/register">회원가입</a-->
			<a href="/member/register_type">회원가입</a>
            
			<div class="half-line"></div>
            <a href="/help/pc_guide20230426.pdf" target="_blank">가이드</a>
            <div class="half-line"></div>
			<a href="/contact/forms">제휴 및 입점문의</a>
            <div class="half-line"></div>
			<a href="/faq">자주 묻는 질문</a>
           </div>
        </div>
        <div class="full-line"></div>
        <div class="header__second_row"> 
			<div class="left-side">   
				<h1 class="logo"><a href="/">로고</a></h1>
			</div>
          <div class="search-area">
            <form class="searchbar searchbar-length" action="/schedule/search">
              <input type="text" placeholder="전체 둘러보기" name="stx" class="gnb_stx" value="" style="padding-right: 50px;">
              <button type="submit"> <img src="/images/ic_search.svg" alt=""></button> 
            </form>
          </div>
		  <div class="right-side">
            <div class="sign-group">
			
            </div>
          </div>
		</div>

        <div class="header__third_row">
          <div class="main-menu-area">
            <div><a class="" href="/schedule/search?gubun=popup">팝업 스토어</a></div>
            <div><a class="" href="/schedule/search?gubun=space">리테일 공간 대관</a></div>
            <div><a class="" href="/schedule/search?gubun=event">전국 행사 정보</a></div>
            <div><a class="active" href="/help/leasing?gubun=leasing">LEASING</a></div>
          </div>
          <div class="btn-com">
            <a href="https://www.value-venue.com/index.html" target='_blank'>About VALUEVENUE<i></i></a>
          </div>
        </div>  
      </div>
    </header>

		<header class="header__topnav_type2">
		  <div class="header_topnav_inner_n">
			<div class="first_row">
			  <div class="left-side">
				<div class="back" style="cursor:pointer" onclick="history.back();">뒤로가기</div>
				<h1 class="logo"><a href="/">로고</a></h1>
			  </div>
			</div>

		  </div>
		</header>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />
<div class="full-line box-bottom" style="display:block"></div>
	<section class="ani1 leasing-management">
	  <div class="whole-title_black">
	    <h1>Leasing</h1>
	  </div>
	  <a href="/contact/forms?no=6" ><div class="sticker_new">
	    <img class="building" src="https://www.value-venue.com/images/rentask.png" alt="">
		<div class="sticker-content">
		  <img src="https://www.value-venue.com/images/ic_asking.svg" alt="">
		  <p>임차대행 문의하기</p>
		</div>
		</div>
      </a> 
	  <h1 class="title">Leasing management</h1>
      <div class="leasing-management-subtitle">
	    <p class="sub-copy">가치공간만의 전문성과 세분화된 조직 체계로 
		차별화된 수익 구조와 안정적인 프로젝트 서비스를 제공합니다.</p>
	  </div>
	  <!-- 1월2일 수정 (leasing-content와 leasing-container 의 순서만 위아래로 바꿔주세요.) -->
	  <div class="leasing-content">
	    <div class="textcontent">
	      <div class="text-box">
			<div class="deco-line"></div>
			<p class="text-title">LEASING SERVICE <br>
			[MD 컨설팅]</p>
			<p class="text-description">공간 활성화를 위한 프로젝트 개발계획, Vertical MD 및 Concept  수립, 
			수익성에 기반한 적정 MD 선정으로 공간의 최적화된 service를 제공합니다.</p>
		  </div>
		  <div class="text-box">
		    <div class="deco-line"></div>
			<p class="text-title">대형 상업시설<br>
			[쇼핑몰 컨설팅]</p>
			<p class="text-description">공간 내 MD 리뉴얼 및 마케팅을 통한 최상의 수익성 도모, 
			브랜드 사업 확장 지원 및 pop-up 공간 제공을 통한 확장성을 제공합니다.</p>
		  </div>
		</div>  
	  </div>
	  <div class="leasing-container_new" style="z-index:0;"> <!-- 1월2일 수정 (클래스명 변경해주세요 leasing-container -> leasing-container_new) -->
	    <div class="contentbox">
	    <img src="https://www.value-venue.com/images/managementbuilding.jpg" alt="">
	      <!-- <img src="./img/amdin.jpg" alt="">  --><!--          <img alt="back" src="./img/back.png" style="cursor:pointer" onclick="history.back();">-->
	    </div>
	  </div>
	  <!-- 1월2일 수정 (leasing-content와 leasing-container 의 순서만 위아래도 바꿔주세요.) 종료 -->
	</section>
	<section class="wework ani1">
	<h1 class="title">The way we work</h1>
	<div class="workcard-container">
		<div class="work-card">
		<div class="work-content">
			<img src="https://www.value-venue.com/images/ic_work1.svg" alt="">
			<div>
			<p class="work-title">임대관리</p>
			<p class="work-description">• 임대전략수립 <br>
			• MD Plan 컨설팅 <br>
			• 임대차계약관리</p>
		</div>
		</div>
		</div>

		<div class="work-card">
		<div class="work-content">
			<img src="https://www.value-venue.com/images/ic_work2.svg" alt="">
			<div>
			<p class="work-title">운영/관리</p>
			<p class="work-description">• 상업시설운영/관리 <br>
			• 임대 MKT <br>
			• 임차인유지/관리
		</div>
		</div>
		</div>

		<div class="work-card">
		<div class="work-content">
			<img src="https://www.value-venue.com/images/ic_work3.svg" alt="">
			<div>
			<p class="work-title">기획/개발</p>
			<p class="work-description">• 개발컨설팅 <br>
			• 신규사업지 개발 <br>
			• 시장 리서치 <br>
			• 사업계획 및 전략수립</p>
		</div>
		</div>
		</div>
	</div>
	</section>
	<section class="trackrecord ani1">
		<h1 class="title">Track record</h1>
		<div class="rentcard-container">
			<!-- 리징페이지 수정시작 2023/4/4 ----------------->
			<div class="card__item_MD">
				<div class="card-photo">
					<img src="https://www.value-venue.com/images/rent1.jpg" alt="">
					<div class="bedgy">임차대행</div>
				</div>
				<div class="card-inner">
					<p class="card-title"> 죽전효성 해링턴플레이스</p>
					<p class="card-content">효성중공업의 초고층 주상복합 브랜드타운 해링턴 플레이스는 죽전역 프리미엄 로드 新주거타운의 중심으로 가치공간이 임대대행 서비스를 제공합니다. </p>
				</div>
			</div>
			<div class="card__item_MD">
				<div class="card-photo">
					<img src="https://www.value-venue.com/images/rent2.jpg" alt="">
					<div class="bedgy">임차대행</div>
				</div>
				<div class="card-inner">
					<p class="card-title">앨리웨이 인천</p>
					<p class="card-content">도심 속 나만의 테라스 앨리웨이 인천은 문화・휴식・쇼핑 콘텐츠를 큐레이션하는 라이프스타일 빌리지로 가치공간이 임대대행 서비스를 제공합니다. </p>
				</div>
			</div>
			<div class="card__item_MD">
				<div class="card-photo">
					<img src="https://www.value-venue.com/images/rent3.jpg" alt="">
					<div class="bedgy">임차대행</div>
				</div>
				<div class="card-inner">
					<p class="card-title">원주 벨리움 293</p>
					<p class="card-content">원주혁신도시 최초의 최대 규모 스트리트 몰 원주 벨리움 293은 노출성과 집객력을 갖춘 랜드마크 상가로 가치공간이 임대대행 서비스를 제공합니다. </p>
				</div>
			</div>
			<div class="card__item_MD">
				<div class="card-photo">
					<img src="https://www.value-venue.com/images/rent4.jpg" alt="">
					<div class="bedgy">임차대행</div>
				</div>
				<div class="card-inner">
					<p class="card-title">안녕 인사동</p>
					<p class="card-content">한국을 대표하는 전통 거리 인사동에 자리한 안녕 인사동은 푸드, 쇼핑, 갤러리 등 다양한 즐거움이 어우러진 복합문화공간으로 가치공간이 임대대행 서비스를 제공합니다.</p>
				</div>
			</div>
			<div class="card__item_MD">
				<div class="card-photo">
					<img src="https://www.value-venue.com/images/rent5.jpg" alt="">
					<div class="bedgy">임차대행</div>
				</div>
				<div class="card-inner">
					<p class="card-title">거북섬 보니타가</p>
					<p class="card-content"> 거북섬 해양복합단지에 조성 예정인 보니타가는 관광・휴양・레저 등 여가 기능을 결합시킨 지상 1층~지상 3층 규모의 복합스트리몰로 가치공간이 임대대행 서비스를 제공합니다.</p>
				</div>
			</div>
			<div class="card__item_MD">
				<div class="card-photo">
					<img src="https://www.value-venue.com/images/rent6.jpg" alt="">
					<div class="bedgy">임차대행</div>
				</div>
				<div class="card-inner">
					<p class="card-title">전주 에코시티 DK MALL</p>
					<p class="card-content"> 전주 에코시티 최고의 쇼핑센터 디케이몰은 전주 최초 문화생활공간으로 가치공간이 임대대행 서비스를 제공합니다. </p>
				</div>
			</div>
			<!-- <div class="card__item">
				<div class="card-photo">
					<img src="/images/rent1.jpg" alt="">
					<div class="bedgy">임차대행</div>
				</div>
				<div class="card-inner">
					<p class="card-title">전주 에코시티 DK MALL</p>
					<p class="card-content">전주 에코시티 최고의 쇼핑센터 디케이몰은 전주 최초 문화생활공간으로 가치공간이 임대대행 서비스를 제공합니다. </p>
				</div>
			</div>
			<div class="card__item">
				<div class="card-photo">
					<img src="/images/rent2.jpg" alt="">
					<div class="bedgy">임차대행</div>
				</div>
				<div class="card-inner">
					<p class="card-title">동탄 레이크꼬모(lakecomo)</p>
					<p class="card-content">동탄 라이프스타일 파크 레이크꼬모는 동탄 호수공원을 품은 복합상업공간으로 가치공간이 임대대행 서비스를 제공합니다. </p>
				</div>
			</div>
			<div class="card__item">
				<div class="card-photo">
					<img src="/images/rent3.jpg" alt="">
					<div class="bedgy">임차대행</div>
				</div>
				<div class="card-inner">
					<p class="card-title">명동 타임워크</p>
					<p class="card-content">명동 타임워크는 명동 상권의 중심으로 향하는 초입 핵심 입지에 위치한 도심 속 오피스 플랫폼으로 가치공간이 임대대행 서비스를 제공합니다. </p>
				</div>
			</div> -->
			<!-- <div class="card__item_MD">
				<div class="card-photo">
					<img src="/images/card-photo1.png" alt="">
					<div class="bedgy-MD">MD 컨설팅</div>
				</div>
				<div class="card-inner">
					<p class="card-title">전주 에코시티 DK MALL</p>
					<p class="card-content">청담 카이로스빌딩'은 청담역 인근에 위치한 고급 주거 지역 내 신축상업시설로 스위트스팟이 MD 컨설팅 지원합니다. </p>
				</div>
			</div> -->
			<!-- <div class="card__item_MD">
				<div class="card-photo">
					<img src="/images/rent4.jpg" alt="">
					<div class="bedgy-MD">MD 컨설팅</div>
				</div>
				<div class="card-inner">
					<p class="card-title">동탄 실리콘앨리</p>
					<p class="card-content">동탄의 실리콘앨리는 뉴욕의 비즈니스 열정과 화려한 라이프스타일을 담은 지식산업센터로 가치 공간이 MD 컨설팅을 제공합니다. </p>
				</div>
			</div> -->
			<div class="card__item_end">
				<div class="card-photo">
					<img src="https://www.value-venue.com/images/rent7.jpg" alt="">
					<div class="bedgy-end">임차마감</div>
				</div>
				<div class="card-inner">
					<p class="card-title">익산모현 롯데시네마</p>
					<p class="card-content">멀티플렉스 영화관 롯데시네마 익산모현점은 총 7개 상영관, 1,234개의 좌석을 보유한 초대형 상영관으로 가치공간이 임대대행 서비스를 제공합니다. </p>
				</div>
			</div>
			<!-- <div class="card__item_MD">
				<div class="card-photo">
					<img src="/images/rent7.jpg" alt="">
					<div class="bedgy-MD">MD 컨설팅</div>
				</div>
				<div class="card-inner">
					<p class="card-title">삼송 스칸센</p>
					<p class="card-content">힐스테이트 삼송역 스칸센은 고양 삼송지구의 초역세권 랜드마크 주거복합단지로 가치공간이 MD 컨설팅을 제공합니다. </p>
				</div>
			</div> -->
			<div class="card__item_end">
				<div class="card-photo">
					<img src="https://www.value-venue.com/images/rent8.jpg" alt="">
				<div class="bedgy-end">임차마감</div>
				</div>
				<div class="card-inner">
					<p class="card-title">거북섬 메가스퀘어</p>
					<p class="card-content"> 수변 조망권을 갖춘 거북섬 메가스퀘어는 경기도 시흥시 거북섬 웨이브파크 앞에 위치한 대형 복합스트리트 쇼핑몰로 가치공간이 임대대행 서비스를 제공합니다. </p>
				</div>
			</div>
			<div class="card__item_end">
				<div class="card-photo">
					<img src="https://www.value-venue.com/images/rent9.jpg" alt="">
					<div class="bedgy-end">임차마감</div>
				</div>
				<div class="card-inner">
					<p class="card-title">천안아산 모다아울렛</p>
					<p class="card-content">모다아울렛 4호점인 천안아산점은 상업 백화점이자 대형 아울렛으로 가치공간이 임대대행 서비스를 제공합니다. </p>
				</div>
			</div>
			<!-- <div class="card__item">
				<div class="card-photo">
					<img src="/images/rent9.jpg" alt="">
					<div class="bedgy">임차대행</div>
				</div>
				<div class="card-inner">
					<p class="card-title">부산 센트럴푸르지오</p>
					<p class="card-content">해운대 해수욕장 조망이 가능한 부산 해운대 센트럴 푸르지오는 다양한 커뮤니티 시설을 갖춘 초고층 주상 복합 아파트로 가치공간이 임대대행 서비스를 제공합니다.</p>
				</div>
			</div> -->
			<!-- 리징페이지 수정종료 2023/4/4 ----------------->
		</div>
	</section>
	  <section class="partners ani1">
		<h1 class="title">Our partners</h1>
		<div class="logo-container">
		  <div class="logobox"><img src="https://www.value-venue.com/images/partner1.png" alt=""></div>
		  <div class="logobox"><img src="https://www.value-venue.com/images/partner2.png" alt=""></div>
		  <div class="logobox"><img src="https://www.value-venue.com/images/partner3.png" alt=""></div>
		  <div class="logobox"><img src="https://www.value-venue.com/images/partner4.png" alt=""></div>
		  <div class="logobox"><img src="https://www.value-venue.com/images/partner5.png" alt=""></div>
		  <div class="logobox"><img src="https://www.value-venue.com/images/partner6.png" alt=""></div>
		  <div class="logobox"><img src="https://www.value-venue.com/images/partner7.png" alt=""></div>
		  <div class="logobox"><img src="https://www.value-venue.com/images/partner8.png" alt=""></div>
		  <div class="logobox"><img src="https://www.value-venue.com/images/partner9.png" alt=""></div>
		  <div class="logobox"><img src="https://www.value-venue.com/images/partner10.png" alt=""></div>
		  <div class="logobox"><img src="https://www.value-venue.com/images/partner11.png" alt=""></div>
		  <div class="logobox"><img src="https://www.value-venue.com/images/partner12.png" alt=""></div>
		  <div class="logobox"><img src="https://www.value-venue.com/images/partner13.png" alt=""></div>
		  <div class="logobox"><img src="https://www.value-venue.com/images/partner14.png" alt=""></div>
		  <div class="logobox"><img src="https://www.value-venue.com/images/partner15.png" alt=""></div>
		  <div class="logobox"><img src="https://www.value-venue.com/images/partner16.png" alt=""></div>
		  <div class="logobox"><img src="https://www.value-venue.com/images/partner17.png" alt=""></div>
		  <div class="logobox"><img src="https://www.value-venue.com/images/partner18.png" alt=""></div>
		  <div class="logobox"><img src="https://www.value-venue.com/images/partner19.png" alt=""></div>
		  <div class="logobox"><img src="https://www.value-venue.com/images/partner20.png" alt=""></div>
		  <div class="logobox"><img src="https://www.value-venue.com/images/partner21.png" alt=""></div>
		  <div class="logobox"><img src="https://www.value-venue.com/images/partner22.png" alt=""></div>
		  <div class="logobox"><img src="https://www.value-venue.com/images/partner23.png" alt=""></div>
		  <div class="logobox"><img src="https://www.value-venue.com/images/partner24.png" alt=""></div>
		  <div class="logobox"><img src="https://www.value-venue.com/images/partner25.png" alt=""></div>
		  <div class="logobox"><img src="https://www.value-venue.com/images/partner26.png" alt=""></div>
		  <div class="logobox"><img src="https://www.value-venue.com/images/partner27.png" alt=""></div>
		  <div class="logobox"><img src="https://www.value-venue.com/images/partner28.png" alt=""></div>
		  <div class="logobox"><img src="https://www.value-venue.com/images/partner29.png" alt=""></div>
		  <div class="logobox"><img src="https://www.value-venue.com/images/partner30.png" alt=""></div>
		</div>
	  </section>
      <section class="section section--m--search">
        <div class="container">
          <header id="header" class="header__type2">
            <div class="header__wrap">
              <div><p style="font-weight: 400; font-size: 24px; margin-left: 12px;">검색</p></div>
              <div class="back btnClose" style="background: url('/images/close.svg') no-repeat 50% 50%; margin: 0;"></div>
            </div>
          </header>
          <form id="search-form" class="inner m_search" method="GET" action="/schedule/list" onsubmit="return search_check_m();">
            <ul class="searchForm__inner">
              <li class="search_location">
                <img src="/images/ico_search1.png" alt="" />
                <dl>
                  <!--dt>검색어</dt-->
                  <dd>
                    <input type="text" placeholder="키워드를 입력해주세요.(eq. 현대백화점, 강남등)" name="globalKeyword" id="global_keyword_m" class="input--text" value="" autocomplete="off" />
                  </dd>
                </dl>
              </li>
              <li class="search_type">
                <img src="/images/ico_search2.png" alt="" />
                <dl>
                  <dt>팝업 유형</dt>
                  <dd>
                    <select class="selectBox" name="gubun" id="space_category_m">
                      <option value="">모두 선택</option>
                      <option value="schedule">백화점 팝업</option>
                      <option value="space">지역상권 공간</option>
                    </select>
                  </dd>
                </dl>
              </li>
              <li class="search_date datepick has--schedule">
                <img src="/images/ico_search3.png" alt="" />
                <dl>
                  <dt>시작 날짜</dt>
                  <dd>
                    <input class="datepick" id="date_start_m" type="text" name="dateStart" value="" placeholder="선택 하세요" readonly="readonly" />
                    <i></i>
                  </dd>
                </dl>
              </li>
              <li class="search_period">
                <img src="/images/ico_search4.png" alt="" />
                <dl>
                  <dt>팝업 기간</dt>
                  <dd>
                    <select class="selectBox" name="duration" id="duration_m">
                      <option value="">전체</option>
                      <option value="7">1주일 이하</option>
                      <option value="14">2주일 이하</option>
                      <option value="31">1달 이하</option>
                    </select>
                  </dd>
                </dl>
              </li>
              <script></script>
            </ul>
            <button class="search btn--primary">검색</button>
          </form>
        </div>
        <div id="m_search_schedule_list">
            <!-- 메인/팝업 지정 공간 표시용 -->
        </div>
      </section>

    <section class="aside-layerpop">
      <div class="aside-wrap">
        <div class="aside-content">
          <div class="aside-header">
            <a href="/"><img style="width: 100px;" src="/images/mo/logo_m_active2.svg" alt=""></a>
              <form class="searchbar" action="/schedule/list?gubun=&dateStart=&duration=">
			  <input type="hidden" name="gubun" value="">
			  <input type="hidden" name="dateStart" value="">
			  <input type="hidden" name="duration" value="">
                <input type="text" name="globalKeyword" placeholder="키워드를 입력해주세요.">
                <button type="submit"><img src="/images/ico_search.svg" alt=""></button>
              </form>
              <div class="btn-aside-layerpop-close">닫기버튼</div>
          </div>
          <div class="aside-body">
			<!-- one-stat-on two-stat-on stat off notice-on notice-off notice-non  -->
            <div class="aside-sign-group stat-off notice-on">   
              <div class="sign-group-profile">
                <div class="sign-group-profile-left">
                <span><a href="/login">로그인</a></span>
                <span><img src="/images/ico_login.svg" alt=""></a></span>
                </div>
                <div class="sign-group-profile-right">
                  <div class="aside-icon-alarm">
                    <img src="/images/ico_alarm.svg" alt="" onclick="top.location.href='/member/alarm'">
				  </div>
                </div>
              </div>
              <div class="aside-notice">
                <a href="/schedule/list?dateStart=2023-01-02">
                  <div class="notice-box">
                    <div class="notice-txt">
                      <p class="notice-alarm">&lt;알림&gt;</p>
                      <p class="notice-title">23년 01월 셀러 모집합니다</p>
                    </div>
                      <img src="/images/arrow_right.svg" alt="">
                  </div>
                </a>
              </div>
            </div>
            <!-- 광고배너 -->
            <div class="ad-banner-group">
              <div class="card__item" class="row" id="adbanner" onclick="openModal();currentSlide(1)" >
                <a href="/help/leasing">
                  <img src="/images/ad_banner.png">
                </a>
              </div>
            </div> 
            <!-- 광고배너 종료-->

            <div class="aside-menu-group">
            <p class="txt__aside_maintit">가치공간</p>
              <ul>
                <li><a href="/notice/list" class="aside-arrow">공지사항</a><li>
                <li><a href="/contact/forms" class="aside-arrow">제휴 및 입점문의</a><li>
                <li><a href="/help/leasing" class="aside-arrow">리징</a><li>
                <li><a href="/faq" class="aside-arrow">자주 묻는 질문</a><li>
                <li><a href="/help/guide20220407.pdf" class="aside-arrow" target='_blank'>사용자 가이드</a><li>
              </ul>
            </div>
            <hr class="menu-line">
            <div class="aside-contact-group">
            <p class="txt__aside_maintit">고객센터</p>
              <p class="contact-tit">TEL.  <a href="tel:02-1661-6925">02-1661-6925</a></p>
              <p class="contact-tit">사업자등록번호.  156-81-00883</p>
              <p class="contact-tit">E-mail. <a href="mailto:valuevenue@valuevenue.co.kr">valuevenue@valuevenue.co.kr</a></p>
            </div>
            <hr class="menu-line">
            <div class="aside-sns-group">
            <p class="txt__aside_maintit">SNS</p>
              <div class="social-logo">
                <div class="roundlogo" ><a href="https://www.instagram.com/valuevenue_official" target="_blank"><img src="/images/insta.svg" alt=""></a></div>
                <div class="roundlogo" ><a href="https://www.youtube.com/channel/UC_Yp-_yUp6JxwZAVRkzF94A" target="_blank"><img src="/images/youtube.svg" alt=""></a></div>
                <div class="roundlogo"><a href="https://blog.naver.com/value_venue" target="_blank"><img src="/images/blog.svg" alt=""></a></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
<script>
function search_check_m2()
{
	var stx   = $('#stxm').val().trim();
	var gubun = $('#gubunm').val() ?? '';
	var datestart = $('#dateStartm').val() ?? '';	
	var duration = $('#durationm').val() ?? '';

	if(stx == '' && gubun == '' && datestart == '' && duration == ''){
		alert('하나이상의 검색 조건을 입력 또는 선택해주세요.');
		return false;
	}
}
</script>
      <section class="section section--m--search">
        <div class="container">
          <header id="header" class="header__type2">
            <div class="header__wrap">
              <div><p style="font-weight: 400; font-size: 24px; margin-left: 12px;">검색</p></div>
              <div class="back btnClose" style="background: url('/images/close.svg') no-repeat 50% 50%; margin: 0;"></div>
            </div>
          </header>
          <form id="search-form" class="inner m_search" method="GET" action="/schedule/search" onsubmit="return search_check_m2();">
            <ul class="searchForm__inner">
              <li class="search_location">
                <img src="/images/ico_search1.png" alt="" />
                <dl>
                  <!--dt>검색어</dt-->
                  <dd>
                    <input type="text" placeholder="키워드를 입력해주세요.(eq. 현대백화점, 강남등)" name="stx" id="stxm" class="input--text" value="" autocomplete="off" />
                  </dd>
                </dl>
              </li>
              <li class="search_type">
                <img src="/images/ico_search2.png" alt="" />
                <dl>
                  <dt>검색 유형</dt>
                  <dd>
                    <select class="selectBox" name="gubun" id="gubunm">
                      <option value="" >전체</option>
                      <option value="popup" >팝업 스토어</option>
                      <option value="space" >리테일 공간 대관</option>
					  <option value="event" >전국 행사 정보</option>
                    </select>
                  </dd>
                </dl>
              </li>
              <li class="search_date datepick has--schedule">
                <img src="/images/ico_search3.png" alt="" />
                <dl>
                  <dt>시작 날짜</dt>
                  <dd>
                    <input class="datepick" id="dateStartm" type="text" name="dateStart" value="" placeholder="선택 하세요" readonly="readonly" />
                    <i></i>
                  </dd>
                </dl>
              </li>
              <li class="search_period">
                <img src="/images/ico_search4.png" alt="" />
                <dl>
                  <dt>운영 기간</dt>
                  <dd>
                    <select class="selectBox" name="duration" id="durationm">
                      <option value="" selected>전체</option>
                      <option value="7" >1주일 이하</option>
                      <option value="14" >2주일 이하</option>
                      <option value="31" >1달 이하</option>
                    </select>
                  </dd>
                </dl>
              </li>
              <script></script>
            </ul>
            <button class="search btn--primary">검색</button>
          </form>
        </div>
        <div id="m_search_schedule_list">
            <!-- 메인/팝업 지정 공간 표시용 -->
        </div>
      </section>

    <section class="aside-layerpop">
      <div class="aside-wrap">
        <div class="aside-content">
          <div class="aside-header">
            <a href="/"><img style="width: 100px;" src="/images/mo/logo_m_active2.svg" alt=""></a>
			  <form class="searchbar searchbar-length" action="/schedule/search">
				<input type="text" placeholder="전체 둘러보기" name="stx" class="gnb_stx" value="">
				<button type="submit"> <img src="/images/ico_search.svg" alt=""></button> 
			  </form>
              <div class="btn-aside-layerpop-close">닫기버튼</div>
          </div>
          <div class="aside-body">
			<!-- 브랜드 stats가 없는경우에만 "non-stat" 추가-->
            <div class="aside-sign-group non-stat">
              <div class="sign-group-profile">
                <div class="sign-group-profile-left">
                <span><a href="/login">로그인</a></span>
                <span><img src="/images/ico_login.svg" alt=""></a></span>
                </div>
                <div class="sign-group-profile-right">
                  <div class="aside-icon-alarm">
                    <img src="/images/ico_alarm.svg" alt="" onclick="top.location.href='/member/alarm'">
				  </div>
                </div>
              </div>
              <div class="aside-notice">
                <a href="/schedule/list?dateStart=2023-11-16">
                  <div class="notice-box">
                    <div class="notice-txt">
                      <p class="notice-alarm">&lt;알림&gt;</p>
                      <p class="notice-title">23년 11월 셀러 모집합니다</p>
                    </div>
                      <img src="/images/arrow_right.svg" alt="">
                  </div>
                </a>
              </div>
            </div>
            <!-- 광고배너 -->
            <div class="ad-banner-group">
              <div class="card__item" class="row" id="adbanner" onclick="openModal();currentSlide(1)" >
                <a href="/help/leasing">
                  <img src="/images/ad_banner.png">
                </a>
              </div>
            </div> 
            <!-- 광고배너 종료-->

            <div class="aside-menu-group">
            <p class="txt__aside_maintit">가치공간</p>
              <ul>
                <li><a href="/notice/list" class="aside-arrow">공지사항</a><li>
                <li><a href="/contact/forms" class="aside-arrow">제휴 및 입점문의</a><li>
                <li><a href="/help/leasing" class="aside-arrow">리징</a><li>
                <li><a href="/faq" class="aside-arrow">자주 묻는 질문</a><li>
                <li><a href="/help/pc_guide20230426.pdf" class="aside-arrow" target='_blank'>사용자 가이드</a><li>
              </ul>
            </div>
            <hr class="menu-line">
            <div class="aside-contact-group">
            <p class="txt__aside_maintit">고객센터</p>
              <p class="contact-tit">TEL.  <a href="tel:02-1661-6925">02-1661-6925</a></p>
              <p class="contact-tit">사업자등록번호.  156-81-00883</p>
              <p class="contact-tit">E-mail. <a href="mailto:valuevenue@valuevenue.co.kr">valuevenue@valuevenue.co.kr</a></p>
            </div>
            <hr class="menu-line">
            <div class="aside-sns-group">
            <p class="txt__aside_maintit">SNS</p>
              <div class="social-logo">
                <div class="roundlogo" ><a href="https://www.instagram.com/valuevenue_official" target="_blank"><img src="/images/insta.svg" alt=""></a></div>
                <div class="roundlogo" ><a href="https://www.youtube.com/channel/UC_Yp-_yUp6JxwZAVRkzF94A" target="_blank"><img src="/images/youtube.svg" alt=""></a></div>
                <div class="roundlogo"><a href="https://blog.naver.com/value_venue" target="_blank"><img src="/images/blog.svg" alt=""></a></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
      <nav class="bottom_nav_menu">
        <ul>
          <li class="input--search m_search_input b_nav_list">
            <a href="#">
              <svg class="black_c " xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
					<path fill-rule="evenodd" clip-rule="evenodd" d="M21.5 20.0585L16.4719 15.0304C18.9818 12.0171 18.6777 7.56252 15.7815 4.91827C12.8854 2.27402 8.42161 2.37546 5.64853 5.14853C2.87546 7.92161 2.77402 12.3854 5.41827 15.2815C8.06252 18.1777 12.5171 18.4818 15.5304 15.9719L20.5585 21L21.5 20.0585ZM5.08015 10.3504C5.08015 7.16356 7.66356 4.58015 10.8504 4.58015C14.0372 4.58015 16.6206 7.16356 16.6206 10.3504C16.6206 13.5372 14.0372 16.1206 10.8504 16.1206C7.66503 16.117 5.08368 13.5357 5.08015 10.3504Z" fill="#98A8AF"/>
			  </svg>
			  <p class="">검색</p>
            </a>
          </li>

          <li class="b_nav_list">
            <a href="javascript:alert('로그인 후 이용이 가능합니다.');location.href='/login.php?s_url=%2Fschedule%2Fmy_schedule'">
              <svg class="black_c " xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
					<path fill-rule="evenodd" clip-rule="evenodd" d="M7.6 12H9.4V13.8H7.6V12M20.2 6.6V19.2C20.2 20.1941 19.3941 21 18.4 21H5.8C4.801 21 4 20.19 4 19.2V6.6C4 5.60589 4.80589 4.8 5.8 4.8H6.7V3H8.5V4.8H15.7V3H17.5V4.8H18.4C19.3941 4.8 20.2 5.60589 20.2 6.6M5.8 8.4H18.4V6.6H5.8V8.4M18.4 19.2V10.2H5.8V19.2H18.4M14.8 13.8H16.6V12H14.8V13.8M11.2 13.8H13V12H11.2V13.8Z" fill="#98A8AF"/>
			  </svg>
			  <p class="">내 일정</p>
            </a>
          </li>
		  
          <li class="">
            <a href="/">
              <div class="home_btn">
				<div class="container_w">
					<div class="svgm">
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="23" viewBox="0 0 24 23" fill="none">
							<path fill-rule="evenodd" clip-rule="evenodd" d="M24 10L11.5 0L0 10H2.66602V22.5H8.49935V14.3333H15.4993V22.5H21.3327V10H24Z" fill="white" />
						</svg>
					</div>
				</div>
			  </div>
            </a>
          </li>
          <!--li>
            <a href="javascript:alert('로그인 후 이용이 가능합니다.');location.href='/login.php?s_url=%2Fmember%2Falarm'">
              <p>알림함</p>
            </a>
          </li>
          <li>
            <a href="javascript:alert('로그인 후 이용이 가능합니다.');location.href='/login.php?s_url=%2Fmember%2Fmypage'">
              <p>마이페이지</p>
            </a>
          </li-->
          <li class="b_nav_list ">
            <a href="javascript:alert('로그인 후 이용이 가능합니다.');location.href='/login.php?s_url=%2Fmember%2Falarm'">
              <svg class="black_c " xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
				 <path fill-rule="evenodd" clip-rule="evenodd" d="M12 5C14.2091 5 16 6.79086 16 9C16 11.2091 14.2091 13 12 13C9.79086 13 8 11.2091 8 9C8 6.79086 9.79086 5 12 5M12 7C10.8954 7 10 7.89543 10 9C10 10.1046 10.8954 11 12 11C13.1046 11 14 10.1046 14 9C14 7.89543 13.1046 7 12 7M12 14C14.67 14 20 15.33 20 18V21H4V18C4 15.33 9.33 14 12 14M12 15.9C9.03 15.9 5.9 17.36 5.9 18V19.1H18.1V18C18.1 17.36 14.97 15.9 12 15.9Z" fill="#98A8AF"/>
			  </svg>
			  <p class="">마이페이지</p>
            </a>
          </li>

          <li class="b_nav_list">
            <a class="btn-aside-open">
              <svg class="black_c" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
				<path fill-rule="evenodd" clip-rule="evenodd" d="M5 5V7H18V5H5M5 11V13H18V11H5M5 17V19H18V17H5" fill="#98A8AF"/>
			  </svg>
			  <p>더보기</p>
            </a>
          </li>
        </ul>
      </nav>
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
              <li class="line" style="border-left: 1px solid grey; height: 14px; padding-right: 18px;"></li>
              <li><a href="/help/privacy">개인정보처리방침</a></li>
              <li class="line" style="border-left: 1px solid grey; height: 14px; padding-right: 18px;"></li>
              <li><a href="https://www.value-venue.com" target=_blank>About VALUEVENUE</a></li>
            </ul>
          </div>
          <hr style="margin-top:12px; margin-bottom: 20px; width: 100%;">
          <div class="contact-social">
          <div>
            <img style="width: 96px;margin-left: 4px;" src="/images/mo/logo_m_active2.svg" alt="">
            <p>서울시 성동구 왕십리로63 언더스탠드에비뉴 D25<br>
            TEL : <a href="tel:02-1661-6925">02-1661-6925</a> &nbsp;&nbsp;사업자등록번호 : 156-81-00883 <br>
            <a href="mailto:valuevenue@valuevenue.co.kr">valuevenue@valuevenue.co.kr</a> </p>
          </div>
          <div class="social-list">
            <!-- <p style="font-size:16px; font-weight: bold;">SNS & Blog</p> <br> -->
            <div class="social-logo">
            <div class="roundlogo"><a href="https://www.value-venue.com/" target="_blank"><img src="/images/underbar.svg" alt=""></a></div>
            <div class="roundlogo"><a href="https://apps.apple.com/app/id1514738613" target="_blank"><img src="/images/apple.svg" alt=""></a></div><!--앱스토어-->
            <div class="roundlogo"><a href="https://play.google.com/store/apps/details?id=com.valuevenue.gachispace" target="_blank"><img src="/images/triangle.svg" alt=""></a></div><!--플레이스토어-->
            <div class="roundlogo"><a href="https://pf.kakao.com/_useHC" target="_blank"><img src="/images/comma.svg" alt=""></a></div><!--카카오채널-->
            <div class="roundlogo" ><a href="https://www.facebook.com/valuevenue1" target="_blank"><img src="/images/face.svg" alt=""></a></div><!--페이스북-->
            <div class="roundlogo" ><a href="https://www.instagram.com/valuevenue_official" target="_blank"><img src="/images/insta.svg" alt=""></a></div><!--인스타그램-->
            <div class="roundlogo" ><a href="https://www.youtube.com/channel/UC_Yp-_yUp6JxwZAVRkzF94A" target="_blank"><img src="/images/youtube.svg" alt=""></a></div><!--유튜브-->
            <div class="roundlogo"><a href="https://blog.naver.com/value_venue" target="_blank"><img src="/images/blog.svg" alt=""></a></div><!--블로그-->
          </div>
          </div>
        </div>
        </div>
      </footer>
    </div>

	<style>
	.mb-banner {
		height:200px;
		margin: 0 10px 120px 10px;
		background-color: #fff;
		border-radius: 10px;
	}
	.mb-banner-img{
		width:100%;
		height:80px;
		text-align:center;
	}
	.mb-banner-sub {
		height:30px;
		color: #fff;
		background-color: #1F6CFD;
		border-radius: 5px;
		padding: 5px;
		margin-top:5px;		
	}
	.mb-banner_title {
		color:black;
		text-align:center;
		font-size:14px;
	}
	.mobile_pop_section {
		display:block;
		bottom:0;
		position:fixed;
		width:100%;
		z-index:110;
		left:0;		
	}
	.notScroll {overflow: hidden;width: 100%;height: 100vh;}
	</style>
	<script>
		
		function mobile_app_func(){
			$(".mask").hide();
			$("body, .body__container").removeClass("notScroll");
			$(".mobile_pop").hide();

			setCookie('mobile_bottom_popup', 'done', 1);	//모바일 웹으로 보기 클릭한경우 값 지정
		}				
		
		function app_link_move(app_link){
			
			mobile_app_func();
			window.open(app_link, 'app_download', '_blank');
		}

		$(function (){
			$('.mask').click(function (){
				mobile_app_func();
			});				
		});
		
	</script>

    <!--date layer-->
    <div class="dateLayer" id="container"></div>
    <!--Simple Calender-->
    <link rel="stylesheet" href="/js/animated-event-calendar/dist/simple-calendar.css">
    <script src="/js/animated-event-calendar/dist/jquery.simple-calendar.js"></script>
    <script>
function detectMobileDevice(agent) {
	const mobileRegex = [
		/Android/i,
		/iPhone/i,
		/iPad/i,
		/iPod/i,
		/BlackBerry/i,
		/Windows Phone/i
	]

	return mobileRegex.some(mobile => agent.match(mobile))
}

function submitForm(){
	var area_count = 0;
	var category_count = 0;
    var department_count = 0;

	document.querySelectorAll('ul.tag.department li').forEach(function(target) {
		if(!target.classList.contains('all')){
			if(target.classList.contains('active')){
				department_count++;
			}
		}
	});

	document.querySelectorAll('ul.tag.area li').forEach(function(target) {
		if(!target.classList.contains('all')){
			if(target.classList.contains('active')){
				area_count++;
			}
		}
	});

	document.querySelectorAll('ul.tag.category li').forEach(function(target) {
		if(!target.classList.contains('all')){
			if(target.classList.contains('active')){
				category_count++;
			}
		}
	});

    if(department_count == 0){
	    $('#gubun').val('space');
    }

	if(area_count == 0){ // 상권 선택 체크
		alert('최소 하나 이상의 상권을 선택해주세요.');
		return false;
	}

	if(category_count == 0){ // 카테고리 선택 체크
		alert('최소 하나 이상의 제품 카테고리를 선택해주세요.');
		return false;
	}

	document.getElementById('search-form').submit();
}

var isMobile = detectMobileDevice(window.navigator.userAgent)
var isTablet = /(ipad|tablet|(android(?!.*mobile))|(windows(?!.*phone)(.*touch))|kindle|playbook|silk|(puffin(?!.*(IP|AP|WP))))/.test(navigator.userAgent.toLowerCase());

document.addEventListener('DOMContentLoaded', function () { // document ready
    // get_m_search_schedule_list(true, false);

	$(function(){
		$("#container").simpleCalendar({
			displayEvent: true, // display existing event
			disableEventDetails: true, // disable showing event details
			disableEmptyDetails: true, // disable showing empty date details
			initialDate: new Date('2023-11-16'),
			fixedStartDay: 0, // 일요일부터 한 주 시작
			onInit: function(calendar){
				// document.querySelector('a.simple-calendar-btn.btn-prev').remove();
				document.querySelectorAll('div.day').forEach(function(day){
					if(parseInt(day.textContent) < parseInt('16'))
					{
						day.classList.add("wrong-month")
					};
				});
			},
			onDateSelect: function (date, events){
				var current_date = new Date('2023-11-16')
				current_date = current_date.setHours(current_date.getHours() - 9);
				if(date < current_date)
				{
					alert("현재 날짜보다 과거는 선택할 수 없습니다.")
					return false;
				}

				var date_not_formatted = new Date(date.setDate(date.getDate()));

				var formatted_string = date_not_formatted.getFullYear() + "-";

				if (date_not_formatted.getMonth() < 9) {
					formatted_string += "0";
				}
				formatted_string += (date_not_formatted.getMonth() + 1);
				formatted_string += "-";

				if(date_not_formatted.getDate() < 10) {
					formatted_string += "0";
				}
				formatted_string += date_not_formatted.getDate();
				$('input[name="dateStart"]').val(formatted_string)
				// $('.dateLayer').removeClass('open');
                $('#mask').click();

			},
			onMonthChange: function (month, year) {
				var current_year = '2023';
				var current_month = '11';
                var $calendar = $("#container").data('plugin_simpleCalendar')

				if(year < current_year){
					document.querySelectorAll('div.day').forEach(function(day){
						day.classList.add("wrong-month")
					});
				}
				else if(year > current_year)
				{
					$calendar.setEvents(get_calendar_info(year, month+1));
				}
				else
				{
					if(month + 1 < current_month)
					{
						document.querySelectorAll('div.day').forEach(function(day){
							day.classList.add("wrong-month")
						});
					}
					else if(month + 1 == current_month)
					{
						document.querySelectorAll('div.day').forEach(function(day){
							if(parseInt(day.textContent) < parseInt('16'))
							{
								day.classList.add("wrong-month")
							}
						});

						$calendar.setEvents(get_calendar_info(year, month+1));
					}
					else
					{
						$calendar.setEvents(get_calendar_info(year, month+1));
                    }
				}
			}
		});
	});
});
</script>
  <div id="mask" class="mask"></div>
  <iframe name="_hidden_frame" id="_hidden_frame" width=0 height=0></iframe>
<!-- Global site tag (gtag.js) - Google Analytics -->
<!-- 구글 애널리틱스 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-234069340-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-234069340-1');
</script>


<!-- Meta Pixel Code -->
<script>
!function(f,b,e,v,n,t,s)
{if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};
if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];
s.parentNode.insertBefore(t,s)}(window, document,'script',
'https://connect.facebook.net/en_US/fbevents.js');
fbq('init', '1157263171706557');
fbq('track', 'PageView');
</script>
<noscript><img height="1" width="1" style="display:none"
src="https://www.facebook.com/tr?id=1157263171706557&ev=PageView&noscript=1"
/></noscript>
<!-- End Meta Pixel Code -->

<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
if(!wcs_add) var wcs_add = {};
wcs_add["wa"] = "110e8399a196c90";
if(window.wcs) {
wcs_do();
}
</script>
  </body>
</html>
<!-- end : 2023-11-16 15:57:15-->