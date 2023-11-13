<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<style type="text/css">
#myform fieldset{
    display: inline-block;
    direction: rtl;
    border:0;
}
#myform fieldset legend{
    text-align: right;
}
#myform input[type=radio]{
    display: none;
}
#myform label{
    font-size: 3em;
    color: transparent;
    text-shadow: 0 0 0 gray;
   	
}
#myform label:hover{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
#myform label:hover ~ label{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
#myform input[type=radio]:checked ~ label{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
#reviewContents {
    width: 100%;
    height: 150px;
    padding: 10px;
    box-sizing: border-box;
    border: solid 1.5px #D3D3D3;
    border-radius: 5px;
    font-size: 16px;
    resize: none;
}
.rating {
   width: 180px;
}

.rating__star {
   cursor: pointer;
   color: #dabd18b2;
}


</style>
</head>
<body>
거래 게시글 번호 : ${map.bno }
판매자 : ${map.tid }
구매자 : ${map.fid }
<form class="mb-3" name="myform" id="myform" method="post">
	<fieldset>
		<span class="text-bold">별점을 선택해주세요</span>
		<input type="hidden" name=bno value="${map.bno}">
		<!-- 구매자 /판매자 누가 작성했는지 구분하기  -->
		<input type="hidden" id="rfid" name="rfid" value="<c:choose><c:when test='${sessionScope.mid eq map.fid }'>${map.fid}</c:when><c:otherwise>${map.tid }</c:otherwise></c:choose>" >
		<input type="hidden" id ="rtid" name="rtid" value="<c:choose><c:when test='${sessionScope.mid eq map.fid }'>${map.tid}</c:when><c:otherwise>${map.fid }</c:otherwise></c:choose>">
		<!-- 별점 주기 라디오 사용 --> 
		<input type="radio" name="reviewStar" value="5" id="rate1"><label
			for="rate1"><i class="rating__star fas fa-star"></i></label>
		<input type="radio" name="reviewStar" value="4" id="rate2"><label
			for="rate2"><i class="rating__star fas fa-star"></i></label>
		<input type="radio" name="reviewStar" value="3" id="rate3"><label
			for="rate3"><i class="rating__star fas fa-star"></i></label>
		<input type="radio" name="reviewStar" value="2" id="rate4"><label
			for="rate4"><i class="rating__star fas fa-star"></i></label>
		<input type="radio" name="reviewStar" value="1" id="rate5"><label
			for="rate5"><i class="rating__star fas fa-star"></i></label>
	</fieldset>
	<div>
		<textarea class="col-auto form-control"  name="reviewContent" id="reviewContent" placeholder="거래후기를 남겨주세요 !!"></textarea>
	</div>
	<button>취소하기</button><button type="button" onclick="submitReview()">리뷰 남기기 </button>
</form>	
<script>
//유효성 검사 

function submitReview() {
	var contentInput = document.getElementById('reviewContent');
    var selectedRating = document.querySelector('input[name="reviewStar"]:checked');
    var content = contentInput.value.trim();
	
    if (selectedRating) {
    
    var ratingValue = selectedRating.value;
    
    }else{
    	
    	alert("별점을 선택해주세요");
    	return false;
    	
    }
    
    if(content ==="" || content.length < 5 || content.length > 100){
    	alert("상세 리뷰 내용을 5자 이상 적어주세요");
    	return false;
    }
    
    document.querySelector('form').submit();
    
}
	
</script>			

</body>
</html>