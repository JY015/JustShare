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
.selectBoxList button {
    display: block;
    width: 5%;
    margin-bottom: 10px; /* 버튼 간의 간격을 조절할 수 있는 마진 값을 설정합니다. */
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
<%@ include file="header.jsp"%>
<body>
	<h1>board</h1>
		<!-- 페이지 최상단으로 스크롤 이동 버튼 -->
		<button id="scrollToTopBtn">^</button>
	<!-- 필터 버튼 -->
	<button type="button" id="myBtn">필터</button>
	<!-- 필터 버튼 -->
	<!-- 분류버튼 -->
	<div class="selectBox">
	<button type="button" id="selectBtn" class="selectBtn">여기가 sort값에 따라 변해야함 + 이미지  이거누르면 리스트가 보이게 </button>
	<div class="selectBoxList">
		<button type="button" class="sort1">최신</button>
		<button type="button" class="sort2">좋아요</button>
		<button type="button" class="sort3">조회수</button>
		<button type="button" class="sort4">낮은 가격</button>
		<button type="button" class="sort5">높은 가격</button>
	</div>
	</div>
	<!-- 분류버튼 -->
	
	<!--   검색창  -->

	<form action="./board" method="get" class="search"  id="searchForm">
		<input type="text" name="searchV" required="required" class="searchV">
		<input type="hidden" name="areas" value="${param.areas }"> <input
			type="hidden" name="categories" value="${param.categories }">
		<input type="hidden" name="equipments" value="${param.equipments }">
		<input type="hidden" name="minPrice" value="${param.minPrice }">
		<input type="hidden" name="maxPrice" value="${param.maxPrice }">
		<input type="hidden" name="sort" value="${param.sort }">
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
						<div class="inf2">  
       					<c:choose>
						<c:when test="${row.isLiked eq 1  }">     
						<span><i class="fas fa-heart" style='color:red'></i> 찜 </span>
						</c:when>
						<c:otherwise>
						<span><i class="far fa-heart" ></i> 찜 </span>
						</c:otherwise>
						</c:choose>  	
						<span class="likes_count" data-count=${row.likesCount } >${row.likesCount }</span>
        				</div>
					
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
									<input type="checkbox" id="area_${n.ano}" name="area" value="${n.ano }" data-aname="${n.aname}"> ${n.aname } 
            					</c:forEach>
							</div>

							<div id="tab2" class="tab_content">
								<!--Content-->
								<h1>공간 유형</h1>
								<c:forEach items="${catelist }" var="n" >
									<input type="checkbox" id="cate_${n.cate }" name="category" value="${n.cate}" data-cname="${n.cname }">${n.cname }
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
									<input type="checkbox" name="equipment" id="equip_${n.eid }" value="${n.eid }" data-ename="${n.ename }"> ${n.ename }
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
		function getData(limit, searchV, areas, categories, equipments, minPrice,maxPrice,sort) {
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
							"maxPrice" : maxPrice,
							"sort":sort
						},
						success: function(data) {
						    if (data && data.length > 0) {
						        data.forEach(function(item) {
						            var newRow = "<tr class='row detail' data-bno=" + item.bno + ">";
						            var isLikedIcon = item.isLiked === 1 ? "<i class='fas fa-heart' style='color:red'></i>" : "<i class='far fa-heart'></i>";
						            newRow += "<td class='col-4'><img src='/img/places/" + item.realFile + "' alt='Image' style='width: 150px; height: 150px;'><div class='inf2'><span>" + isLikedIcon + " 찜</span><span class='likes_count' data-count=" + item.likesCount + ">" + item.likesCount + "</span></div></td>";
						            newRow += "<td>" + item.btitle + "</td>";
						            newRow += "<td onclick=\"location.href='./bdetail?bno=" + item.bno + "'\">" + item.bno + "</td>";
						            newRow += "<td>" + item.bprice + "</td>";
						            newRow += "<td>" + item.bcontent + "</td>";
						            newRow += "<td>" + item.bdate + "</td>";
						            newRow += "<td>" + item.cate + "</td>";
						            newRow += "<td>" + item.bread + "</td>";
						            newRow += "<td>" + item.addr + "</td>";
						            newRow += "<td>" + item.mid + "</td>";
						            newRow += "<td>" + item.cname + "</td>";
						            newRow += "</tr>";

						            // 테이블의 tbody에 새로운 행 추가
						            $("#tableContainer tbody").append(newRow);
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
											"${param.maxPrice}",
											"${param.sort}");
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
			// sort 값 미리 찍기 
				
			    var sort = parseInt("${param.sort}");

   				 if (isNaN(sort)) {
        			sort = 1; // 정수로 변환할 수 없는 경우 기본값 1로 설정
    			}

   				 // 이후에 sort 변수를 사용하여 필요한 작업을 수행할 수 있습니다.
   				 
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
				
			    
				/* 모달에서 파라미터로 옵션을 보내 주는  스크립트 */
				
				
				
				var areaParam = "${param.areas}";
				var categoryParam = "${param.categories}"; // 예시: 서버에서 받은 카테고리 파라미터 값
				var minPriceParam = ("${param.minPrice}"/10000); // 예시: 서버에서 받은 최소 가격 파라미터 값
				var maxPriceParam = ("${param.maxPrice}"/10000); // 예시: 서버에서 받은 최대 가격 파라미터 값
				var equipmentParam = "${param.equipments}"; // 예시: 서버에서 받은 시설물 파라미터 값
				
				// 지역 체크박스 설정
				$("input[name='area']").each(function() {
				    var areaValue = $(this).val();
				    if (areaParam.includes(areaValue)) {
				        $(this).prop("checked", true); // 파라미터 값에 해당하는 체크박스 체크
				    }
				});
				// 카테고리 체크박스 설정
				$("input[name='category']").each(function() {
   					 var categoryValue = $(this).val();
    				if (categoryParam.includes(categoryValue)) {
        			$(this).prop("checked", true); // 파라미터 값에 해당하는 체크박스 체크
   					 }
				});

					// 가격 슬라이더 및 입력 필드 설정
				$("#min-price").val(minPriceParam);
				$("#max-price").val(maxPriceParam);
				$("#price-slider").slider("values", [minPriceParam, maxPriceParam]);

					// 시설물 체크박스 설정
				$("input[name='equipment']").each(function() {
    			var equipmentValue = $(this).val();
    			if (equipmentParam.includes(equipmentValue)) {
        		$(this).prop("checked", true); // 파라미터 값에 해당하는 체크박스 체크
    			}
			});
			    
			    
			    
			    // 각 탭에서 선택된 값들을 가져와서 selectedOptions 배열에 저장하는 함수
			    function updateSelectedOptions() {
			        
			    	selectedOptions = [];
			  

			        $("input[name='area']:checked").each(function() {
			        	var ano = $(this).val(); 
			        	var aname = $(this).data("aname");
			            var optionValue = "area:" + aname;
			            selectedOptions.push("<span data-option-value='area_" + ano + "'>" + aname + iconHtml + "</span>");
			            
			        });

			        $("input[name='category']:checked").each(function() {
			        	var cno = $(this).val(); 
			        	var cname = $(this).data("cname");
			            var optionValue = "category:" + cname;
			            selectedOptions.push("<span data-option-value='cate_" + cno + "'>" + cname + iconHtml + "</span>");
			            
			        });

			        var minPrice = $("#min-price").val();
			        var maxPrice = $("#max-price").val();

			       

			        $("input[name='equipment']:checked").each(function() {
			        	var eno = $(this).val(); 
			        	var ename = $(this).data("ename");
			            var optionValue = "equipment:" + ename;
			            selectedOptions.push("<span data-option-value='equip_" + eno + "'>" + ename + iconHtml + "</span>");
			           
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
			    
			 // 삭제 시 처리
			    $(document).on("click", "#test_modal .fa-xmark", function(event) {
			        event.stopPropagation();
			        var optionValue = $(this).closest('span').data("option-value");

			        // prefix 추출
			        var prefix = optionValue.split(":")[0];
			        // minPrice 또는 maxPrice 삭제 처리
			        if (prefix === "price") {
			        	$("#price-slider").slider("values", [0, 100]);
			        	 $("#min-price").val(0);
			             $("#max-price").val(100);
			        	
			        } else {
			            // 기타 옵션 삭제 처리
			            var inputId = optionValue.replace(prefix + "_", '');
			            var correspondingInput = $("#" + inputId);

			            // 체크된 <input> 요소를 찾아 체크 해제
			            correspondingInput.prop("checked", false);
			        }

			        // 해당 값이 존재하는지 확인하고 제거
			        var optionIndex = selectedOptions.findIndex(function(item) {
			            return $(item).data("option-value") === optionValue;
			        });

			        if (optionIndex !== -1) {
			            selectedOptions.splice(optionIndex, 1);
			            updateSelectedOptions();
			        }

			        // data("option-value") 값과 일치하는 <span> 요소 제거
			        $("#footer").find("span[data-option-value='" + optionValue + "']").remove();
			    });
			  
				
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
					        		+ "&maxPrice=" + maxPrice
									+ "&sort="+sort;
							// 현재 페이지 URL에 파라미터를 추가한 뒤 리다이렉트
							window.location.href = window.location.pathname
									+ queryString;
						});
									
							// 파라미터로 추가된 옵션들도 footer 에 찍어주기 
							// 파라미터로 받아온 옵션 값들을 이용하여 span 태그를 생성하고 #footer에 추가하는 함수
							function addOptionsToFooter() {
							    var areaParam = "${param.areas}";
							    var categoryParam = "${param.categories}";
							    var equipmentParam = "${param.equipments}";
							    var minPriceParam = parseInt("${param.minPrice}")/10000;
							    var maxPriceParam = parseInt("${param.maxPrice}")/10000;

							    // 지역 옵션 추가
							    if (areaParam) {
							        var selectedAreas = areaParam.split(",");
							        selectedAreas.forEach(function(area) {
							            var areaElement = $("#area_" + area);
							            if (areaElement.length > 0) {
							                var areaName = areaElement.data("aname"); // 해당 지역의 이름을 가져옴
							                $("#footer").append("<span data-option-value='area_" + area + "'>" + areaName + iconHtml + "</span>");
							            }
							        });
							    }

							    // 카테고리 옵션 추가
							    if (categoryParam) {
							        var selectedCategories = categoryParam.split(",");
							        selectedCategories.forEach(function(category) {
							            var categoryElement = $("#cate_" + category);
							            if (categoryElement.length > 0) {
							                var categoryName = categoryElement.data("cname"); // 해당 카테고리의 이름을 가져옴
							                $("#footer").append("<span data-option-value='cate_" + category + "'>" + categoryName + iconHtml + "</span>");
							            }
							        });
							    }

							    // 시설물 옵션 추가
							    if (equipmentParam) {
							        var selectedEquipments = equipmentParam.split(",");
							        selectedEquipments.forEach(function(equipment) {
							            var equipmentElement = $("#equip_" + equipment);
							            if (equipmentElement.length > 0) {
							                var equipmentName = equipmentElement.data("ename"); // 해당 시설물의 이름을 가져옴
							                $("#footer").append("<span data-option-value='equip_" + equipment + "'>" + equipmentName + iconHtml + "</span>");
							            }
							        });
							    }
							    if (!isNaN(minPriceParam) && !isNaN(maxPriceParam) && (minPriceParam !== 0 && maxPriceParam !== 1000000)) {
							        var priceOption = "price:" + minPriceParam + "-" + maxPriceParam;
							        $("#footer").append("<span data-option-value='" + priceOption + "'>" + minPriceParam + "만원 ~ " + maxPriceParam + "만원" + iconHtml + "</span>");
							    }else{
							    	   $("#min-price").val(0);
								       $("#max-price").val(100);
								       $("#price-slider").slider("values", [0, 100]);
							    }
							    
							}

							// 페이지 로드 시 실행하여 파라미터로 받아온 옵션들을 #footer에 추가
							$(document).ready(function() {
							    addOptionsToFooter();
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

// 나열 버튼 


$(document).ready(function() {
    // 초기에는 selectBoxList를 숨김
    $(".selectBoxList").hide();

    // selectBtn을 클릭했을 때 이벤트 핸들러 등록
    $("#selectBtn").click(function() {
        // selectBoxList의 현재 상태를 확인하여 보이기/숨기기 토글
        $(".selectBoxList").toggle();
    });
    
    

// 버튼 클릭 이벤트 처리   분류순
    function sortBoardPage(sortValue) {
        var queryParams = {
            searchV: "${param.searchV}",
            areas: "${param.areas}",
            categories: "${param.categories}",
            equipments: "${param.equipments}",
            minPrice: "${param.minPrice}",
            maxPrice: "${param.maxPrice}",
            sort: sortValue
        };

        var queryString = $.param(queryParams);
        location.href = "/board?" + queryString;
    }

    $(".sort1").click(function() {
    	sortBoardPage(1);
    });

    $(".sort2").click(function() {
    	sortBoardPage(2);
    });

    $(".sort3").click(function() {
    	sortBoardPage(3);
    });

    $(".sort4").click(function() {
    	sortBoardPage(4);
    });

    $(".sort5").click(function() {
    	sortBoardPage(5);
    });

  	// 좋아요 보드에서 찍기 
    
    $(document).on("click", ".inf2 i", function() {
        const mid = "${sessionScope.mid}";
        // 로그인 하지 않았으면 알림창 띄우고 스크립트 종료
        if (!mid) {
            alert("로그인이 필요합니다.");
            return;
        }

        const bno = $(this).closest(".row").data("bno");
        const isLiked = $(this).hasClass("fas");
        const $likesCountElement = $(this).closest(".row").find(".likes_count");

        const data = {
            mid: mid,
            likes: isLiked ? "off" : "on",
            bno: bno
        };

        // $(this)를 저장한 변수 사용
        const $icon = $(this);

        $.ajax({
            url: "/like",
            type: "POST",
            data: data
        })
        .done(function(result){
            console.log(result.body);
            let likesCount = $likesCountElement.data("count");

            if (isLiked) {
                $icon.removeClass("fas").addClass("far");
                $likesCountElement.text(likesCount - 1);
                $likesCountElement.data("count", likesCount - 1);
            } else {
                $icon.removeClass("far").addClass("fas");
                $likesCountElement.text(likesCount + 1);
                $likesCountElement.data("count", likesCount + 1);
            }
        })
        .fail(function(error){
            alert(error.responseText);
        });
    });
    
});


</script>

<%@ include file="footer.jsp"%>
</body>
</html>