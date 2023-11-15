<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scaleable=no, maximum-scale=1" />
	<meta name="description" content="공간 공유 플랫폼"/>
    <title>Just Share</title>
	<!-- 기존에 사용하던 jquery , bootstrap , 기타등등 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<script src="../js/mcore.extends.js"></script>
<script src="../js/mcore.min.js"></script>
<script src="../js/wnInterface.min.js"></script>

<!-- 추가한거 -->
<link rel="stylesheet" href="/css/import.css?ver=20000120" />
<link rel="stylesheet" href="/css/style.css?ver=20000120" />
<link rel="stylesheet" href="/css/owl.carousel.min.css" />
<link rel="stylesheet" href="/css/valuevenue.css?ver=20000120" />
<link rel="stylesheet" href="/css/listpage.css?ver=20000120">
<link rel="stylesheet" href="/css/main_page.css" />
<!-- 회원가입 3가지회원 유형 css new -->
<link rel="stylesheet" href="/css/register.css?ver=20000120"/> 
	<!-- 고객센터 css -->
<link rel="stylesheet" href="/css/customer_service_center.css?ver=20000120" />
	<!-- 폰트어썸 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.5.2/sockjs.min.js"></script>
<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<link rel="stylesheet" href="/css/footertoastr.min.css" />
<script src="./js/socket2.js"></script>


 <script src="/js/valuevenue.js?ver=20000120" defer></script>
 <script src="/js/owl.carousel.min.js"></script>
 <script src="/js/common.js?ver=20000120" defer></script>
 <script src="/js/cookie.js?ver=20000120" defer></script>
 

</head>
<body>
<%@ include file="header.jsp"%>
	<!-- 전체 div -->
	<div class="body__container section">
	 <section class="signup_wrap">
	 <div class="sign_inner">
	 <div class="signup_list_wrap">
	 <div class="signup_title">
	 <div class="sign_text">공간 공유하기 </div>
	 <div class="sign_text_list">새 게시글을 작성하여 공간을 공유하세요 </div>
	 </div>
	 </div>
	 <!-- 내용 -->
	<form id="mf" name="mf" action="./bwrite" target=_hidden_frame  method="post" autocomplete="off" enctype="multipart/form-data" >
		<div class="input_sign_w">
			<table>
				<colgroup>
				<col style="width:180px">
				</colgroup>
				<tbody>
					<tr class="border_bottom">
						<th><label for="image">모피어스 이미지 </label><span aria-hidden="true">*</span></th>
						<td>
						 <div class="id_mo f_ex">
						 <button id="picker" type="button" class="choose">파일 선택</button>
						 </div>
						 <div id="box"></div>
  						<div id="progress"></div>
  						<div id="upload-box"></div>	
						 <br><span class="warningTxt2" id="resultF"></span>
						</td>
					</tr>
					
					<tr class="border_bottom">
						<th><label for="title">제목</label><span aria-hidden="true">*</span></th>
						<td>
						<input type="text" name="title" id="titleInput" class="required input_border" value="" placeholder="제목을 입력해주세요." aria-required="true"/>
						<br><span  class="warningTxt2" id="resultMSG"></span>
						</td>
						</tr>
					<tr class="border_bottom">
						<th><label for="category">유형</label></th>
						<td>
						<select class="input_border" name="bcate"  id="cateInput" aria-labelledby="user_category_label">
						<c:forEach items="${catelist }" var="n">
							<option value ="${n.cate}" >${n.cname }</option>
						</c:forEach>
						</select>
						</td>
						</tr>
					<tr class="border_bottom">
						<th><label for="time">사용가능 시간</label><span aria-hidden="true">*</span></th>
							<td>
							<input class="required input_border" type="number"  min="0" max="24" name="startTime" id="startTimeInput" placeholder="시작 (24시간 기준 0~24 )"  aria-required="true"/>
							<br>
							<input class="required input_border" type="number"  min="0" max="24" name="endTime"id="endTimeInput"  placeholder="끝 (24시간 기준  0~24 )"  aria-required="true"/>
							<br><span class="warningTxt2" id="resultTime"></span>
							</td>
							</tr>
					<tr class="border_bottom">
						<th><label for="timecategory">임대 기간</label></th>
						<td>
						<select class="input_border" name="rentTime" id="rentTimeInput" aria-labelledby="user_category_label">
							<option value ="시간" >시간단위</option>
							<option value ="일" >일단위</option>
							<option value ="주" >주단위</option>
							<option value ="월" >월단위</option>
						</select>
						</td>
						</tr>		
					<tr class="border_bottom">
						<th><label for="price">가격</label><span aria-hidden="true">*</span></th>
							<td>
							<input class="required input_border" type="number" name="price" id="priceInput" placeholder="최대 100만원"  aria-required="true"/>
							<br><span class="warningTxt2" id="resultP"></span>
							</td>
							</tr>
					<tr class="border_bottom">
						<th><label for="size">공간 면적</label><span aria-hidden="true">*</span></th>
							<td>
							<input class="required input_border" type="number" name="size" id="sizeInput" placeholder="㎡" aria-required="true"/>
							<br><span class="warningTxt2" id="resultS"></span>
							</td>
							</tr>
					<tr class="border_bottom">
						<th><label for="equip">보유 시설</label></th>
							<td>
							<c:forEach items="${equiplist }" var="n"><br>
							<input class="required input_border" type="checkbox" name="equipment"  id="equipmetInput" value="${n.eid }" /><span class="ename">&nbsp&nbsp&nbsp ${n.ename }</span> 
							</c:forEach>
							</td>
							</tr>	
					<tr class="border_bottom">
						<th><label for="content">상세 내용</label><span aria-hidden="true">*</span></th>
						<td>
						<textarea name="content" id="contentInput" placeholder="내용을 입력해주세요. (최소 10자 )"></textarea>
						<br><span  class="warningTxt2" id="resultCON"></span>
						</td>
						</tr>
					<tr class="border_bottom">
					<th><label for="address">주소</label>
					<td>
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
					</td>
					</tr>										
				</tbody>
			</table>
		</div>
		<!-- 버튼 -->
		<div class="sign_btn_w">
			<button type="button" class="btn_black writeB" >작성완료</button>
			<button type="button"  id="upload" class="btn_clear_black">이미지 업로드하기</button>
		</div>
	</form>


	<br><br><br><br>
	
	 <%@ include file="footer.jsp" %> 
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>

<script type="text/javascript">

document.addEventListener('DOMContentLoaded', function() {
    var uploadButton = document.getElementById('upload');
        uploadButton.disabled = true;
});




$(function () {
    let selectImagePath = '';
    let $previewImg = null;
    let $uploadImg = null;
    const $box = $('#box');
    const $uploadBox = $('#upload-box');
    const $progress = $('#progress');
    const $picker = $('#picker');
    const $upload = $('#upload');
    
    $picker.on('click', () => {
          if ($previewImg !== null) {
          $previewImg.remove();
          $previewImg = null;
        }
        selectImagePath = '';
        $.imagePicker()
          .then(({ status, result }) => {
            if (status === 'SUCCESS') {
              selectImagePath = result.path;
              return $.convertBase64ByPath(selectImagePath)
            } else {
              return Promise.reject('이미지 가져오기 실패')
            }
          })
          .then(({ status, result }) => {
            if (status === 'SUCCESS') {
              $previewImg = $(document.createElement('img'))
              $previewImg.attr('height', '200px')
              $previewImg.attr('src', "data:image/png;base64," + result.data)
              $box.append($previewImg);
            } else {
              return Promise.reject('BASE64 변환 실패')
            }
          })
          .catch((err) => {
            if (typeof err === 'string') alert(err)
            console.error(err)
          })
    });
    
    $upload.on('click', () => {
           	
    if (selectImagePath === '') return alert('이미지를 선택해주세요.')
    if ($uploadImg) {
      $uploadImg.remove();
      $uploadImg = null;
    }
    $progress.text('')
    $.uploadImageByPath(selectImagePath, (total, current) => {
      console.log(`total: ${total} , current: ${current}`)
      $progress.text(`${current}/${total}`)
    })
      .then(({
        status, header, body
      }) => {
        // status code
        if (status === '200') {
          $progress.text('업로드 완료')
          const bodyJson = JSON.parse(body)
          $uploadImg = $(document.createElement('img'))
          $uploadImg.attr('height', '200px')
          $uploadImg.attr('src', bodyJson.fullpath)
          $uploadBox.append($uploadImg)
        } else {
        	window.location.href = 'http://172.30.1.30:8080/board'
        	
        }
      })
      .catch((err) => {
        if (typeof err === 'string') alert(err)
        console.error(err)
      })
    });

    $.imagePicker = function () {
          return new Promise((resolve) => {
        M.media.picker({
          mode: "SINGLE",
          media: "PHOTO",
          column: 3,
          callback: (status, result) => {
            resolve({ status, result })
          }
        });
      })
    };

    $.convertBase64ByPath = function (imagePath) {
       	      if (typeof imagePath !== 'string') throw new Error('imagePath must be string')
	      return new Promise((resolve) => {
	        M.file.read({
	          path: imagePath,
	          encoding: 'BASE64',
	          indicator: true,
	          callback: function (status, result) {
	            resolve({ status, result })
	          }
	        });
	      })
    };

    $.uploadImageByPath = function (targetImgPath, progress, bno) {
             return new Promise((resolve) => {
	        const _options = {
	          url: "http://172.30.1.30:8080/uploadFile",
	          header: {},
	          params: {},
	          body: [
	            { name: "file", content: targetImgPath, type: "FILE" },
	          ],
	          encoding: "UTF-8",
	          finish: (status, header, body, setting) => {
	            resolve({ status, header, body })
	          },
	          progress: function (total, current) {
	            progress(total, current);
	          }
	        }
	        M.net.http.upload(_options);
	      })
    };

    $(".writeB").click(function(){
    	 const $writeButton = $(this);
         const titleInput = document.getElementById('titleInput');
         const contentInput = document.getElementById('contentInput');
         const postcodeInput = document.getElementById('sample2_postcode');
         const addressInput = document.getElementById('sample2_address');
         const priceInput = document.getElementById('priceInput');
         const startTimeInput = document.getElementById('startTimeInput');
         const endTimeInput = document.getElementById('endTimeInput');
         const sizeInput =  document.getElementById('sizeInput');
         const cateInput = document.getElementById('cateInput');
         const rentTimeInput = document.getElementById('rentTimeInput');
         const equipmetInputs = document.getElementsByName('equipment');
         const detailAddressInput = document.getElementById('sample2_detailAddress');
        
         
 			
         const title = titleInput.value.trim();
         const content = contentInput.value.trim();
         const postcode = postcodeInput.value.trim();
         const address = addressInput.value.trim();
    	const detailAddress = detailAddressInput.value.trim();
         const price = parseInt(priceInput.value);
         const startTime =parseInt(startTimeInput.value);
         const endTime =parseInt(endTimeInput.value);
         const size = parseInt(sizeInput.value);
         const cate = cateInput.value;
         const rentTime = rentTimeInput.value;
         const equipment = Array.from(equipmetInputs).filter(input => input.checked).map(input => input.value);
        
         /* if(fileInput.files.length === 0){
         	 $("#resultF").text("이미지는 반드시 하나이상 선택해야합니다");
              $("#resultF").css("font-weight", "bold");
              $("#resultF").css("font-size", "10pt");
 			return false;
         	
         } */

 		if(title === "" || title.length < 3 || title.length > 31){
 			 $("#resultMSG").text("제목은 3글자 이상, 30글자 이하이어야 합니다.");
              $("#resultMSG").css("font-weight", "bold");
              $("#resultMSG").css("font-size", "10pt");
 			return false;
 		}
 		if (isNaN(startTime) ||startTime < 0 || startTime >24 || startTime > endTime) {
 			 $("#resultTime").text("올바른 시간을 입력하세요");
              $("#resultTime").css("font-weight", "bold");
              $("#resultTime").css("font-size", "10pt");
             return false;
         }
 		if (isNaN(endTime) ||endTime < 0 || endTime >24 || startTime > endTime) {
 			 $("#resultTime").text("올바른 시간을 입력하세요");
             $("#resultTime").css("font-weight", "bold");
             $("#resultTime").css("font-size", "10pt");
            return false;
        }
 		if (isNaN(price) || price <= 10) {
 			 $("#resultP").text("올바른 가격을 입력하세요");
              $("#resultP").css("font-weight", "bold");
              $("#resultP").css("font-size", "10pt");
             return false;
         }
 		if (isNaN(size) || size <= 0) {
 			 $("#resultS").text("올바른 면적을 입력하세요");
             $("#resultS").css("font-weight", "bold");
             $("#resultS").css("font-size", "10pt");
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
 	
        $.ajax({
           url : "./bmwrite",
 			type : "post",
 			data : {
 				"title": title,
 				"content": content,
 				"addNum": postcode,
 				"add" : address,
 				"price" : price,
 				"startTime" : startTime,
 				"endTime" : endTime,
 				"size" : size,
 				"bcate" : cate,
 				"rentTime" : rentTime,
 				"equipment" : JSON.stringify(equipment),
 				"addD":detailAddress
 			},
 			dataType : "json",
            success: function (data) {
                if (data > 0) {
                	 $upload.prop('disabled', false);
                	 
                } else {
                    console.log("글 작성 중 오류가 발생했습니다.");
                }
            },
            // ...
        }); 
    });
});

</script>
    
  
</body>
</html>