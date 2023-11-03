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
.fixed-button {
    position: fixed;
    bottom: 50px;
    right: 40px;
    z-index: 999;
}
#scrollToTopBtn{
 position: fixed;
    bottom: 20px;
    right: 40px;
    z-index: 998;
}
</style>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
</head>
<body>
	<h1>board</h1>
		<!-- 페이지 최상단으로 스크롤 이동 버튼 -->
		<button id="scrollToTopBtn">^</button>
	<!-- 필터 버튼 -->
	<button type="button" id="myBtn">필터</button>
	<!-- 필터 버튼 -->

	<!--   검색창  -->

	<form action="./board" method="get" class="search"  id="searchForm">
		<input type="text" name="searchV" required="required" class="searchV">
		<input type="hidden" name="areas" value="${param.areas }"> <input
			type="hidden" name="categories" value="${param.categories }">
		<input type="hidden" name="equipments" value="${param.equipments }">
		<input type="hidden" name="minPrice" value="${param.minPrice }">
		<input type="hidden" name="maxPrice" value="${param.maxPrice }">
		<button type="submit" class="buttonf btn btn-border-d btn-round">검색</button>
    	<button type="button" class="buttonf btn btn-border-d btn-round" id="resetButton">검색 초기화</button>
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


	<button type="button" class="fixed-button" id="writeButton">글쓰기</button>

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
									<input type="checkbox" name="area" value="${n.ano }" data-aname="${n.aname}"> ${n.aname } 
            					</c:forEach>
							</div>

							<div id="tab2" class="tab_content">
								<!--Content-->
								<h1>공간 유형</h1>
								<c:forEach items="${catelist }" var="n" >
									<input type="checkbox" name="category" value="${n.cate}" data-cname="${n.cname }">${n.cname }
								</c:forEach>
							</div>

							<div id="tab3" class="tab_content">
								<!--Content-->
								<h1>가격</h1>
								가격범위 
								<div id="price-slider"></div>
								<label for="min-price">최소 가격:</label>
								<input type="number" id="min-price" name="minPrice" value="0"> 만원 &nbsp;
								<label for="max-price">최대 가격:</label>
								<input type="number" id="max-price" name="maxPrice" value="100" > 만원
								
							</div>

							<div id="tab4" class="tab_content">
								<!--Content-->
								<h1>시설물</h1>
								<c:forEach items="${equiplist }" var="n">
									<input type="checkbox" name="equipment" value="${n.eid }" data-ename="${n.ename }"> ${n.ename }
								</c:forEach>
							</div>
					
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<div id="footer"></div>
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
		let noMoreData = false; 

		//데이터 가져오는 함수
		function getData(limit, searchV, areas, categories, equipments, minPrice,maxPrice) {
			 if (noMoreData) {
			        console.log("No more data available.");
			        return; // 더 이상 데이터를 받아오지 않도록 함수 종료
			    }
			//다음페이지
			
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
										'cate', 'bread', 'addr', 'mid', 'cname'];
								data
										.forEach(function(item) {
											var newRow = "<tr class='row detail'>";
											desiredOrder
													.forEach(function(prop) {
														if (prop === 'realFile') {
															// 'realFile' 속성일 경우 이미지로 표시
															newRow += "<td class='col-4'><div class='imgBox'><img src='/img/places/" + item[prop] + "' alt='Image' style='width: 150px; height: 150px;'><div class='inf2'></div></div></td>";
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
					                noMoreData = true; // 데이터를 더 이상 받아오지 않음을 나타내는 변수를 true로 설정
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
									
									if (noMoreData) {
       								 console.log("No more data available.");
       								 $(document).off("scroll"); // 스크롤 이벤트 제거
    								} else {
									getData(10, "${param.searchV }",
											"${param.areas}",
											"${param.categories}",
											"${param.equipments}",
											"${param.minPrice}",
											"${param.maxPrice}");
    								}
								}
							}

							//현재위치 최신화
							lastScroll = currentScroll;

						});
	</script>
	<!-- 페이지 덧붙이기 스크립트 끝 -->
	
	<!--  모달 필터 관련 스크립트 -->
	<script type="text/javascript">
		/* 모달 내 선택 옵션을 찍어주는 스크립트 + 가격  슬라이더  */
		jQuery(document).ready(function($) {
				/* 모달 열기 스크립트 */ 
				$("#myBtn").on("click", function() {
				$("#test_modal").modal("show");
				});	
				
				/* 모달 내 탭 관련 스크립트 */
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
				/* 모달에서 선택한 옵션을 보내 주는  스크립트 */
				
				$("#applyButton").on("click",function() {
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
				
			
				/* 가격 슬라이더 관련 스크립트 */
				 $("#price-slider").slider({
					    range: true, // 최소와 최대 값 사이의 범위 슬라이더로 설정
					    min: 0,      // 최소 값
					    max: 100,   // 최대 값
					    values: [0, 100], // 초기 값 
					    slide: function(event, ui) {
					        // 슬라이더의 값이 변경될 때마다 호출되는 콜백 함수
					        // 변경된 최소와 최대 값을 각각의 input 요소에 표시
					        $("#min-price").val(ui.values[0]);
					        $("#max-price").val(ui.values[1]);
					        updateSelectedOptions();
					    }
					});
				 
				// 직접 입력 필드의 값이 변경될 때 슬라이더의 값도 업데이트  +	슬라이드의 최소 최대 값을 넘는 입력 막기
				 $("#min-price").on("input", function() {
				     var minPrice = parseInt($(this).val());
				     var maxPrice = parseInt($("#max-price").val());
				     $("#price-slider").slider("values", [minPrice, maxPrice]);
				     updateSelectedOptions();
				 });

				 $("#max-price").on("input", function() {
				     var minPrice = parseInt($("#min-price").val());
				     var maxPrice = parseInt($(this).val());
				     $("#price-slider").slider("values", [minPrice, maxPrice]);
				     updateSelectedOptions();
				 });
			
				 
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
					       
					    }

					    $("#min-price").val(minPrice);
					    $("#price-slider").slider("values", [minPrice, maxPrice]);
					    updateSelectedOptions();
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
					       
					    }

					    $("#max-price").val(maxPrice);
					    $("#price-slider").slider("values", [minPrice, maxPrice]);
					    updateSelectedOptions();
					});
					
			    var selectedOptions = [];
			    const iconHtml = '<i class="fa-solid fa-xmark"></i>';

			    // 각 탭에서 선택된 값들을 가져와서 selectedOptions 배열에 저장하는 함수
			    function updateSelectedOptions() {
			        selectedOptions = [];

			        $("input[name='area']:checked").each(function() {
			            var aname = $(this).data("aname");
			            var optionValue = "area:" + aname;
			            selectedOptions.push("<span data-option-value='" + optionValue + "'>" + aname + iconHtml + "</span>");
			            
			        });

			        $("input[name='category']:checked").each(function() {
			            var cname = $(this).data("cname");
			            var optionValue = "category:" + cname;
			            selectedOptions.push("<span data-option-value='" + optionValue + "'>" + cname + iconHtml + "</span>");
			            
			        });

			        var minPrice = $("#min-price").val();
			        var maxPrice = $("#max-price").val();

			        // 가격이 선택되지 않은 경우에도 표시하기 위해 조건문 추가
			        if (minPrice || maxPrice) {
			        	var optionValue = "price:" + minPrice + "-" + maxPrice;
			        	selectedOptions.push("<span data-option-value='" + optionValue + "'>" + minPrice + "만원 ~ " + maxPrice + "만원" + iconHtml + "</span>");
			            
			        }

			        $("input[name='equipment']:checked").each(function() {
			            var ename = $(this).data("ename");
			            var optionValue = "equipment:" + ename;
			            selectedOptions.push("<span data-option-value='" + optionValue + "'>" + ename + iconHtml + "</span>");
			           
			        });

			        // 선택된 옵션들을 푸터에 표시
			        $("#footer").html(selectedOptions.join("&nbsp;"));
			    }

			    // 가격 입력값이 변경될 때 이벤트 처리
			    $("#min-price, #max-price").change(function() {
			        updateSelectedOptions();
			    });

			    // 각 탭에서 옵션을 선택할 때 발생하는 이벤트 처리
			    $("input[name='area'], input[name='category'], input[name='equipment']").change(function() {
			        updateSelectedOptions();
			    });
			    
			    // 초기화 버튼을 누르면  선택한 옵션이 철회 됩니다 .
			    
			    $(document).on("click", "#resetButton", function() {
				    $("input[name='area']").prop("checked", false);
			        $("input[name='category']").prop("checked", false);
			        $("input[name='equipment']").prop("checked", false);
			        
			        // 가격 슬라이더의 값을 초기값으로 설정
			        $("#min-price").val(0);
			        $("#max-price").val(100);
			        $("#price-slider").slider("values", [0, 100]);
			        
			        // 선택된 옵션을 업데이트
			        updateSelectedOptions();
			    });
			    
			  /*  여기 고장남 지금 해당 마크를 클릭해도 지워지지 않음 주의주의주의   1103 1750
			     */
			    
			    $(document).on("click", "#test_modal .fa-xmark", function(event) {
			        event.stopPropagation();
			        var optionValue = $(this).closest('span').data("option-value");
			        console.log("Clicked option value: " + optionValue); // 클릭한 옵션과 관련된 데이터

			        // 배열에서 해당 값이 존재하는지 확인
			        var optionIndex = selectedOptions.findIndex(function(item) {
			            return $(item).data("option-value") === optionValue;
			        });
			        console.log("Option index: " + optionIndex);

			        // 선택된 옵션 업데이트 및 해당 값이 존재할 경우 제거
			        if (optionIndex !== -1) {
			            selectedOptions.splice(optionIndex, 1);
			            updateSelectedOptions();

			            // 클릭한 아이콘과 연결된 특정 <span> 요소를 화면에서 제거
			            $(this).closest('span').remove();
			        }
			    });

			}); 
	 
</script>

<script>
// 문서가 로드된 후에 실행되도록 이벤트 핸들러 등록
document.addEventListener("DOMContentLoaded", function() {
    // 초기화 버튼에 클릭 이벤트 핸들러 등록
    document.getElementById("resetButton").addEventListener("click", function() {
        // searchV 필드 초기화
        document.getElementsByName("searchV")[0].value = "";
        // 검색 폼 제출
        document.getElementById("searchForm").submit();
    });
});

let id = "${sessionScope.mid}";

$(document).scroll(function() {
    // 스크롤 위치가 일정 이상 내려갔을 때 버튼을 보이게 하기
    if ($(this).scrollTop() > 100) {
        $("#scrollToTopBtn").fadeIn();
    } else {
        $("#scrollToTopBtn").fadeOut();
    }
});

// 최상단으로 스크롤 이동 버튼 클릭 이벤트 핸들러
$("#scrollToTopBtn").click(function() {
    // 스크롤 위치를 최상단으로 이동시킴 (1초 동안 부드럽게 스크롤 이동)
    $("html, body").animate({ scrollTop: 0 }, 1000);
});

$("#writeButton").click(function() {
	if(id == null || id == "" ){
		alert("글을 작성하시려면 로그인이 필요합니다");
		
		return false;
	}

    location.href = '/bwrite'; // 이동할 페이지의 URL로 수정하세요.
});
</script>


</body>
</html>