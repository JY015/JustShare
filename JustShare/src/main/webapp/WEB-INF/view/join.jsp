<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
  
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scaleable=no, maximum-scale=1" />
   <meta name="description" content="가치공간은 가능성 속 잠재된 가치를 발굴하며, 공간 소유자에게는 유휴공간의 재발견을, 브랜드에게는 홍보의 장을, 소비자에게는 새로운 경험을 선사합니다"/>
   <link rel="canonical"  href="https://www.valuevenue.co.kr/login"/>
    <link rel="stylesheet" href="/css/fullcalendar.css" />
    <link rel="stylesheet" href="/css/import.css?ver=20000120" />
    <link rel="stylesheet" href="/css/style.css?ver=20000120" />
    <link rel="stylesheet" href="/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="/css/valuevenue.css?ver=20000120" />
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
   <link rel="stylesheet" href="/css/listpage.css?ver=20000120">
    <link rel="stylesheet" href="/css/main_page.css" />
    <link rel="stylesheet" href="./css/login.css">

   <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />
   <meta property="og:locale"       content="ko_KR" />
   <meta property="og:type"       content="website" />
   <meta property="og:title"       content="팝업스토어 NO.1 가치공간 - 온라이프(On-Life) 리테일 플랫폼" />
   <meta property="og:description"  content="가치공간은 가능성 속 잠재된 가치를 발굴하며, 공간 소유자에게는 유휴공간의 재발견을, 브랜드에게는 홍보의 장을, 소비자에게는 새로운 경험을 선사합니다" />
   <meta property="og:url"          content="https://www.valuevenue.co.kr/login" />
   <meta property="og:image"       content="https://www.valuevenue.co.kr/images/main_default_v.jpg"/>
   <meta property="og:site_name"    content="가치공간" />
   <meta name="naver-site-verification" content="daa1d446d775041d4d3610f1a1cc60c1562046b1" />
   <meta name="twitter:card"       content="summary" />
   <meta name="twitter:title"       content="팝업스토어 NO.1 가치공간 - 온라이프(On-Life) 리테일 플랫폼" />
   <meta name="twitter:description" content="가치공간은 가능성 속 잠재된 가치를 발굴하며, 공간 소유자에게는 유휴공간의 재발견을, 브랜드에게는 홍보의 장을, 소비자에게는 새로운 경험을 선사합니다" />
   <meta name="twitter:image"       content="https://www.valuevenue.co.kr/images/main_default_v.jpg" />
   <meta name="twitter:domain"       content="가치공간" /> 
   <meta name="robots" content="index,follow">
   <meta name="naver-site-verification" content="a2a89e942b8a6cb220490a635dc04627db8547ed" />
   <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    <script src="/js/valuevenue.js?ver=20000120" defer></script>
    <script src="/js/owl.carousel.min.js"></script>
    <script src="/js/common.js?ver=20000120" defer></script>
    <script src="/js/cookie.js?ver=20000120" defer></script>
<head>
<meta charset="UTF-8">
<title>로그인 창</title>

<script src="./js/jquery-3.7.0.min.js"></script>
</head>

<script>
var _ss_user_id   = "";

</script>
  </head>
<body>
<%@ include file="header.jsp"%>
   <link rel="stylesheet" href="/css/import.css?ver=20000120" />
     <link rel="stylesheet" href="/css/style.css?ver=20000120" />
    <link rel="stylesheet" href="/css/register.css?ver=20000120" />
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
		<script src="./js/jquery-3.7.0.min.js"></script>
	<script type="text/javascript">
	
	  $(function() {

	      let isIdChecked = false; // 아이디 중복 검사 여부를 나타내는 변수
	      $("#idCheck").click(function() {
	               let mid = $("#mid").val();
	
	               if (mid == "" || mid.length < 3) {
	                  $("#resultMSG").text("아이디는 3글자 이상이어야 합니다.");
	                  $("#resultMSG").css("font-weight", "bold");
	                  $("#resultMSG").css("font-size", "15pt");
	               } else {
	                  $.ajax({
	                     url : "./checkID",
	                     type : "post",
	                     data : {
	                        "mid" : mid
	                     },
	                     dataType : "json",
	                     success : function(data) {
	                        if (data == 1) {
	                           $("#resultMSG").css("color", "red").text("이미 등록된 아이디입니다.");
	                           isIdChecked = false;
	                        } else {
	                           $("#resultMSG").css("color", "green").text("가입할 수 있습니다.");
	                           isIdChecked = true;
	                        }
	                     },
	                     error : function(request, status, error) {
	                        $("#resultMSG").text("실패시 결과값 : " + error);
	                     }
	                  });
	               }
	               return false;
	            });
	 });
	
	</script>
	
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
	<script>


	
 let user_email = $('#user_email').val();

let id_confirm = false;
let id_validation = false;
let email_confirm = false;
let email_validation = false;
let pw_confirm = false;
let pw_validation = false;
let phone_confirm = false;
let phone_validation = false;

function id_chk(){
	//소문자 알파벳 또는 숫자(0-9)로 6에서 20자 사이
	let id = $("#user_id").val();
	let id_regex = /^[a-z]+[a-z0-9]{5,19}$/g;
	
	if(id_regex.test(id) === false){
		alert("입력하신 아이디를 확인해주세요.");
		email_confirm = false;
        return false;
}else{ 
	$.ajax({
    url : "./checkID",
    type : "post",
    data : {
       "id" : id
    },
    dataType : "json",
    success : function(data) {
       if (data == 1) {
    	   alert("중복되는 이메일이 존재합니다.\n다른 이메일을 사용해주세요.");
			document.querySelector('#user_id').readOnly = false;
           $("#user_id").focus();
			$("#user_id").val('');
			$("#user_id_notice").html('이메일(아이디)를 다시 입력해주세요.');
           id_confirm = false;
       } else {
    	   if(confirm("사용할 수 있는 아이디입니다.\n입력하신 아이디를 사용하시겠습니까?")){
			id_confirm = true;
            const email_input = document.querySelector('#user_id')
			$("#user_id_notice").html('');
            id_input.readOnly = true;
       }
    }
    }
 });
	
	
}
}


function email_chk(){
	
	let email = $("#user_email").val();
	let email_regex = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
	
	
	
	
	
	if(email_regex.test(email) === false){
        alert("입력하신 이메일을 확인해주세요.");
		email_confirm = false;
        return false;
    }else{

		$.ajax({
			url:'./emailcheck',
			type: 'post',
			data: {"email":email},
			dataType :"json",
			success: function(data){
		
			if(data == 1){
				alert("중복되는 이메일이 존재합니다.\n다른 이메일을 사용해주세요.");
				document.querySelector('#user_email').readOnly = false;
                $("#user_email").focus();
				$("#user_email").val('');
				$("#user_email_notice").html('이메일(아이디)를 다시 입력해주세요.');
                email_confirm = false;
			}else{
				if(confirm("사용할 수 있는 이메일입니다.\n입력하신 이메일을 사용하시겠습니까?")){
					email_confirm = true;
                    const email_input = document.querySelector('#user_email')
					$("#user_email_notice").html('');
                    email_input.readOnly = true;
                    //email_input.nextSibling.nextSibling.remove();
                }
			}
        }
	})
}
}

$(function() {

function check_pw_compare(){
	return ($("#user_pw").val() === $("#user_pw2").val()) ? true : false;
}

// 비밀번호 - 비밀번호 확인 값 비교
function pw_compare_notice(){
	if(check_pw_compare()){
        $('#user_pw2_notice').html('');
        pw_confirm = true;
    } else {		
        $('#user_pw2_notice').html('비밀번호가 일치하지 않습니다');
        pw_confirm = false;
    }
}

//비밀번호 유효성 검사
function check_pw_validation(){
	const check_num = /[0-9]/; // 숫자
    const check_eng = /[a-zA-Z]/; // 문자
    const pw_length = $("#user_pw").val().toString().length;
	
    if(!check_num.test($("#user_pw").val()) || !check_eng.test($("#user_pw").val()) || (pw_length < 8) || (pw_length > 15 )) {
        pw_validation = false;
        $('#user_pw_notice').html('사용할 수 없는 비밀번호입니다. (영문, 숫자 필수 / 8~15자리)');
    } else {
        pw_validation = true;
        $('#user_pw_notice').html('');
    }
}

$("#user_pw").keyup(function(){
    check_pw_validation();
    pw_compare_notice();
});


$("#user_pw2").keyup(function(){
    pw_compare_notice();
});
});



//휴대폰 번호 유효성 검사
 $("#user_phone").on('blur', function(){

	var trans_num = $(this).val().replace(/-/gi,'');

	let phoneNumberRegex = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})([0-9]{3,4})([0-9]{4})$/;

	if(!phoneNumberRegex.test(trans_num)){
		phone_validation = false;
		$("#user_phone_notice").html('올바른 번호를 입력해주세요.');
	}else{
		$("#user_phone_nohypen").val($(this).val());	
		phone_validation = true;
		$("#user_phone_notice").html('');
		let change_num = trans_num.replace(/^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?([0-9]{3,4})-?([0-9]{4})$/, "$1-$2-$3");
		$("#user_phone").val(change_num);	
	}
}); 


//휴대폰 번호 중복검사
function phone_chk(){
	
	
let user_phone = $('#user_phone').val()
let phoneNumberRegex = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})([0-9]{3,4})([0-9]{4})$/;
	
	if(phoneNumberRegex.test(user_phone) === false){
		
        alert("입력하신 휴대폰 번호를 확인해주세요.");
        return false;
    }else{
    	
    	$.ajax({
			url:'./phonecheck',
			type: 'post',
			data: {"user_phone":user_phone},
			dataType :"json",
			success: function(data){
   
			if(data == 1){
				alert("중복되는 휴대폰번호가 존재합니다.\n다른 휴대폰번호를 사용해주세요.");
				document.querySelector('#user_phone').readOnly = false;
                $("#user_phone").focus();
				$("#user_phone").val('');
				
				$("#user_phone_notice").html('휴대폰 번호를 다시 입력해주세요.');
                phone_confirm = false;
			}else{
				if(confirm("사용할 수 있는 휴대폰번호입니다.\n입력하신 휴대폰번호를 사용하시겠습니까?")){
					phone_confirm = true;
                    const phone_input = document.querySelector('#user_phone')
                    phone_input.readOnly = true;
					$("#user_phone_notice").html('');
                }
			}
        }
	});

    	
    }
	}	
    	
 
$(function () {

$("#user_birthday").on("keyup",function(key){

	  // 사용자 입력값은 모두 숫자만 받는다.(나머지는 ""처리)
	    let	user_birthday = $(this).val().replace(/\D/g, "");
		let leng = user_birthday.length;
	  
		// 출력할 결과 변수
		let result = '';

		// 5개일때 - 20221 : 바로 출력
		if(leng < 6) 
			result = user_birthday;
		else if(leng < 8){
			result += user_birthday.substring(0,4);
			result += "-";
			result += user_birthday.substring(4);
		} else{
			result += user_birthday.substring(0,4);
			result += "-";
			result += user_birthday.substring(4,6);
			result += "-";
			result += user_birthday.substring(6);
		}

		$("#user_birthday").val(result);
	})

eventInit();
});

function form_check(){	

	if(id_confirm ===true && email_confirm === true && pw_confirm === true && phone_confirm === true){

		if(confirm("입력하신 정보로 회원가입을 진행합니다.")){
			$("#myForm").submit();
			
		}else{
			return false;
		}
	}else{
		if(id_confirm === false){
			alert("아이디를 다시 입력해주세요.");
			$("#user_id").focus();
			return false;
		}
		

		if(email_confirm === false){
			alert('이메일 중복확인이 필요합니다.\n입력하신 이메일을 확인해주세요.');
			$("#user_email").focus();
			return false;
		}

		if($("#user_name").val() == ''){
			alert('이름을 입력해주세요.');
			$("#user_name").focus();
			return false;
		}

		if(pw_confirm === false){
			alert('비밀번호가 일치하지 않습니다.\n입력하신 비밀번호를 확인해주세요.');
			$("#user_pw").focus();
			return false;
		}

		if(phone_confirm === false){
			alert('휴대폰번호 중복확인이 필요합니다.\n입력하신 휴대폰번호를 확인해주세요.');
			$("#user_phone").focus();
			return false;
		}

		
	}
	
}
</script>
	
	<script>
	window.onload = function(){
	    document.getElementById("maddr").addEventListener("click", function(){ //주소입력칸을 클릭하면
	        //카카오 지도 발생
	        new daum.Postcode({
	            oncomplete: function(data) { //선택시 입력값 세팅
	                document.getElementById("maddr").value = data.address; // 주소 넣기
	              /*   document.querySelector("maddr1").focus(); //상세입력 포커싱 */
	            }
	        }).open();
	    });
	}
	</script>
	
</head>
	
<body>
 
<script src="/js/member.js?ver=500" defer></script>
     <section class="signup_wrap">
			<div class="sign_inner">
				<div class="signup_list_wrap">
					<div class="signup_title">
						<div class="sign_text">일반 회원가입</div>
						<div class="sign_text_list">신규 가입하고 다양한 서비스를 이용하세요!</div>
					</div>
				</div>
				
				<!-- 내용 -->
			<form id="myForm" action="./join" method="post">
					<div class="input_sign_w">
						<table>
							<colgroup>
								<col style="width:180px">
							</colgroup>

							<tbody>
							<tr class="border_bottom">
									<th><label for="user_id">아이디</label><span aria-hidden="true">*</span></th>
									<td>
										<div class="id_mo f_ex">
											 <input type="text" name="user_id" id="user_id" placeholder="아이디를 소문자 알파벳이나 숫자로 이루어진 6글자 이상 입력해 주세요"/>
											<button type="button" id="idCheck" class="btn_black id_mo_ma" onclick="id_chk()">중복확인</button>
											 
										</div>
										<span class="warningTxt2" id="user_id_notice"></span>
	
									</td>
								</tr>
							
								<tr class="border_bottom">
									<th><label for="user_email">이메일</label><span aria-hidden="true">*</span></th>
									<td>
										<div class="id_mo f_ex">
											<input type="text" name="user_email" id="user_email" class="required input_border" placeholder="이메일을 입력해주세요." aria-required="true" data-name="이메일은"/>
											<button type="button" class="btn_black id_mo_ma" onclick="email_chk()">중복확인</button>
										</div>
										<span class="warningTxt2" id="user_email_notice"></span>
									</td>
								</tr>
								
								<tr class="border_bottom">
									<th><label for="user_name">이름</label><span aria-hidden="true">*</span></th>
									<td>
											<input type="text" name="user_name" id="user_name" class="required input_border" value="" placeholder="이름을 입력해주세요." aria-required="true" data-name="이름은"/>
											<!--span class="warningTxt2" id="user_name_text">이름을 입력해주세요.</span-->
									</td>
								</tr>

								<tr class="border_bottom">
									<th><label for="name">비밀번호</label><span aria-hidden="true">*</span></th>
									<td>
										<input type="password" name="user_pw" id="user_pw" class="required input_border" placeholder="비밀번호를 입력해주세요. (영문+숫자 8자 이상)" aria-required="true" autocomplete="new-password" data-name="비밀번호는"/>
										<span class="warningTxt2" id="user_pw_notice"></span>
									</td>
								</tr>

								<tr class="border_bottom">
									<th><label for="name">비밀번호 확인</label><span aria-hidden="true">*</span></th>
									<td>
										<input class="required input_border" type="password" name="user_pw2" id="user_pw2" placeholder="비밀번호를 확인해주세요." aria-required="true"/>
										<span class="warningTxt2" id="user_pw2_notice" data-name="비밀번호 확인은"></span>
									</td>
								</tr>

								<tr class="border_bottom">
									<th><label for="">휴대폰번호</label><span aria-hidden="true">*</span></th>
									<td>
										<div class="id_mo f_ex">
											<input class="input" type="text" id="phone" name="phone" placeholder="핸드폰번호"/>   <!-- 인증번호 받을사람 휴대폰 번호 -->
											<button type="button" id="send" class="get__number" onclick="takeTarget()">인증번호받기</button> <!-- 문자보내는 전송버튼 -->
										<span class="target__time">
								            <span id="remaining__min">3</span> :
								            <span id="remaining__sec">00</span><br>
								          	<span id="input__target_msg"></span>
								          </span>
											<input class="input__target" id="userNum" type="text" maxlength="6" placeholder="인증번호입력"  />
										</div>
								          <button type="button" class="complete__target" id="complete" disabled="disabled">확인</button>  <!-- 인증번호와 내가 입력창에 입력한 인증번호 비교하는 창 -->
									</td>
								</tr>

								<tr class="border_bottom">
									<th><label for="user_birth">생년월일</label></th>
									<td>
										<input type="tel" name="user_birthday" id="user_birthday" class="input_border" placeholder="생년월일 8자리를 입력해주세요." maxlength="10"/>
									</td>
								</tr>
							
								<tr class="border_bottom">
									<th><label for="user_address">주소</label></th>
									<td>			
									   <input class="input" type="text" name="maddr" id="maddr" placeholder="주소를 입력해 주세요"/><br><br>
										
									</td>
								</tr>

								<tr class="border_bottom">
									<th><label for="user_address">상세주소</label></th>
									<td>
									 <input class="input" type="text" name="maddr1" id="maddr1" placeholder="상세주소를 입력해 주세요"/><br><br>
									
									</td>
								
									
								</tr>

							</tbody>

						</table>
					</div>
					<div class="sign_btn_w">
						<button type="button" class="btn_clear_black" onclick="history.back();">취소</button>
						<button type="button" class="btn_black" onclick="form_check();">회원가입</button>
					</div>

					
					</form>
					</div>
</section>
<br><br>
<script type="text/javascript">
$('.target__time').hide()
$('#send').click(function() {
   $('.target__time').css('color','red');
   let phone = $('#phone').val();
   
   $.ajax ({
      url: '/checkSms',
      type: 'GET',
      data: {
         "phone" : phone
      },
      success: function(data) {
         const checkNum = data;
         alert('checkNum:'+ checkNum);
         

         $('#complete').click(function() {   
            const userNum = $('#userNum').val();
            
            if(checkNum === userNum) {
               alert('인증이 완료되었습니다.')
               $('#phone').attr('disabled', true);
               $('#userNum').attr('disabled', true);
               $('#send').attr('disabled', true);
               $('.target__time').empty();
               //$('.target__time').text('인증 완료');
               $('#complete').hide();
               $('#input__target_msg').empty();
               $('.target__time').css('color','green');
               clearInterval(timerInterval)
            }
            else {
               alert('인증번호가 틀립니다. 다시 입력해주세요.')
               //$('#input__target_msg').text('인증번호가 틀립니다. 다시 입력해주세요.');
               $('#input__target_msg').css('color','red');

            }
         });
         
      }
   });
   
   $('#send').click(function() {
      $('#remaining__min').text('3');
       $('#remaining__sec').text('00');
       resetTimer()
       takeTarget();
   });
   
});

//타이머 초기화 함수
function resetTimer() {
    $('#send').attr('disabled', false);
    $('#send').text("인증번호 다시받기");
    $('#phone').attr('disabled', false);
    clearInterval(timerInterval); // 기존 타이머를 초기화합니다.
    time = 20; // 3분으로 다시 설정합니다.
}

let timerInterval; // 타이머 setInterval의 참조를 저장하기 위한 변수


const remainingMin = document.getElementById("remaining__min");
const remainingSec = document.getElementById("remaining__sec");
const completeBtn = document.getElementById("userNum");
var get__number = document.getElementById("send");

let time = 180;

const takeTarget = () => {
   $('.target__time').show();
    timerInterval = setInterval(function () {
     if(time == 0){
        $('#userNum').attr('disabled', true);
        $('#complete').attr('disabled', true);
        resetTimer();
       }
     else if (time > 0) { // >= 0 으로하면 -1까지 출력된다.
        $('#send').attr('disabled', true);
        $('#phone').attr('disabled', true);
        $('#userNum').attr('disabled', false);
        $('#complete').attr('disabled', false);
         time = time - 1; // 여기서 빼줘야 3분에서 3분 또 출력되지 않고, 바로 2분 59초로 넘어간다.
         let min = Math.floor(time / 60);
         let sec = String(time % 60).padStart(2, "0");
         remainingMin.innerText = min;
         remainingSec.innerText = sec;
    } else {
      $('#userNum').attr('disabled', true);
    }

  }, 1000);
};
</script>

<%@ include file="footer.jsp"%>
 <!-- 내가 만진 부분-->     
 <footer class="footer1400">
        <div id="footer__box" class="footer__inner txt__subtit">
          <div class="flex">
            <ul>
              <li><a href="/notice/list">공지사항</a></li>
              <li class="line" style="border-left: 1px solid grey; height: 14px; padding-right: 18px;"></li>
              <li><a href="/contact/forms">제휴 및 입점문의</a></li>
              <li class="line" style="border-left: 1px solid grey; height: 14px; padding-right: 18px;"></li>
              <li><a href="/qna/list">문의하기</a></li>
              <li class="line" style="border-left: 1px solid grey; height: 14px; padding-right: 18px;"></li>
              <li><a href="/faq">자주 묻는 질문</a></li>
              <li class="line" style="border-left: 1px solid grey; height: 14px; padding-right: 18px;"></li>
              <li><a href="/help/policy">이용약관</a></li>
                   <c:if test="${sessionScope.mgrade eq 4}"><a href="./admin/main">관리자페이지</a></c:if>             
            </ul>
          </div>
          <hr style="margin-top:12px; margin-bottom: 20px; width: 100%;">
          <div class="contact-social">
          <div>
            <img style="width: 96px;margin-left: 4px;" src="./img/JustSharelogo.png" alt="">
            <p>서울특별시 강남구 테헤란로7길 7 에스코빌딩 6~7층<br>
            TEL : <a href="tel:010-1111-2222">010-1111-2222</a> &nbsp;&nbsp;사업자등록번호 : 000-00-00000 <br>
            <a href="mailto:valuevenue@valuevenue.co.kr">JustShare@valuevenue.co.kr</a> </p>
          </div>
        </div>
        </div>
      </footer>
    </div>

  </body>
</html>