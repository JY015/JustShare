<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
<head>
  <title>카테고리 필터</title>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <style>
    .category-container {
      display: grid;
      grid-template-columns: repeat(4, 17%);
      gap: 20px;
      justify-content: center;
    }

    .grid-item {
      display: none;
      text-align: center;
    }
  </style>
</head>
<body>
	
  <button data-category="all">전체</button>
  <button data-category="commercial">상업</button>
  <button data-category="studio">스튜디오</button>
  <button data-category="culture">문화</button>
  <button data-category="business">업무</button>
	

  <div class="category-container">
    <div class="category commercial"><a href="cafe">카페</a></div>
    <div class="category commercial"><a href="cafe">식당</a></div>
    <div class="category commercial"><a href="cafe">술집</a></div>
    <div class="category commercial"><a href="cafe">연습실</a></div>
    <div class="category studio"><a href=cafe>녹음실</a></div>
    <div class="category studio"><a href="cafe">파티룸</a></div>
    <div class="category studio"><a href="cafe">세트장</a></div>
    <div class="category studio"><a href="cafe">기타</a></div>
    <div class="category culture"><a href="cafe">공방</a></div>
    <div class="category culture"><a href="cafe">사무실</a></div>
    <div class="category culture"><a href="cafe">오피스텔</a></div>
    <div class="category culture"><a href="cafe">강당</a></div>
    <div class="category business"><a href="cafe">갤러리</a></div>
    <div class="category business"><a href="cafe">공연장</a></div>
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
</body>
</html>
