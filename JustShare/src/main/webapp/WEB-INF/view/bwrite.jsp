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
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
	<!-- <link rel="stylesheet" href="/css/register.css?ver=20000120" /> -->
	<!-- 고객센터 css -->
	<link rel="stylesheet" href="/css/customer_service_center.css?ver=20000120" />
	<!-- 폰트어썸 -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />
	<link rel="shortcut icon" href="/images/v_favicon32.ico" sizes="32x32" />
	
 <script src="/js/valuevenue.js?ver=20000120" defer></script>
 <script src="/js/owl.carousel.min.js"></script>
 <script src="/js/common.js?ver=20000120" defer></script>
 <script src="/js/cookie.js?ver=20000120" defer></script>
 <style type="text/css">
<style>
       .image-preview {
            display: inline-block; /* 이미지를 가로로 나열하기 위해 인라인-블록 요소로 설정 */
            margin: 10px; /* 이미지 사이의 간격 조정 */
        }
        .preview-image {
            max-width: 70px; /* 최대 너비를 조절하여 이미지 크기 제한 */
            max-height: 70px; /* 최대 높이를 조절하여 이미지 크기 제한 */
            
        }
</style>
</head>
<body>
	<%@ include file="header.jsp"%>
	<!-- 전체 div -->
	<div class="body__container section">
	<!-- 헤더부분 -->
	<!-- 모바일 버전 헤더  -->
	<header class="header__topnav_type2">
		  <div class="header_topnav_inner_n">
			<div class="first_row">
			  <div class="left-side">
				<div class="back" style="cursor:pointer" onclick="history.back();">뒤로가기</div>
				<h1 class="logo"><a href="/">로고</a></h1>
			  </div>
			</div>

		  </div>
		</header>
	<!-- 타이틀 부분  -->
	 <section class="signup_wrap">
	 <div class="sign_inner">
	 <div class="signup_list_wrap">
	 <div class="signup_title">
	 <div class="sign_text">공간 공유하기 </div>
	 <div class="sign_text_list">새 게시글을 작성하여 공간을 공유하세요 </div>
	 </div>
	 </div>
	 <!-- 내용 -->
	<form id="mf" name="mf" action="./bwrite" target=_hidden_frame  method="post" autocomplete="off" enctype="multipart/form-data">
		<div class="input_sign_w">
			<table>
				<colgroup>
				<col style="width:180px">
				</colgroup>
				<tbody>
					<tr class="border_bottom">
						<th><label for="image">이미지 </label><span aria-hidden="true">*</span></th>
						<td>
						<div class="id_mo f_ex">
						<input type="file" name="upFile" id="upFile" multiple="multiple" class="required input_border" aria-required="true" />
						</div>
						 <div id="imagePreviews"></div>	
						 <br><span class="warningTxt2" id="resultF"></span>
						</td>
					</tr>
					<tr class="border_bottom">
						<th><label for="image">모피어스 이미지 </label><span aria-hidden="true">*</span></th>
						<td>
						 <div class="id_mo f_ex">
						 <button id="picker" type="button">파일 선택</button>
						 </div>
						 <div id="box"></div>
						 <div>
    					<button id="upload" type="button">Upload Current Image</button>
  						</div>
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
							<c:forEach items="${equiplist }" var="n">
							<input class="required input_border" type="checkbox" name="equipment"  id="equipmetInput" value="${n.eid }" />${n.ename }
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
			<button type="button" class="btn_clear_black" onclick="history.back();">취소</button>
			<button type="button" class="btn_black writeB" >작성완료</button>
		</div>
	</form>
	 <%@ include file="footer.jsp" %> 
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
      })
      
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
          return Promise.reject('업로드를 실패하였습니다.')
        }
      })
      .catch((err) => {
        if (typeof err === 'string') alert(err)
        console.error(err)
      })
  })
     
      
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
    }
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
	    }
    
    $.uploadImageByPath = function (targetImgPath, progress) {
    	
	      return new Promise((resolve) => {
	        const _options = {
	          url: "http://172.30.1.30/uploadFile",
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
	    }
    
  });



$(function(){
    $(".writeB").click(function(){
       /*  const fileInput = document.getElementById('upFile'); */
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
		if (isNaN(price) || price <= 1000) {
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
		            var bno = data;
		            alert(bno)
		            alert(selectImagePath)
		            alert($uploadImg)
		            if (selectImagePath === '') return alert('이미지를 선택해주세요.');
		            if ($uploadImg) {
		              $uploadImg.remove();
		              $uploadImg = null;
		            }
		            $progress.text('')
		            $.uploadImageByPath(selectImagePath, bno, (total, current) => {
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
		                  return Promise.reject('업로드를 실패하였습니다.')
		                }
		              })
		              .catch((err) => {
		                if (typeof err === 'string') alert(err)
		                console.error(err)
		              })
		       
		        } else {
		            console.log("글 작성 중 오류가 발생했습니다.");
		        }
		    },
		    error: function (error) {
		        console.error("Ajax 요청 중 에러 발생:", error);
		    }
		}); 
	 
    });
    });    

</script>
    
  
</body>
</html>