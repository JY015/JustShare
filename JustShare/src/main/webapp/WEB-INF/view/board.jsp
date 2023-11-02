<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.row detail{
	width: 100%;
	}

img {
	height: 150px;
	width: 150px;
}
</style>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
</head>
<body>
	<h1>board</h1>

	<!-- 필터 버튼 -->
	<button type="button" id="myBtn">필터</button>
	<!-- 필터 버튼 -->

	<!--   검색창  -->

	<form action="./board" method="get" class="search">
		<input type="text" name="searchV" required="required" class="searchV">
		<input type="hidden" name="areas" value="${param.areas }"> <input
			type="hidden" name="categories" value="${param.categories }">
		<input type="hidden" name="equipments" value="${param.equipments }">
		<input type="hidden" name="minPrice" value="${param.minPrice }">
		<input type="hidden" name="maxPrice" value="${param.maxPrice }">
		
		<button type="submit" class="buttonf btn btn-border-d btn-round">검색</button>
	</form>
	<!--   검색창  -->

	<!-- 리스트 -->
	<table class="tableContainer" id="tableContainer">
		<thead>
			<tr class="row">
				<td class="col-4">사진</td>
				<th class="col-2 ">제목</th>
				<th class="col-2 bb">날짜</th>
				<th class="col-1 bb">글쓴이</th>
				<th class="col-1 bb">가격</th>
				<th class="col-1 bb">태그</th>
				<th class="col-1 bb">조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="row">
				<tr class="row detail"  data-bno="${row.bno}">
					<td class="col-4"><img src="/img/places/${row.realFile}">
					&nbsp;</td>
					<td class="col-2" onclick="location.href='./bdetail?bno=${row.bno}'">${row.btitle }&nbsp;</td>
					<td class="col-2 bb">${row.bdate }</td>
					<td class="col-1 bb">${row.mid }</td>
					<td class="col-1 bb">${row.bprice }</td>
					<td class="col-1 bb">${row.cname }</td>
					<td class="col-1 bb">${row.bread }</td>

				</tr>
			</c:forEach>
		</tbody>
	</table>
	<!-- 리스트 -->


	<button type="button" onclick="location.href='/bwrite'">글쓰기</button>

	<!-- 모달창 -->
	<div class="modal fade" id="test_modal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">필터</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">

					<div id="wrapper">
						<!--탭 메뉴 영역 -->
						<ul class="tabs">
							<li><a href="#tab1">지역</a></li>
							<li><a href="#tab2">공간유형</a></li>
							<li><a href="#tab3">가격</a></li>
							<li><a href="#tab4">시설물</a></li>
						</ul>


						<!--탭 콘텐츠 영역 -->
						<div class="tab_container">

							<div id="tab1" class="tab_content">
								<!--Content-->
								<h1>지역</h1>
								<c:forEach items="${areaList }" var="n">
									<input type="checkbox" name="area" value="${n.ano }"> ${n.aname } 
            					</c:forEach>
							</div>

							<div id="tab2" class="tab_content">
								<!--Content-->
								<h1>공간 유형</h1>
								<c:forEach items="${catelist }" var="n">
									<input type="checkbox" name="category" value="${n.cate}">${n.cname }
								</c:forEach>
							</div>

							<div id="tab3" class="tab_content">
								<!--Content-->
								<h1>가격</h1>
								가격범위 
								<div id="price-slider"></div>
								<label for="min-price">최소 가격:</label>
								<input type="number" id="min-price" name="minPrice" value="0"  > 만원 &nbsp;
								<label for="max-price">최대 가격:</label>
								<input type="number" id="max-price" name="maxPrice" value="100" > 만원
								<!-- 여기 입력값 최대값 최소값 설정하기  -->
							</div>

							<div id="tab4" class="tab_content">
								<!--Content-->
								<h1>시설물</h1>
								<c:forEach items="${equiplist }" var="n">
									<input type="checkbox" name="equipment" value="${n.eid }"> ${n.ename }
								</c:forEach>
							</div>

						</div>
					</div>
				</div>
					<div id="footer"></div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" id="resetButton">초기화</button>
					<button type="button" class="btn btn-primary" id="applyButton">적용</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 모달 끝  -->



	<!-- 페이지 덧붙이기 스크립트 -->
	<script type="text/javascript">
		//현재 스크롤 위치 저장
		let lastScroll = 0;
		let page = 0;
		let nowPageLimit = 0;
		let nextPageLimit = 0;

		//데이터 가져오는 함수
		function getData(limit, searchV, areas, categories, equipments, minPrice,maxPrice) {

			//다음페이지
			const likeList = ${isLikeList};
			nextPageLimit = (page + 1) * limit;
			page = page + 1;

			$
					.ajax({
						type : "post",
						url : "/board",
						dataType : "json",
						data : {
							"nextPageLimit" : nextPageLimit,
							"limit" : limit,
							"searchV" : searchV,
							"areas" : areas,
							"categories" : categories,
							"equipments" : equipments,
							"minPrice" : minPrice,
							"maxPrice" : maxPrice
						},
						success : function(data) {
							// 성공적으로 응답을 받았을 때 처리
							if (data && data.length > 0) {
								// 테이블 내용 생성
								var desiredOrder = [ 'realFile', 'btitle',
										'bno', 'bprice', 'bcontent', 'bdate',
										'cate', 'bread', 'addr', 'mid', 'cname','isLiked' ];
								data
										.forEach(function(item) {
											var newRow = "<tr class='row detail' data-bno="+item.bno +" data-liked="+item.isLiked+">";
											desiredOrder
													.forEach(function(prop) {
														if (prop === 'realFile') {
															// 'realFile' 속성일 경우 이미지로 표시
															newRow += "<td class='col-4'><div class='imgBox'><img src='/img/places/" + item[prop] + "' alt='Image' style='width: 150px; height: 150px;'><div class='inf2'><i class=\"" + (item.isLiked == 1 ? 'fas' : 'far') + " fa-heart heart-icon\" style='color:red'></i></div></div></td>";
														} else if(prop =='btitle'){newRow += "<td >"
															+ item[prop]
														+ "</td>";
															
														}else {
															// 다른 속성은 텍스트로 표시
															newRow += "<td onclick=\"location.href='./bdetail?bno="
																+ item.bno + "'\">"
																	+ item[prop]
																	+ "</td>";
														}
													});
											newRow += "</tr>";

											// 테이블의 tbody에 새로운 행 추가	
											$("#tableContainer tbody").append(
													newRow);
										});

								
								} else {
								// 더 이상의 데이터가 없음을 나타내는 메시지 출력
								console.log("No more data available.");
							}

						},
						error : function(xhr, status, error) {
							// 에러 발생 시 처리
							console.error("Error occurred: " + error);
						}
					});

		}

		$(document)
				.scroll(
						function(e) {
							console.log("스크롤 이벤트 발생 !");

							//현재 높이 저장
							var currentScroll = $(this).scrollTop();
							//전체 문서의 높이
							var documentHeight = $(document).height();

							//(현재 화면상단 + 현재 화면 높이)
							var nowHeight = $(this).scrollTop()
									+ $(window).height();

							//스크롤이 아래로 내려갔을때만 해당 이벤트 진행.
							if (currentScroll > lastScroll) {

								//nowHeight을 통해 현재 화면의 끝이 어디까지 내려왔는지 파악가능 
								//즉 전체 문서의 높이에 일정량 근접했을때 글 더 불러오기)
								if (documentHeight < (nowHeight + (documentHeight * 0.1))) {
									//함수콜
									getData(10, "${param.searchV }",
											"${param.areas}",
											"${param.categories}",
											"${param.equipments}",
											"${param.minPrice}",
											"${param.maxPrice}");

								}
							}

							//현재위치 최신화
							lastScroll = currentScroll;

						});
	</script>
	<!-- 페이지 덧붙이기 스크립트 끝 -->
	
	<!--  모달 필터 관련 스크립트 -->
	<script type="text/javascript">
		
	
		$(document).ready(function() {
			$("#myBtn").on("click", function() {
				$("#test_modal").modal("show");
			});
		});

		$(document).ready(function() {

			
			$(".tab_content").hide(); 
			$("ul.tabs li:first").addClass("active").show(); 
			$(".tab_content:first").show(); 

			
			$("ul.tabs li").click(function() {

				$("ul.tabs li").removeClass("active"); 
				$(this).addClass("active"); 
				$(".tab_content").hide(); 

				var activeTab = $(this).find("a").attr("href"); 
				$(activeTab).fadeIn(); 
				return false;
			});

		});

		$("#resetButton").on("click", function() {
			// 지역, 공간 유형, 시설물 체크박스들의 체크 상태를 해제
			$("input[name='area']").prop("checked", false);
			$("input[name='category']").prop("checked", false);
			$("input[name='equipment']").prop("checked", false);
		});

		//적용 버튼 클릭 이벤트 처리   동기 

		/* $("#applyButton").on("click", function() {
		 // 선택한 값들을 수집
		 var selectedAreas = $("input[name='area']:checked").map(function() {
		 return $(this).val();
		 }).get();
		
		 alert(selectedAreas)
		
		 var selectedCategories = $("input[name='category']:checked").map(function() {
		 return $(this).val();
		 }).get();
		
		 var selectedEquipments = $("input[name='equipment']:checked").map(function() {
		 return $(this).val();
		 }).get();



		 // AJAX 요청을 통해 서버로 데이터 전송
		 $.ajax({
		 type: "POST",
		 url: "/boardFilter", // 서버 엔드포인트 URL을 입력하세요
		 dataType: "json",
		 contentType: "application/json", // JSON 형식의 데이터를 보낸다고 명시
		 data: JSON.stringify({
		 areas: selectedAreas,
		 categories: selectedCategories,
		 equipments: selectedEquipments
		 }),
		 success: function(response) {
		 // 성공적으로 응답을 받았을 때 수행할 동작
		 console.log("데이터 전송 성공");
		 },
		 error: function(error) {
		 // 오류가 발생했을 때 수행할 동작
		 console.error("데이터 전송 실패", error);
		 }
		 });
		 }); */
		
		 $("#applyButton")
				.on(
						"click",
						function() {
							// 선택한 값들을 수집
							var selectedAreas = $("input[name='area']:checked")
									.map(function() {
										return $(this).val();
									}).get();

							var selectedCategories = $(
									"input[name='category']:checked").map(
									function() {
										return $(this).val();
									}).get();

							var selectedEquipments = $(
									"input[name='equipment']:checked").map(
									function() {
										return $(this).val();
									}).get();
							
						    var minPrice = ($("#min-price").val() * 10000);
						    var maxPrice = ($("#max-price").val() * 10000);
						    
							// 선택한 값들을 URL 파라미터로 추가
							var queryString = "?searchV=${param.searchV}"
									+ "&areas=" + selectedAreas.join(",")
									+ "&categories="
									+ selectedCategories.join(",")
									+ "&equipments="
									+ selectedEquipments.join(",")
									+ "&minPrice=" + minPrice
					        		+ "&maxPrice=" + maxPrice;
									
							// 현재 페이지 URL에 파라미터를 추가한 뒤 리다이렉트
							window.location.href = window.location.pathname
									+ queryString;
						});
		 
		 
		 $("#price-slider").slider({
			    range: true, // 최소와 최대 값 사이의 범위 슬라이더로 설정
			    min: 0,      // 최소 값
			    max: 100,   // 최대 값
			    values: [0, 100], // 초기 값 (최소와 최대 값)
			    slide: function(event, ui) {
			        // 슬라이더의 값이 변경될 때마다 호출되는 콜백 함수
			        // 변경된 최소와 최대 값을 각각의 input 요소에 표시
			        $("#min-price").val(ui.values[0]);
			        $("#max-price").val(ui.values[1]);
			    }
			});
		 
		// 직접 입력 필드의 값이 변경될 때 슬라이더의 값도 업데이트
		 $("#min-price").on("input", function() {
		     var minPrice = parseInt($(this).val());
		     var maxPrice = parseInt($("#max-price").val());
		     $("#price-slider").slider("values", [minPrice, maxPrice]);
		 });

		 $("#max-price").on("input", function() {
		     var minPrice = parseInt($("#min-price").val());
		     var maxPrice = parseInt($(this).val());
		     $("#price-slider").slider("values", [minPrice, maxPrice]);
		 });
	
	/* 	슬라이드의 최소 최대 값을 넘는 입력 막기  */
		 
		 $("#min-price").on("input", function() {
			    var minPrice = parseInt($(this).val());
			    var maxPrice = parseInt($("#max-price").val());
			    var sliderMaxValue = $("#price-slider").slider("option", "max");

			    if (minPrice < 0) {
			        minPrice = 0;
			    } else if (minPrice > sliderMaxValue) {
			        minPrice = sliderMaxValue;
			    }

			    if (minPrice > maxPrice) {
			        maxPrice = minPrice;
			        $("#max-price").val(maxPrice);
			    }

			    $("#min-price").val(minPrice);
			    $("#price-slider").slider("values", [minPrice, maxPrice]);
			});

			$("#max-price").on("input", function() {
			    var minPrice = parseInt($("#min-price").val());
			    var maxPrice = parseInt($(this).val());
			    var sliderMaxValue = $("#price-slider").slider("option", "max");

			    if (maxPrice < 0) {
			        maxPrice = 0;
			    } else if (maxPrice > sliderMaxValue) {
			        maxPrice = sliderMaxValue;
			    }

			    if (maxPrice < minPrice) {
			        minPrice = maxPrice;
			        $("#min-price").val(minPrice);
			    }

			    $("#max-price").val(maxPrice);
			    $("#price-slider").slider("values", [minPrice, maxPrice]);
			});
			
			/* 모달에서 선택한 옵션 보여주기  */
			
		$(document).ready(function() {
    // 선택된 옵션을 저장할 배열
    var selectedOptions = [];

    // 각 탭에서 옵션을 선택할 때 발생하는 이벤트 처리
    $("input[name='area'], input[name='category'], input[name='equipment']").change(function() {
        selectedOptions = []; // 배열 초기화
        // 각 탭에서 선택된 값들을 가져와서 selectedOptions 배열에 저장
        $("input[name='area']:checked").each(function() {
            selectedOptions.push("지역: " + $(this).next().text().trim());
        });

        $("input[name='category']:checked").each(function() {
            selectedOptions.push("공간 유형: " + $(this).next().text().trim());
        });

        var minPrice = $("#min-price").val();
        var maxPrice = $("#max-price").val();
        selectedOptions.push("가격: " + minPrice + "만원부터 " + maxPrice + "만원까지");

        $("input[name='equipment']:checked").each(function() {
            selectedOptions.push("시설물: " + $(this).next().text().trim());
        });

        // 선택된 옵션들을 푸터에 표시
        $("#footer").html(selectedOptions.join("<br>"));
    });

    // 초기화 버튼 클릭 시
    $("#resetButton").click(function() {
        // 선택된 옵션 초기화
        $("input[type='checkbox']").prop("checked", false);
        $("#min-price").val(0);
        $("#max-price").val(100);

        // 선택된 옵션 푸터에서 제거
        $("#footer").empty();
    });
});
	 
</script>



</body>
</html>