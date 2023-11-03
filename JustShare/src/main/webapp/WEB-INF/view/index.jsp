<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
       
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/index.css" rel="stylesheet" />
       
        <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">  

    </head>
    <body>
        <!-- Navigation-->   
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <img alt="login" src="./img/JustShare.png" width="15%;">
        <div style="text-align:right;">
            <div class="container px-4 px-lg-5">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="./">Home</a></li>
         
                         <c:choose>
                         <c:when test="${sessionScope.mname eq null}"><li class="nav-item"><a class="nav-link" href="./login">로그인</a></li></c:when>
                         <c:otherwise><li class="nav-item"><a class="nav-link" href="./logout" onclick="return confirm('로그아웃 하시겠습니까?')">로그아웃</a></li></c:otherwise>
                        </c:choose>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#!">All Products</a></li>
                                <li><hr class="dropdown-divider" /></li>
                                <li><a class="dropdown-item" href="#!">Popular Items</a></li>
                                <li><a class="dropdown-item" href="#!">New Arrivals</a></li>
                            </ul>
                        </li>
                    </ul>
                    <form class="d-flex">
                        <button class="btn btn-outline-dark" type="submit">
                            <i class="bi-cart-fill me-1"></i>
                            Cart
                            <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                        </button>
                    </form>
                </div>
            </div>
            </div>
        </nav>
        <!-- Header-->
        <header class="bg-dark py-5">
        
          
				<div class="swiper mySwiper1">
					<ul class="swiper-wrapper">
						 <c:forEach items="${bannerlist }" var="row">
						<div class="swiper-slide">
						
						
									
										<img src="./img/banner/${row.baimg }" style= "width: 50%" alt="배너이미지"/>
							
								
							
						</div>
							</c:forEach> 
					</ul>
				</div>
				
	
        </header>
        <br>
                 
  <style>
    .category-container {
      display: grid;
      grid-template-columns: repeat(4, 17%);
      gap: 20xp;
      justify-content: center;
    }
    .grid-item {
      display: none;
      text-align: center;
    }
    .all-category-container{
    text-align: center;
    }
 

.banner_title{
	color: black;
	font: 600 35px/1.3 "NanumBarunGothic"
}

.swiper-slide {
	text-align:center;
	display:flex; /* 내용을 중앙정렬 하기위해 flex 사용 */
	align-items:center; /* 위아래 기준 중앙정렬 */
	justify-content:center; /* 좌우 기준 중앙정렬 */
}
.swiper-slide img {
	box-shadow:0 0 5px #555;
	max-width:100%; /* 이미지 최대너비를 제한, 슬라이드에 이미지가 여러개가 보여질때 필요 */
	/* 이 예제에서 필요해서 설정했습니다. 상황에따라 다를 수 있습니다. */
}


    
  </style>
</head>
<body>

  <div class="all-category-container">	
  <button data-category="all">전체</button>
  <button data-category="commercial">상업</button>
  <button data-category="studio">스튜디오</button>
  <button data-category="culture">문화</button>
  <button data-category="business">업무</button>
  </div>
  <br><br>
  <div class="category-container">		
    <div class="category commercial"><a href="cafe">카페</a></div>
    <div class="category commercial"><a href="cafe">식당</a></div>
    <div class="category commercial"><a href="cafe">술집</a></div>
    <div class="category commercial"><a href="cafe">공방</a></div>
    
    <div class="category studio"><a href="cafe">연습실</a></div>
    <div class="category studio"><a href=cafe>녹음실</a></div>
    <div class="category studio"><a href="cafe">파티룸</a></div>
    <div class="category studio"><a href="cafe">세트장</a></div>  
      
    <div class="category business"><a href="cafe">사무실</a></div>
    <div class="category business"><a href="cafe">오피스텔</a></div>
    <div class="category business"><a href="cafe">강당</a></div>
    <div class="category business"><a href="cafe">기타</a></div>
    
    <div class="category culture"><a href="cafe">갤러리</a></div>
    <div class="category culture"><a href="cafe">공연장</a></div>
  </div>
  <script>
  
  showCategory("all");
  
    $("button").click(function() {
      var category = $(this).data("category");
      showCategory(category);
    });

    function showCategory(category) {
      $(".category").hide();
      if (category === 'all') {
        showAllItems();
      } else {
        $(".category." + category).show();
      }
    }

    function showAllItems() {
      $(".category").show();
    }
  </script>
   <script src="js/swipeScript1.js"></script>
<br>
       
        
        <!-- <section class="py-5"> -->
        <h1>  최신순</h1>
<div class="swiper mySwiper">
      <div class="swiper-wrapper">
       <c:forEach items="${imageD }" var="row" varStatus="loop">
       
        <div class="swiper-slide">
        <a href="./bdetail?bno=${row.bno}"><img src="/img/places/${row.realFile}" class="bestimg"/>
        
        </a>
        </div>
    </c:forEach>
 
      </div>
</div>

  <h1> 조회수 높은순</h1>
<div class="swiper mySwiper">
      <div class="swiper-wrapper">
       <c:forEach items="${imageC }" var="row" varStatus="loop">
       
        <div class="swiper-slide">
        <a href="./bdetail?bno=${row.bno}"><img src="/img/places/${row.realFile}" class="bestimg"/>
        
        </a>
        </div>
    </c:forEach>
 
      </div>
</div>
    <!-- </section> -->


        
           <!-- Footer-->
<%@ include file="footer.jsp" %> 
       
        <!-- Bootstrap core JS-->    
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->     
        <script src="js/scripts.js"></script>
           
         <script src="js/swipeScript2.js"></script>
 
    </body>

</html>