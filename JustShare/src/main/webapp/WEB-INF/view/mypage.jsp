<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scaleable=no, maximum-scale=1" />
   <meta name="description" content="가치공간은 가능성 속 잠재된 가치를 발굴하며, 공간 소유자에게는 유휴공간의 재발견을, 브랜드에게는 홍보의 장을, 소비자에게는 새로운 경험을 선사합니다"/>
    <title>Just Share</title>
   <link rel="canonical"  href="https://www.valuevenue.co.kr/"/>
    <link rel="stylesheet" href="/css/fullcalendar.css" />
    <link rel="stylesheet" href="/css/import.css?ver=20000120" />
    <link rel="stylesheet" href="/css/style.css?ver=20000120" />
    <link rel="stylesheet" href="/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="/css/valuevenue.css?ver=20000120" />
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
   <link rel="stylesheet" href="/css/listpage.css?ver=20000120">
   <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"> 
   <link rel="stylesheet" href="/css/main_page.css" />

   <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
   
   
   <meta property="og:locale"       content="ko_KR" />
   <meta property="og:type"       content="website" />
   <meta property="og:title"       content="팝업스토어 NO.1 가치공간 - 온라이프(On-Life) 리테일 플랫폼" />
   <meta property="og:description"  content="가치공간은 가능성 속 잠재된 가치를 발굴하며, 공간 소유자에게는 유휴공간의 재발견을, 브랜드에게는 홍보의 장을, 소비자에게는 새로운 경험을 선사합니다" />
   <meta property="og:url"          content="https://www.valuevenue.co.kr/" />
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
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>   
    <script src="/js/owl.carousel.min.js"></script>
    <script src="/js/common.js?ver=20000120" defer></script>
    <script src="/js/cookie.js?ver=20000120" defer></script>
<script>
var _ss_user_id   = "";
</script>

  </head>
  <%@ include file="header.jsp"%>
<body>
<<<<<<< HEAD
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
=======
  <div class="body__container section">
  <input type="hidden" class="is_phpself" value="/mypage.php">
  <input type="hidden" class="is_app_banner" value="">
	
      <section class="myinfo__pop">
        <div class="myInfo__inner">
          <div class="myregInfo">
            <div class="infoarea">
              <img src="" alt="" />
            
              <div class="userInfo">
                <div class="infoBox">
                  <span class="txt__card__tit2">${list.mname }</span>
                  <span class="txt__card__tit2">${list.memail }</span>
                </div>
                <div class="gradeBox">
                  <div class="grade grade1">${list.mgrade }</div>
                </div>
              </div>
    
            </div>
            <ul class="btn-group">
              <li>
                <button type='button' class="btn btn--outlined-primary" onclick="location.href='/member/mypage'">마이 페이지</button>
              </li>
              <li>
                <button type='button' class="btn btn--outlined-primary" onclick="location.href='/member/modify'">정보수정</button>
              </li>
              <li>
                <button type='button' class="btn btn--primary" onclick="top.location.href='/logout'">로그아웃</button>
              </li>
            </ul>
          </div>
        </div>
      </section>
<div class="full-line box-bottom" style="display:block"></div>
  <section class="section section--myInfo">
    <div class="myInfo__inner">
      <div class="myregInfo">
        <div class="infoarea">
          <img src="/images/ico_profile.svg" alt="" />
          <div class="userInfo">
            <div class="infoBox">
              <span class="txt__card__tit2">${list.mname }</span>
              <span class="txt__card__tit2">${list.memail }</span>
            </div>
            <div class="gradeBox">
            <c:choose>
            <c:when test="${ list.mgrade eq 5}"> 
            
                  <div class="grade grade1">관리자등급</div>
                  </c:when>
                  <c:otherwise>
                   <div class="grade grade1">일반회원</div>
                  
                  </c:otherwise>
                  
                  </c:choose>
                  <div class="more">
                    <img src="/img/ico_more.png" alt="" />
                    <ul id="more_div" style='display:none'>
                      <li><a href='/member/modify'>회원정보 수정</a></li>
                      <li><a href="/logout" onclick="return confirm('로그아웃 하시겠습니까?')">로그아웃</a></li>
                    </ul>
                  </div>
            </div>
          </div>
        </div>
        <ul class="btn-group">
        </ul>
      </div>
      <div class="myCountInfoWrap">
      </div>
    </div>
  </section>
  <section class="section section--mypageStart">
    <div class="mypageStart__inner mypage-lay1">

<c:choose>
                <c:when test="${ listdetail.bnoCount eq 0}"> 

            <div class="mypage-lay1-gridC2">
              <p class="mypage_title">판매중인 공간 (0)</p>
                
			  <div style="text-align:center">
				  <img class="no-result" src="https://www.valuevenue.co.kr/images/ico_no_result.svg" style='width:13%;padding-bottom:10px'>
					<div class="line-1">진행중인 공간이 존재하지 않습니다.</div>
				</div>
            </div>
                </c:when>
                
                    <c:otherwise>
                    
                    
                    <div class="mypage-lay1-gridC2">
              <p class="mypage_title">등록하신 공간이 ${listdetail.bnoCount }개 존재합니다.</p>
                
			  <div style="text-align:center">
					 
			<div>
		<div class="swiper event_card1_swiper">
		  <div class="swiper-wrapper">
		    <c:forEach items="${listdetail2 }" var="row" varStatus="loop">  
			<div class="card__item4 swiper-slide">			  
				<div class="img-box">
					<div class="card-sign-group">

					</div>
				  <button class="event_656 btn_like-16 " data-id="656" data-gubun="event"></button>
				  <a href="/bdetail?bno=${row.bno}">
					<img class="card_img" src="/img/places/${row.realFile}" onerror="this.src='/images/no_image.png'" alt="" />
				  </a>
				</div>
				<a href="/bdetail?bno=${row.bno}">
				<div class="card__inner">
				  <div class="txt__wrap">
					<p class="txt__card__tit">${row.btitle } </p> <p class="txt__subtit__sm"></p>
				  </div>
				</div>
				</a>
			</div>
			</c:forEach>
			
				</div>	
				
					<div class="line-1">진행중인 공간이 ${listdetail.bnoCount }개 존재합니다..</div>
				</div>
            </div>
            </div> 
            </div> 
                    
                    
                    
                      </c:otherwise>  
		</c:choose>
	<script>
$(function () {
	swiper_init("event_card1", 16, 25);
});
</script>
				
     
      <!-- 브랜드 등록 2 COL - START -->
      <div class="mypage-lay1-gridC2" id="brand_guide_div" style='display:none'>
        <p class="mypage_title_guide"><img src="/img/places/heart.png">관심목록</p>
        <div class="btn-group">
        <div class="swiper event_card1_swiper">
		  <div class="swiper-wrapper">
           <c:forEach items="${likelist }" var="row" varStatus="loop">  
       <div class="card__item4 swiper-slide">			  
				<div class="img-box">
					<div class="card-sign-group">

					</div>
				  <button class="event_656 btn_like-16 " data-id="656" data-gubun="event"></button>
				  <a href="/bdetail?bno=${row.bno}">
					<img class="card_img" src="/img/places/${row.realFile}" onerror="this.src='/images/no_image.png'" alt="" />
				  </a>
				</div>
				<a href="/bdetail?bno=${row.bno}">
				<div class="card__inner">
				  <div class="txt__wrap">
					<p class="txt__card__tit">${row.btitle } </p> <p class="txt__subtit__sm"></p>
				  </div>
				</div>
				</a>
			</div>
			</c:forEach>  
			
			</div>
			</div>

       
        </div>
      </div>

      <div class="mypage-lay1-gridC2" id="host_guide_div" style='display:none'>
        <p class="mypage_title_guide">거래 내역<br /></p>
        <div class="btn-group">
  
        </div>
      </div>
          <div class="mypage-lay1-gridR3">
            <p class="mypage_title">최근 알람</p>
            <ul class="myalarm-list">
              <li>
                <div>
					알림이 없습니다.
                </div>
              </li>
            </ul>
			<button class="btn btn--outlined-primary" onclick="location.href='/member/alarm'">알람 모두 보기 </button>
          </div>
      <!-- 결제 내역 - START -->
      <div class="mypage-lay1-gridNormal">
        <p class="txt__card__tit2" onclick="location.href='/member/payment_list'" style='cursor:pointer'>거래 내역</p>
        <span class="txt__subtit__sm">개인 결제내역을 확인하세요.</span>
        <img class="cursor__pointer" src="" alt="" onclick="location.href='/member/payment_list'"/>
        <ul class="mystatus">
          <li class="cursor__pointer" onclick="location.href='/member/payment_list'">결제 <span>0 원</span></li>
        </ul>
      </div>

      <div class="mypage-lay1-gridNormal">
        <p class="mypage_title_guide">고객센터<br /><a href='tel:0216616925' style='font-size:14px'>Tel 02 1661 6925</a></p>
        <span class="txt__subtit__sm">운영시간 9시 ~ 18시(평일)</span>
        <div class="btn-group">
          <button class="btn btn--outlined-primary" onclick="top.location.href='/qna/list';">1:1 문의</button>
          <button class="btn btn--outlined-primary" onclick="top.location.href='/faq';">자주 묻는 질문</button>
        </div>
    </div>
    </div>
  </section>


<script>
document.querySelectorAll('.workcheckin').forEach(function(target){
	target.addEventListener('click',function(e){
		var checkin_result = workCheckIn(target.dataset.scheduleId, target.dataset.brandId, target.dataset.viewDate);
		if(checkin_result){
			target.classList.remove('workcheckin');
			target.classList.add('workcheckout');
			target.innerText = '출근 완료';
		} else {
			alert('체크인에 실패했습니다. 계속 실패시 관리자에게 문의해주세요.')
		}
	});
});

$(function () {

	var host_guide = getCookie("host_guide");
	if (host_guide == 'Y')
		$("#host_guide_div").hide();
	else
		$("#host_guide_div").show();

	var brand_guide = getCookie("brand_guide");
	if (brand_guide == 'Y')
		$("#brand_guide_div").hide();
	else
		$("#brand_guide_div").show();

	$(".more").click(function () {
		$("#more_div").toggle();
	});

	/* mypage  */
	$(".mypopup").owlCarousel({
	  loop: false,
	  margin: 20,
	  nav: true,
	  responsive: {
		0: {
		  items: 1,
		  // margin: 0,
		},
		760: {
		  items: 3,
		},
		1025: {
		  items: 3,
		},
	  },
	});
});

function disabled_host()
{
	setCookie("host_guide", 'Y', 7); 
	$("#host_guide_div").hide();
}

function disabled_brand()
{
	setCookie("brand_guide", 'Y', 7); 
	$("#brand_guide_div").hide();
}
</script>
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
                      <option value="" selected>전체</option>
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
                                                      <span>기상민</span>
				  <div class="more aside-more">
                    <img src="/images/ico_setting.svg" alt="" />
				      <ul class="aside-more-location" style='display:none'>

                      <li><a href='/member/modify'>회원정보 수정</a></li>
                      <li><a href='/logout'>로그아웃</a></li>
                    </ul>
                  </div>
                </div>
                <div class="sign-group-profile-right">
                  <div class="aside-icon-alarm">
                    <img src="/images/ico_alarm.svg" alt="" onclick="top.location.href='/member/alarm'">
				  </div>
                </div>
              </div>
              <div class="aside-notice">
                <a href="/schedule/list?dateStart=2023-11-06">
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
            <!-- 아이콘메뉴 시작 -->
            <div class="menu-icon-group slide slide_wrap">
              <div class="slide_item">
                <ul class="menu-icon-container">
                  <li>
                    <a href="/schedule/my_schedule?filter=승인대기|진행중|확정|관심">
					  <div class="menu-icon-box">
                        <img src="/images/ico_main_schedule.svg" alt="">
                      </div>
                      <p>내 일정 관리</p>
                    </a>
                  </li>
                  <li>
                    <a href="/member/revenue?tab=3#result_tab">
					  <div class="menu-icon-box">
                        <img src="/images/ico_main_receipt.svg" alt="">
                      </div>
                      <p>지급 내역서</p>
                    </a>
                  </li>
                  <li>
                    <a href="/brand/brand_view">
					  <div class="menu-icon-box">
                        <img src="/images/ico_main_brand.svg" alt="">
                      </div>
                      <p>브랜드 관리</p>
                    </a>
                  </li>
                </ul>
              </div>
            </div>
            <!-- 아이콘메뉴 종료 -->
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
            <a href="/schedule/my_schedule?filter=승인대기|진행중|확정|관심">
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
            <a href="/member/alarm">
              <p>알림함</p>
            </a>
          </li>
          <li>
            <a href="/member/mypage">
              <p>마이페이지</p>
            </a>
          </li-->
          <li class="b_nav_list ">
            <a href="/member/mypage">
              <svg class="black_c active" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
				 <path fill-rule="evenodd" clip-rule="evenodd" d="M12 5C14.2091 5 16 6.79086 16 9C16 11.2091 14.2091 13 12 13C9.79086 13 8 11.2091 8 9C8 6.79086 9.79086 5 12 5M12 7C10.8954 7 10 7.89543 10 9C10 10.1046 10.8954 11 12 11C13.1046 11 14 10.1046 14 9C14 7.89543 13.1046 7 12 7M12 14C14.67 14 20 15.33 20 18V21H4V18C4 15.33 9.33 14 12 14M12 15.9C9.03 15.9 5.9 17.36 5.9 18V19.1H18.1V18C18.1 17.36 14.97 15.9 12 15.9Z" fill="#98A8AF"/>
			  </svg>
			  <p class="active">마이페이지</p>
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
 <%@ include file="footer.jsp"%>
      <footer class="footer1400">
        <div id="footer__box" class="footer__inner txt__subtit">
          <div class="flex" style="text-align: center">
            <ul>
              <li><a href="/notice/list">공지사항</a></li>
              <li class="line" style="border-left: 1px solid grey; height: 14px; padding-right: 18px;"></li>
              <li><a href="/qna/list">문의하기</a></li>
              <li class="line" style="border-left: 1px solid grey; height: 14px; padding-right: 18px;"></li>
              <li><a href="/faq">자주 묻는 질문</a></li>
              <li class="line" style="border-left: 1px solid grey; height: 14px; padding-right: 18px;"></li>
              <li><a href="/help/policy">이용약관</a></li>
            </ul>
          </div>
          <hr style="margin-top:12px; margin-bottom: 20px; width: 100%;">
          <div class="contact-social">
          <div>
            <img style="width: 96px;margin-left: 4px;" src="" alt="">
            <p>서울특별시 강남구 테헤란로7길 7 에스코빌딩 6~7층<br>
            TEL : <a href="tel:02-1111-2222">02-1111-2222</a> &nbsp;&nbsp;사업자등록번호 : 000-00-00000 <br>
            <a href="mailto:valuevenue@valuevenue.co.kr">valuevenue@valuevenue.co.kr</a> </p>
          </div>
        </div>
        </div>
      </footer>
    </div>
    
  </body>
</html>
>>>>>>> main
