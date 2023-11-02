<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>메인 페이지</title>
         <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
      <!-- Swiper -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>       
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/index.css" rel="stylesheet" />       
        <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">  
    </head>
<style>

</style>
<body>
       <!-- Navigation-->    
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <img alt="logo" src="./img/JustShare.png" width="15%;">
        <div style="text-align:right;">
            <div class="container px-4 px-lg-5">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="./">Home</a></li>
         
                         <c:choose>
                         <c:when test="${sessionScope.mname eq null}"><li class="nav-item"><a class="nav-link" href="./login"><i class="xi-user">로그인</i></a></li></c:when>
                         <c:otherwise><li class="nav-item"><a class="nav-link" href="./logout" onclick="return confirm('로그아웃 하시겠습니까?')"><i class="xi-log-out">로그아웃</i></a></li></c:otherwise>
                        </c:choose>                 
                    </ul>
                </div>
            </div>
            </div>
        </nav>
</body>
</html>