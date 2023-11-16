<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

          <!--  모바일  -->
  <header class="header_topnav_new">
        <div class="header_topnav_inner_n">
         <div class="first_row">
         <img alt="back" src="../img/back.png" style="cursor:pointer" onclick="history.back();">

           <h1 class="logo"><a href="/"></a></h1>
           <div class="blue_btn">
           <c:choose>
                         <c:when test="${sessionScope.mid eq null}"><a class="nav-link2" href="./login"><i class="xi-user xi-2x"></i></a></c:when>
                         <c:otherwise><a class="nav-link2" href="./logout" onclick="return confirm('로그아웃 하시겠습니까?')"><i class="xi-log-out xi-2x"></i></a></c:otherwise>
                        </c:choose>    
              </div>
         </div>

        </div>
      </header>