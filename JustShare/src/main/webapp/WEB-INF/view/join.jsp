<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
   <!--  <link rel="stylesheet" href="./css/join.css"> -->
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
	
	      $("#pw2").on('input', function() {
	         let pw1 = $("#pw1").val();
	         let pw2 = $(this).val();
	
	         if (pw1 == pw2) {
	            $("#pwresultForm").css("color","green").text("비밀번호가 일치합니다.");
	            return;
	         } else {
	            $("#pwresultForm").css("color","red").text("비밀번호가 일치하지 않습니다.");
	         }
	      });
	      
	      $("#joinjoin").click(function(){
	         let mid = $("#mid").val();
	         let pw1 = $("#pw1").val();
	         let pw2 = $("#pw2").val();
	         let mname = $("#mname").val();
	         let mphone = $("#mphone").val();
	         let mbirth = $("#mbirth").val();
	         
	          if (!isIdChecked) {
	             Swal.fire("아이디 중복 검사를 실행하세요.");
	              return false; // 회원가입 종료
	           }
	         if (pw1 != pw2) {
	            Swal.fire("비밀번호를 확인하세요.");
	            return false;
	         }
	         if (mname.length > 4 || mname.length == "" || mname.length <= 1) {
	            Swal.fire("이름을 정확히 입력해주세요.");
	            return false;
	         }
	         if (mphone.length != 11) {
	            Swal.fire("핸드폰 번호 11자리를 정확히 입력해주세요.");
	            return false;
	         }
	       if (mbirth.length < 10 ) {
	            Swal.fire("생년월일을 정확히 입력해주세요.");
	            return false; 
	         
	       
	       
	       }
	       
	       
	       // 메일주소검사
	     	let option = $("#selectBox option:selected").val();      // 선택한 메일주소값 뽑아내기
	     	
	     	if(option != "-선택-"){
	     		
		     // gogus228
				let Fmail = $(this).parent('div').siblings(".emailBox").children("#memail").val();
				//alert(Fmail);   
				
				if(Fmail != null && Fmail != ""){
					// hanmail   net
					let items = option.slice(1).split(".");	
					let first = items[0];	// hanmail
					let second = items[1];	// net
					
					// 메일주소 앞부분 입력값검사
					let replaceKorean = /[ㄱ-ㅎㅏ-ㅣ]/gi;
					let replaceChar = /[~!@\#$%^&*\()\-=+_'\;<>\/.\`:\"\\,\[\]?|{}]/gi;
				
					if(Fmail.match(replaceKorean) || Fmail.match(replaceChar)){
						Fmail = Fmail.replace(replaceKorean, "").replace(replaceChar, "");
						Swal.fire("올바른 메일주소를 입력해주세요")
						$("#memail").val("");
						$("#Opt").prop("selected", true);
						return false; 
					}
					
					let Final = Fmail + "@" + first + "." + second;
					console.log(Final);	// gogus228@gmail.com
					let memail = $("#memailF").val(Final);
				} else {
					Swal.fire("올바른 메일주소를 입력해주세요");
					return false; 
				} 
			
	     	} else {
				Swal.fire("올바른 메일주소를 입력해주세요");
				return false; 
	     }	
	     	 document.getElementById("myForm").submit();	
	     	
	  	});
	       
	 });
	  
	  
	
		
		/* function strToInt(str) {
			if(str.length > 11 || str.length < 10){
				alert("다시 입력하세요...");
				return false;
			}
			
		    for (let i = 0; i < str.length; i++) {
		        if (isNaN(parseInt(str[i]))) {
		            // 숫자가 아닌 문자가 중간에 포함된 경우
		            alert("숫자만 입력하세요...");
		            return false;
		        }
		    }
		    // 숫자로만 이루어진 문자열을 정수로 변환하여 반환
		    return parseInt(str);
		}
		
		function update(){
			$("#phone2").attr("disabled",false);
	   		$("#phone2").attr("placeholder","인증번호를 입력하세요...");
	   		$("#phoneChk").attr("disabled",true);
	   		$("#phoneChk2").attr("disabled",false);
	   		$(".successPhoneChk").text("인증번호를 입력한 뒤 본인인증을 눌러주십시오.");
	   		$(".successPhoneChk").css("color","green");
	   		$("#phone").attr("readonly",true);
		}
		$(function(){
			window.addEventListener('ssc_wheel', function(event) {
				event.preventDefault();
			}, {passive:false});
		});
	   */ 
	  
	
	</script>
	
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
<%@ include file="menu.jsp" %>  
 
         
   
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
					<!-- <input type="hidden" name="act" value="register">
					<input type="hidden" name="member_type" id="member_type" value="normal">
					<input type="hidden" name="agree_sms" id="agree_sms" value="0">
					<input type="hidden" name="agree_email" id="agree_email" value="0">
					<input type="hidden" name="user_limit" id="user_limit" value="N"> -->
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
											 <input class="input" type="text" name="mid" id="mid" placeholder="아이디를 3글자 이상 입력해 주세요"/>
											<button type="button" id="idCheck" class="btn_black id_mo_ma">중복확인</button>
											<br> <span id="resultMSG"></span>
										</div>
										
										 <!-- <div class="label-row" style="height:20px" id="resultForm">
                                         <div class="label-name"></div>
                                         <div class="label-in">
                                         <span id="resultMSG"></span>
                                           </div>
                                           </div> -->
									</td>
								</tr>
							
								<tr class="border_bottom">
									<th><label for="user_email">이메일</label><span aria-hidden="true">*</span></th>
									<td>
										<div class="id_mo f_ex">
											<input type="text" name="user_email" id="user_email" class="required input_border" placeholder="이메일을 입력해주세요." aria-required="true" data-name="이메일은"/>
											<button type="button" class="btn_black id_mo_ma" onclick="email_chk();">중복확인</button>
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
											<input class="required input_border" type="tel" name="user_phone" id="user_phone" placeholder="'-'없이 입력해주세요." aria-required="true" data-name="휴대폰번호는"/>
											<button type="button" class="btn_black id_mo_ma" onclick="phone_chk();">중복확인</button>
										</div>
										<span class="warningTxt2" id="user_phone_notice"></span>
										<input type="hidden" id="user_phone_nohypen" name="user_phone_nohypen" value="">
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
									 <input class="input" type="text" name="maddr" id="maddr1" placeholder="상세주소를 입력해 주세요"/><br><br>
									
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
      $('#remaining__min').text('0');
       $('#remaining__sec').text('03');
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

let time = 20;

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
<script>

	$("#user_birthday").on("keyup",function(key){

	  // 사용자 입력값은 모두 숫자만 받는다.(나머지는 ""처리)
		user_birthday	= $(this).val().replace(/\D/g, "");
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

	


let id_confirm = false;
let id_validation = false;
let email_confirm = false;
let email_validation = false;
let pw_confirm = false;
let pw_validation = false;
let phone_confirm = false;
let phone_validation = false;

$("#user_email").keyup(function(){
	let email = $(this).val();
	let email_regex = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;

	if(email_regex.test(email) == false){
		$("#user_email_notice").html('이메일(아이디)를 정확히 입력해 주세요.');
		email_validation = false;
	}else{
		$("#user_email_notice").html('');
		email_validation = true;
	}

});

function email_chk(){
	if(email_validation === false){
        alert("입력하신 이메일을 확인해주세요.");
		email_confirm = false;
        return false;
    }else{

		$.ajax({
			url:'./emailchk',
			type: 'post',
			data: {"mid":mid},
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

document.querySelector('#user_phone').addEventListener('input', evt  => {
    evt.target.value = evt.target.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');
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
	if(phone_validation === false){
        alert("입력하신 휴대폰 번호를 확인해주세요.");
        return false;
    }else{


		$.post( '/member/join', {
			act: 'is_phone',
			user_phone: $('#user_phone').val().trim(),
			user_phone_nohypen: $('#user_phone_nohypen').val().trim()
	    }).done(function( data ) {
			if(data){
				alert("중복되는 휴대폰번호가 존재합니다.\n다른 휴대폰번호를 사용해주세요.");
				document.querySelector('#user_phone').readOnly = false;
                $("#user_phone").focus();
				$("#user_phone").val('');
				$("#user_phone_nohypen").val('');
				$("#user_phone_notice").html('휴대폰 번호를 다시 입력해주세요.');
                phone_confirm = false;
			}else{
				if(confirm("사용할 수 있는 휴대폰번호입니다.\n입력하신 휴대폰번호를 사용하시겠습니까?")){
					phone_confirm = true;
                    const phone_input = document.querySelector('#user_phone')
                    phone_input.readOnly = true;
					$("#user_phone_notice").html('');
                    //phone_input.nextSibling.nextSibling.remove();
                }
			}
        }, "json");
	}
}

function form_check(){	

	if(email_confirm === true && pw_confirm === true && phone_confirm === true){

		if(confirm("입력하신 정보로 회원가입을 진행합니다.")){
			$("#mf").submit();
		}else{
			return false;
		}
	}else{

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




</body>
</html>