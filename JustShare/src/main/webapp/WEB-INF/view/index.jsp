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
                    </ul>
                </div>
            </div>
            </div>
        </nav>
        <!-- Header-->
        <header class="bg-dark py-5">
        
           <div class="welcome_banner_inner">
				<div class="swiper-container">
					<ul class="swiper-wrapper">
						<c:forEach items="${bannerlist }" var="row">
						<div class="swiper-slide" style="margin-left: 13%; width: 90">
									<div class="col-sm-12">
										<img src="../img/banner/${row.baimg }" style="" alt="배너이미지"/>
									</div>	
						</div>
							</c:forEach>
					</ul>
				</div>
			</div>
        </header><br>
                 
  <style>
   .all-category-container {
    text-align: center;
  }

  .all-category-container button {
    background-color: #007BFF;
    color: white;
    padding: 10px 20px;
    border: none;
    cursor: pointer;
    margin: 5px;
  }

  .category-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
  }

  .category {
    background-color: #f2f2f2;
    border: 1px solid #ddd;
    margin: 10px;
    padding: 10px;
    text-align: center;
  }

  .category a {
    text-decoration: none;
    color: #007BFF;
    font-weight: bold;
  }
  

.banner_title{
	color: black;
	font: 600 35px/1.3 "NanumBarunGothic"
}

.swiper-container {
  display: flex;
  justify-content: center;
  align-items: center;

}

.swiper-slide {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100%; 
  height: 100%; 
}
.swiper-slide img {
  max-width: 100%;
  max-height: 100%;
} 
  </style>
</head>
<body>
 <div class="all-category-container">	
  <button data-category="all">전체</button>
  <img class="commercial" alt="commercial" src="./img/category/commercial.png" width="5%;" height="5%;">
  <img class="studio" alt="studio" src="./img/category/studio.png" width="5%;" height="5%;">
  <img class="culture" alt="culture" src="./img/category/culture.png" width="5%;" height="5%;">
  <img class="business" alt="business" src="./img/category/business.png" width="5%;" height="5%;">
  <!-- <button data-category="business">업무</button> -->
  </div> 
  <br><br>
  <div class="category-container">

	<div class="category commercial"><a href="cafe"> ${cateList[0].cname }</a></div>
 	<div class="category commercial"><a href="cafe"> ${cateList[1].cname }</a></div>
    <div class="category commercial"><a href="cafe"> ${cateList[2].cname }</a></div>
    <div class="category commercial"><a href="cafe">${cateList[7].cname }</a></div>
    <div class="category studio"><a href="cafe">${cateList[3].cname }</a></div>
    <div class="category studio"><a href=cafe>${cateList[4].cname }</a></div>
    <div class="category studio"><a href="cafe">${cateList[5].cname }</a></div>
    <div class="category studio"><a href="cafe">${cateList[6].cname }</a></div>  
      
    <div class="category business"><a href="cafe">${cateList[11].cname }</a></div>
    <div class="category business"><a href="cafe">${cateList[12].cname }</a></div>
    <div class="category business"><a href="cafe">${cateList[8].cname }</a></div>
    
    <div class="category culture"><a href="cafe">${cateList[9].cname }</a></div>
    <div class="category culture"><a href="cafe">${cateList[10].cname }</a></div>
  </div> 
 
 <script>
  var swiper = new Swiper('.swiper-container', {
	  direction: 'horizontal',
	  centeredSlides: true,
	  loop: true,
	  pagination: {
	    el: '.swiper-pagination',
	    clickable: true,
	  },
	  autoplay: {
	    delay: 2500,
	    disableOnInteraction: false,
	  },
	  // 추가 옵션들...
	  spaceBetween: 10, // 슬라이드 사이의 간격 설정
	});
  

  $(".commercial, .business, .studio, .culture").click(function () {
	    var category = $(this).attr("class");
	    showCategory(category);
	  });

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
<br>
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                             <img class="card-img-top" alt="login" src="./img/mara.jpeg" width="15%;">
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">하우마라탕</h5>
                                    <!-- Product price-->
                                    서울시 강남구 테헤란로<br>
                                    <p style="color: blue;">#10월 27일 #식당</p>
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="login">보기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Special Item</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">$20.00</span>
                                    $18.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Sale Item</h5>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">$50.00</span>
                                    $25.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Popular Item</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    $40.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Sale Item</h5>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">$50.00</span>
                                    $25.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Fancy Product</h5>
                                    <!-- Product price-->
                                    $120.00 - $280.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View options</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Special Item</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">$20.00</span>
                                    $18.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Popular Item</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    $40.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
           <!-- Footer-->
<%@ include file="footer.jsp" %> 
       
        <!-- Bootstrap core JS-->    
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->     
        <script src="js/scripts.js"></script>
           
 
    </body>

</html>