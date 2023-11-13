<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
   <header id="header" class="header_bg_new">
      <div class="header__inner">
        <div class="header__first_row">
           <div class="sign-area">
           <c:choose>
                         <c:when test="${sessionScope.mid eq null}"><li class="nav-item"><a class="nav-link" href="./login"><i class="xi-user"></i></a></li></c:when>
                         <c:otherwise><li class="nav-item"><a class="nav-link" href="./logout" onclick="return confirm('로그아웃 하시겠습니까?')"><i class="xi-log-out"></i></a></li></c:otherwise>
                        </c:choose>     
         <div class="half-line"></div>
            <a href="/mypage"> 마이페이지</a> 
            
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
         <img alt="back" src="./img/back.png" style="cursor:pointer" onclick="history.back();">
            <h1 class="logo"><a href="/"></a></h1>
         </div>
        <div class="right-side">
            <div class="sign-group">
           <div class="alarm-group" onclick="top.location.href='/member/alarm'">알림아이콘</div>
<!--            <div class="my-thumb" style="background-image: url(/images/ico_profile.svg);">내 썸네일 이미지</div>                   -->            </div>
          </div>
      </div>
 
      </div>
    </header>
          
          <!--  모바일  -->
  <header class="header_topnav_new">
		  <div class="header_topnav_inner_n">
			<div class="first_row">
			<img alt="back" src="./img/back.png" style="cursor:pointer" onclick="history.back();">

			  <h1 class="logo"><a href="/"></a></h1>
			  <div class="blue_btn">
			  <c:choose>
                         <c:when test="${sessionScope.mid eq null}"><a class="nav-link2" href="./login"><i class="xi-user xi-2x"></i></a></c:when>
                         <c:otherwise><a class="nav-link2" href="./logout" onclick="return confirm('로그아웃 하시겠습니까?')"><i class="xi-log-out"></i></a></c:otherwise>
                        </c:choose>    
              </div>
			</div>

		  </div>
		</header>