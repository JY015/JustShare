<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
       .image-preview {
            display: inline-block; /* 이미지를 가로로 나열하기 위해 인라인-블록 요소로 설정 */
            margin: 10px; /* 이미지 사이의 간격 조정 */
        }
        .preview-image {
            max-width: 300px; /* 최대 너비를 조절하여 이미지 크기 제한 */
            max-height: 300px; /* 최대 높이를 조절하여 이미지 크기 제한 */
            
        }
    </style>
</head>
<body>
	<h1>공간 공유하기 </h1>
	<form action="./bwrite" method="post" enctype="multipart/form-data">
	
	 <label for="images">이미지 업로드</label>
	<div >
    <input type="file" name="upFile" id="upFile" multiple="multiple" >
    <br><span id="resultF"></span>
    </div>
     <div id="imagePreviews"></div>
	제목
	<div>
	<input type="text" name="title" id="titleInput" >
	<br><span id="resultMSG"></span>
	</div>
	공간 유형
	<div>
	<select name="bcate">
	<c:forEach items="${catelist }" var="n">
	<option value ="${n.cate}" >${n.cname }</option>
	</c:forEach>
	</select>
	</div>
	가격
	<div>
	<input type="number" name="price" id="priceInput">
	 <br><span id="resultP"></span>
	</div>
	시설
	<div>
	<c:forEach items="${equiplist }" var="n">
	<input type="checkbox" name="equipment" value="${n.eid }"> ${n.ename }
	</c:forEach>
	</div>
	상세 설명
	<div>
	<textarea name="content" id="contentInput"></textarea>
	<br><span id="resultCON"></span>
	</div>
	주소
	<div>
	<input type="text" id="sample2_postcode" name="addNum" placeholder="우편번호" >
	<input type="button" onclick="sample2_execDaumPostcode()" value="우편번호 찾기"><br>
	<input type="text" id="sample2_address" name="add" placeholder="주소"><br>
	<input type="text" id="sample2_detailAddress"  name ="addD" placeholder="상세주소">
	<input type="hidden" id="sample2_extraAddress" placeholder="참고항목">
	</div>
	<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
	<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
	<br><span id="resultPC"></span>
	<br><span id="resultAD"></span>
	</div>
	<button type="button" class="writeB" >완료</button>
	</form>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script>
    // 우편번호 찾기 화면을 넣을 element
    var element_layer = document.getElementById('layer');

    function closeDaumPostcode() {
        // iframe을 넣은 element를 안보이게 한다.
        element_layer.style.display = 'none';
    }

    function sample2_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample2_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample2_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample2_postcode').value = data.zonecode;
                document.getElementById("sample2_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample2_detailAddress").focus();

                // iframe을 넣은 element를 안보이게 한다.
                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                element_layer.style.display = 'none';
            },
            width : '100%',
            height : '100%',
            maxSuggestItems : 5
        }).embed(element_layer);

        // iframe을 넣은 element를 보이게 한다.
        element_layer.style.display = 'block';

        // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
        initLayerPosition();
    }

    // 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
    // resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
    // 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
    function initLayerPosition(){
        var width = 300; //우편번호서비스가 들어갈 element의 width
        var height = 400; //우편번호서비스가 들어갈 element의 height
        var borderWidth = 5; //샘플에서 사용하는 border의 두께

        // 위에서 선언한 값들을 실제 element에 넣는다.
        element_layer.style.width = width + 'px';
        element_layer.style.height = height + 'px';
        element_layer.style.border = borderWidth + 'px solid';
        // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
    }
</script>

<script>
        document.getElementById('upFile').addEventListener('change', handleFileSelect, false);

        function handleFileSelect(event) {
            const files = event.target.files;
            const imagePreviews = document.getElementById('imagePreviews');
            imagePreviews.innerHTML = '';

            for (const file of files) {
                const imagePreview = document.createElement('div');
                imagePreview.className = 'image-preview';

                const img = document.createElement('img');
                img.src = URL.createObjectURL(file);
                img.className = 'preview-image';
                imagePreview.appendChild(img);

                imagePreviews.appendChild(imagePreview);
            }
        }
</script>
<script type="text/javascript">


$(function(){
    $(".writeB").click(function(){
        const fileInput = document.getElementById('upFile');
        const titleInput = document.getElementById('titleInput');
        const contentInput = document.getElementById('contentInput');
        const postcodeInput = document.getElementById('sample2_postcode');
        const addressInput = document.getElementById('sample2_address');
        const priceInput = document.getElementById('priceInput');
       
       

        const title = titleInput.value.trim();
        const content = contentInput.value.trim();
        const postcode = postcodeInput.value.trim();
        const address = addressInput.value.trim();
        const price = parseInt(priceInput.value); // 가격을 정수로 변환
       
        if(fileInput.files.length === 0){
        	 $("#resultF").text("이미지는 반드시 하나이상 선택해야합니다");
             $("#resultF").css("font-weight", "bold");
             $("#resultF").css("font-size", "10pt");
			return false;
        	
        }

		if(title === "" || title.length < 3 || title.length > 31){
			 $("#resultMSG").text("제목은 3글자 이상, 30글자 이하이어야 합니다.");
             $("#resultMSG").css("font-weight", "bold");
             $("#resultMSG").css("font-size", "10pt");
			return false;
		}
		if (isNaN(price) || price <= 1000) {
			 $("#resultP").text("올바른 가격을 입력하세요");
             $("#resultP").css("font-weight", "bold");
             $("#resultP").css("font-size", "10pt");
            return false;
        }
	
		if(content ==="" || content.length < 10 || content.length > 1000){
			$("#resultCON").text("상세 내용은 10글자 이상, 1000자 이하여야 합니다.")
			$("#resultCON").css("font-weight", "bold");
            $("#resultCON").css("font-size", "10pt");
			return false;
		}
		if(postcode ===''){
			$("#resultPC").text("우편번호를 입력해야합니다.")
			$("#resultPC").css("font-weight", "bold");
            $("#resultPC").css("font-size", "10pt");
			return false;
		}
		if(address ===''){
			$("#resultAD").text("주소를 입력해야합니다.")
			$("#resultAD").css("font-weight", "bold");
            $("#resultAD").css("font-size", "10pt");
			return false;
		}
		
		 document.querySelector('form').submit();
    });
    });    

 </script>       
  
</body>
</html>