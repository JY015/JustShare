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
        <title>메인 페이지 </title>
     
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
                         <c:when test="${sessionScope.mid eq null}"><li class="nav-item"><a class="nav-link" href="./login"><i class="xi-user">로그인</i></a></li></c:when>
                         <c:otherwise><li class="nav-item"><a class="nav-link" href="./logout" onclick="return confirm('로그아웃 하시겠습니까?')"><i class="xi-log-out">로그아웃</i></a></li></c:otherwise>
                        </c:choose>                 
                    </ul>
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

   .all-category-container {
     display: flex;
    flex-direction: row;
    justify-content: center;
    font: 600 15px/1.3 "NanumBarunGothic";
    text-align: center; 
  }
  .category-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
  }
   .category-item {
        flex-direction: column;
        text-align: center;
        margin: 0 10px; 
    }

  .category img {
        cursor: pointer; 
    }

	.category {
        display: inline-block;
        margin-right: 10px; 
        text-align: center;
    }
    
	.entire-cate{
	text-align: center;
	font: 600 15px/1.3 "NanumBarunGothic"
	}    

.banner_title{
	color: black;
	font: 600 35px/1.3 "NanumBarunGothic"
}

.swiper-slide {
	text-align:center;
	display:flex; 
	align-items:center; 
	justify-content:center; 
}
.swiper-slide img {
	box-shadow:0 0 5px #555;
	max-width:100%; 
}
  </style>
</head>
<body>

<div class="all-category-container">
    <div class="category-item"><img class="all" alt="all" src="./img/category/all.png"><p>전체</p></div>
    <div class="category-item"><img class="commercial" alt="commercial" src="./img/category/commercial.png"><p>상업</p></div>
	<div class="category-item"><img class="studio" alt="studio" src="./img/category/studio.png"><p>스튜디오</p></div>
    <div class="category-item"><img class="culture" alt="culture" src="./img/category/culture.png"><p>문화</p></div>    
    <div class="category-item"><img class="business" alt="business" src="./img/category/business.png"><p>업무</p></div>
    </div>
    <hr>

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

  
  document.addEventListener('DOMContentLoaded', function () {
		
		//세션에 저장된 count를 storage에 저장
		sessionStorage.setItem("mid",  "<%=session.getAttribute("mid")%>" );
		
		
		const mid = sessionStorage.getItem("mid"); 	
		  alert(mid);
		
  });

  let mid = "${sessionScope.mid}"


  showCategory("all");
  
    $("button").click(function() {
      var category = $(this).data("category");
      showCategory(category);
    });

<div class="entire-cate">
<div class="category commercial"><img alt="cafe" src="./img/category/cafe.png"><p>${cateList[0].cname }</p></div>
<div class="category commercial"><img alt="food" src="./img/category/food.png"><p>${cateList[1].cname }</p></div>
<div class="category commercial"><img alt="drink" src="./img/category/drink.png"><p>${cateList[2].cname }</p></div>
<div class="category commercial"><img alt="else" src="./img/category/else.png"><p>${cateList[7].cname }</p></div>
<div class="category studio"><img alt="practice" src="./img/category/practice.png"><p>${cateList[3].cname }</p></div>
<div class="category studio"><img alt="rec" src="./img/category/rec.png"><p>${cateList[4].cname }</p></div>
<div class="category studio"><img alt="party" src="./img/category/party.png"><p>${cateList[5].cname }</p></div>
<div class="category studio"><img alt="set" src="./img/category/set.png"><p>${cateList[6].cname }</p></div>
<div class="category studio"><img alt="auditorium" src="./img/category/auditorium.png"><p>${cateList[8].cname }</p></div>
<div class="category business"><img alt="office" src="./img/category/office.png"><p>${cateList[11].cname }</p></div>
<div class="category business"><img alt="officetels" src="./img/category/officetels.png"><p>${cateList[12].cname }</p></div>
<div class="category culture"><img alt="gallery" src="./img/category/gallery.png"><p>${cateList[9].cname }</p></div>
<div class="category culture"><img alt="concert" src="./img/category/concert.png"><p>${cateList[10].cname }</p></div>
</div>
 <hr>
 <script>
  $(".commercial, .business, .studio, .culture").click(function () {
	    var category = $(this).attr("class");
	    showCategory(category);
	  });


	  $(".all").click(function() {
	    showCategory('all');
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
<%@ include file="footer2.jsp" %>        
        <!-- Bootstrap core JS-->    
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->     
        <script src="js/scripts.js"></script>
           
         <script src="js/swipeScript2.js"></script>
 
    </body>

</html>