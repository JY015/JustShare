<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	img{
		height: 150px;
		width: 150px; 
	}
</style>
</head>
<body>
<h1>board</h1>

			<table class="tableContainer" id="tableContainer">
               <thead>
               	<tr class="row">
               		<td class="col-4">사진</td>
               		<th class="col-2 ">제목</th>
               		<th class="col-2 bb">날짜</th>
               		<th class="col-1 bb" >글쓴이</th>
               		<th class="col-1 bb">가격</th>
               		<th class="col-1 bb">태그</th>
               		<th class="col-1 bb">조회수</th>
               	</tr>
               </thead>
               <tbody><c:forEach items="${list}" var="row">
               <tr class="row detail"  onclick="location.href='./bdetail?bno=${row.bno}'">
               		<td class="col-4">
               		<img src="/img/places/${row.realFile}"> &nbsp;</td>
               		<td class="col-2">${row.btitle } &nbsp;</td>
               		<td class="col-2 bb">${row.bdate }</td>
               		<td class="col-1 bb">${row.mno }</td>
               		<td class="col-1 bb">${row.bprice }</td>
               		<td class="col-1 bb">${row.cname }</td>
               		<td class="col-1 bb">${row.bread }</td>
               		
                </tr>
               </c:forEach>
               </tbody>
               </table>
                <div >
                
                </div>

<button type="button" onclick="location.href='/bwrite'">글쓰기</button>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script type="text/javascript">
//현재 스크롤 위치 저장
let lastScroll = 0;
let page = 0;
let nowPageLimit = 0;
let nextPageLimit = 0;
//데이터 가져오는 함수
function getData(limit){
	//다음페이지
	nextPageLimit = (page+1) * limit;
	$.ajax({
		type: "post",
		url: "/board",
		dataType: "json",
		data: {
			 "nextPageLimit" : nextPageLimit,
			 "limit" : limit
		},
        success: function (data) {
            // 성공적으로 응답을 받았을 때 처리
            if (data && data.length > 0) {
                // 테이블 내용 생성
               var desiredOrder = ['realFile','btitle','bno',  'bprice', 'bcontent', 'bdate', 'cate', 'bread', 'addr', 'mno', 'cname'];
                data.forEach(function (item) {
                    var newRow = "<tr onclick=\"location.href='./bdetail?bno=" + item.bno + "'\">";
                    desiredOrder.forEach(function(prop) {
                        if (prop === 'realFile') {
                            // 'realFile' 속성일 경우 이미지로 표시
                            newRow += "<td><img src='/img/places/" + item[prop] + "' alt='Image' style='width: 150px; height: 150px;'></td>";
                        } else {
                            // 다른 속성은 텍스트로 표시
                            newRow += "<td>" + item[prop] + "</td>";
                        }
                    });
                    newRow += "</tr>";

                    // 테이블의 tbody에 새로운 행 추가	
                    $("#tableContainer tbody").append(newRow);
                });

            } else {
                // 더 이상의 데이터가 없음을 나타내는 메시지 출력
                console.log("No more data available.");
            }
        },
        error: function (xhr, status, error) {
            // 에러 발생 시 처리
            console.error("Error occurred: " + error);
        },complete: function(){
			page = page + 1;
		}
    });
     
}
$(document).scroll(function(e){
    //현재 높이 저장
    var currentScroll = $(this).scrollTop();
    //전체 문서의 높이
    var documentHeight = $(document).height();

    //(현재 화면상단 + 현재 화면 높이)
    var nowHeight = $(this).scrollTop() + $(window).height();


    //스크롤이 아래로 내려갔을때만 해당 이벤트 진행.
    if(currentScroll > lastScroll){
			
        //nowHeight을 통해 현재 화면의 끝이 어디까지 내려왔는지 파악가능 
        //즉 전체 문서의 높이에 일정량 근접했을때 글 더 불러오기)
        if(documentHeight < (nowHeight + (documentHeight*0.1))){
        	//함수콜
		getData(10);
        }
    }

    //현재위치 최신화
    lastScroll = currentScroll;

});

</script>
</body>
</html>