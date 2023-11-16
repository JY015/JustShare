<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scaleable=no, maximum-scale=1" />
   <meta name="description" content="가치공간은 가능성 속 잠재된 가치를 발굴하며, 공간 소유자에게는 유휴공간의 재발견을, 브랜드에게는 홍보의 장을, 소비자에게는 새로운 경험을 선사합니다"/>
    <title>Just Share</title>
   <link rel="canonical"  href="https://www.valuevenue.co.kr/"/>
    <link rel="stylesheet" href="/css/fullcalendar.css" />
    <link rel="stylesheet" href="/css/import.css?ver=20000120" />
   <link rel="stylesheet" href="/css/style.css?ver=20000120" />
   <link rel="stylesheet" href="/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="/css/valuevenue.css?ver=20000120" />
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
   <link rel="stylesheet" href="/css/listpage.css?ver=20000120">
   <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"> 
   <link rel="stylesheet" href="/css/main_page.css" />
   <link rel="stylesheet" href="/css/join.css" />

   <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
   
   
   <meta property="og:locale"       content="ko_KR" />
   <meta property="og:type"       content="website" />
   <meta property="og:title"       content="팝업스토어 NO.1 가치공간 - 온라이프(On-Life) 리테일 플랫폼" />
   <meta property="og:description"  content="가치공간은 가능성 속 잠재된 가치를 발굴하며, 공간 소유자에게는 유휴공간의 재발견을, 브랜드에게는 홍보의 장을, 소비자에게는 새로운 경험을 선사합니다" />
   <meta property="og:url"          content="https://www.valuevenue.co.kr/" />
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
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>   
    <script src="/js/owl.carousel.min.js"></script>
    <script src="/js/common.js?ver=20000120" defer></script>
    <script src="/js/cookie.js?ver=20000120" defer></script>
<script>
var _ss_user_id   = "";
</script>

  <%@ include file="header.jsp"%>
<body>


<script src="./js/jquery-3.7.0.min.js"></script>
<script>
$(function(){

   $("#midCheck").click(function(){
	   let mid = $("#mid").val();
	   let mid_reg = /^[a-zA-Z0-9]+$/;

	   if (mid == "" || mid.length < 5) {
	       $("#mid").focus();
	       $("#midMsg").text("아이디는 5자리 이상 입니다.");
	       $("#midMsg").css("color", "red");
	       return false;
	   }

	   if (!mid_reg.test(mid)) {
	       $("#mid").focus();
	       $("#midMsg").text("아이디는 영어와 숫자만 사용가능합니다.");
	       $("#midMsg").css("color", "red");
	       return false;
	   }
      
      
      $.ajax({
         url:"./checkID",
         type:"post",
         data:{"mid":mid},
         dataType:"json",
         success:function(data){
            if(data.result==1){

               $("#midMsg").text("중복된 아이디입니다.");
               $('#midMsg').css("color","red");
               $('#mid').css("border","1px solid red");

            }else{
               $("#midMsg").text("사용할 수 있는 아이디입니다.");
               $('#mid').css("border","1px solid #666666");
               $('#midMsg').css("color","red");
               $('#mphone').prop('readonly', false);
 
            }
         },
         error:function(request, status, error){
            $("midMsg").text("오류가 발생함")
         }
      });
   });
   
    $(".button_join").click(function() {
      let mid = $("#mid").val();
      let mpw = $("#mpw").val();
      let mname = $("#mname").val();
      let memail = $("#memail").val();
      let mbirth = document.getElementById("mbirth").value;
      let maddr = $("#maddr").val();
      let maddr2 = $("#maddr2").val(); 
      let mphone = $("#mphone").val();

      let num_reg = /[^0-9]/g; //mid, mpw, mphoneno
      let mname_reg =  /[^ㄱ-ㅎ|ㅏ-ㅣ|가-힣|a-zA-Z]/; //한글 영어만
      let engNum_reg =  /^[a-zA-Z0-9]*$/ // 영어 숫자만
      
      // test()는 인수로 전달된 문자열에 특정 패턴과 일치하는 문자열이 있는지를 검색합니다
      // test()는 패턴과 일치하는 문자열이 있으면 true를, 없으면 false를 반환합니다
          
          
      if (mpw == "" || mpw.length < 8) {
         $("#mpw").focus();
         $("#mpwMsg").text("비밀번호는 8자리 이상입니다.");
         $("#mpwMsg").css("color", "red");
         return false;
      }
         
      if (num_reg.test(mpw)) {
         $("#mpw").focus();
         $("#mpwMsg").text("숫자만 입력해주세요.");
         $("#mpwMsg").css("color", "red");
         return false;
      }     
      
      if (memail == "") {
         $("#memail").focus();
         $("#memailMsg").text("이메일을 입력해주세요.");
         $("#memailMsg").css("color", "red");
         return false;
      }
      
      if (mname == "" || mname.length < 2) {
         $("#mname").focus();
         $("#mnameMsg").text("이름은 2글자 이상 한글/영어만");
         $("#mnameMsg").css("color", "red");
         return false;
      }
      
      if (mname_reg.test(mname)) {
         $("#mname").focus();
         $("#mnameMsg").text("영어, 한글만 입력해주세요.");
         $("#mnameMsg").css("color", "red");
         return false;
      } 
      

         if (maddr == "") {
            $("#maddrMsg").text("주소를 입력해주세요.");
            $("#maddrMsg").css("color", "red");
            return false;
         }
         
         if (maddr2 == "") {
            $("#maddr2").focus();
            $("#maddrMsg").text("상세주소를 입력해주세요.");
            $("#maddrMsg").css("color", "red");
            return false;
         }

         if (mbirth === "") {
            $("#mbirthMsg").focus();
            $("#mbirthMsg").text("생년월일을 선택하세요");
            $("#mbirthMsg").css("color","red");
            return false;
         }
          
         if (mphone == "" || mphone.length != 11) {
            $("#mphone").focus();
            $("#mphoneMsg").text("핸드폰번호는 11자리 입니다.");
            $("#mphoneMsg").css("color", "red");
            return false;
         }

         if (num_reg.test(mphone)) {
            $("#mphone").focus();
            $("#mphoneMsg").text("핸드폰번호에 숫자만 사용할 수 있습니다.");
            $("#mphoneMsg").css("color","red");
            return false;
         }
         
      })

   });
</script>

</head>
<body>
<div class="findId-form">
     <form action="./join" method="post" class="container">
    <div class="text_find_id">
	<h4>회원가입</h4>
    </div>  
    	 <label for="mname">아이디</label><br>
         <input type="text" name="mid" id="mid" placeholder="아이디" maxlength="15">
	<button type="button" id="midCheck"> 중복확인</button>
	<br>
	<span id="midMsg" class="tip"></span>
	<br><br>        
	
<label for="mname">핸드폰번호</label><br>
         <input class="mphone" type="text" id="mphone" name="mphone" placeholder="핸드폰번호" maxlength="11" readonly="true"/>   <!-- 인증번호 받을사람 휴대폰 번호 -->
		<span id="mphoneMsg" class="tip"></span>
		<br>
		<button type="button" id="send" class="get__number" onclick="takeTarget()">인증번호받기</button> <!-- 문자보내는 전송버튼 -->
		<input class="input__target" id="userNum" type="text" maxlength="6" placeholder="인증번호입력" disabled="disabled" />
		<span class="target__time">
		<span id="remaining__min">3</span> :
		<span id="remaining__sec">00</span><br>
		<span id="input__target_msg"></span>
		</span>
                         <span id="mphoneMsg2" class="tip"></span><br>
		<button type="button" class="complete__target" id="complete" disabled="disabled">확인</button>  <!-- 인증번호와 내가 입력창에 입력한 인증번호 비교하는 창 -->
		<br><br>  

		 <label for="mname">비밀번호</label><br>
		         <input type="password" name="mpw" id="mpw" placeholder="비밀번호"  maxlength="16" disabled="disabled">
			<span id="mpwMsg" class="tip"></span>
			<br><br>    
		
		<label for="mname">이메일</label><br>
		         <input type="text" name="memail" id="memail" placeholder="이메일" maxlength="32" disabled="disabled">
			<span id="memailMsg" class="tip"></span>
			<br><br>    
		
		<label for="mname">이름</label><br>
		           <input type="text" name="mname" id="mname" placeholder="이름" maxlength="10" disabled="disabled">
		            <span id="mnameMsg" class="tip"></span>
			<br><br>
		
		<label for="mname">주소</label><br>
			<input type="text" name="maddr" id="maddr" placeholder="주소" maxlength="25" disabled="disabled"><br>
		             <input type="text" name="maddr2" id="maddr2" placeholder="상세주소"  maxlength="25" disabled="disabled">
		             <span id="maddrMsg" class="tip"></span>
			<br><br>
		
		<label for="mname">생년월일</label><br>
			<input type="date" name="mbirth" id="mbirth" placeholder="생일" disabled="disabled" width="100%!important;">
		             <br>
		             <span id="mbirthMsg" class="tip"></span>
			<br><br>
		
		  <div class="button-container">
		         <button type="button" style=" border: solid 1px #020202 !important; margin-right: 10px!important; color:black !important; background-color: white !important;" onclick="location.href='./'">취소</button>
		        <button type="submit" class="button_join" disabled="disabled">회원가입</button> 
		        </div>
		</form>
		</div>


</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
window.onload = function(){
    document.getElementById("maddr").addEventListener("click", function(){ //주소입력칸을 클릭하면
        //카카오 지도 발생
        new daum.Postcode({
            oncomplete: function(data) { //선택시 입력값 세팅
                document.getElementById("maddr").value = data.address; // 주소 넣기
                document.querySelector("input[name=maddr2]").focus(); //상세입력 포커싱
            }
        }).open();
    });
}

</script>
<script type="text/javascript">

$('.target__time').hide()
$('#send').click(function() {
      
	$('.target__time').css('color','red');
	let mphone = $('#mphone').val();
	 let num_reg = /[^0-9]/g;
	
	  if (mphone.length !== 11) {
	        // 휴대폰 번호가 11자리가 아닌 경우 처리
	        resetTimer();
	        $("#mphone").focus();
	        $("#mphoneMsg").text("핸드폰번호는 11자리여야 합니다.");
	        $("#mphoneMsg").css("color", "red");
	        $(".complete__target").prop('disabled', false);
	        return false;
	    }
	  
	  if (num_reg.test(mphone)) {
		  resetTimer();
          $("#mphone").focus();
          $("#mphoneMsg").text("핸드폰번호에 숫자만 사용할 수 있습니다.");
          $("#mphoneMsg").css("color","red");
          return false;
       }
	
	   $('.input__target').prop('disabled', false);
	
	$.ajax ({
		url: '/checkSms',
		type: 'GET',
		data: {
			"mphone" : mphone
		},
		success: function(data) {
			const checkNum = data;
			alert('checkNum:'+ checkNum);
			

			$('#complete').click(function() {	
				const userNum = $('#userNum').val();
				
				if(checkNum === userNum) {
					
					alert('인증이 완료되었습니다.')
					 $('#mphone').prop('disabled', true);
					$('#userNum').prop('disabled', true);
					$('#send').prop('disabled', true);
					$('.target__time').empty();
					$('#complete').hide();
					$('#input__target_msg').empty();
					$('.target__time').css('color','green');
					$('.button_join').prop('disabled', false);
					$('#mphoneMsg2').empty();
		               $('#mpw').attr('disabled', false);
		               $('#memail').attr('disabled', false);
		               $('#mname').attr('disabled', false);
		               $('#maddr').attr('disabled', false);
		               $('#maddr2').attr('disabled', false);
		               $('#mbirth').attr('disabled', false);
		               $('#send').text("인증완료");
					clearInterval(timerInterval)
				}
				else {
					$("#mphoneMsg2").text("인증번호가 틀립니다. 다시 입력해주세요.");
					$("#mphoneMsg2").css('color','red');
					$('#input__target_msg').css('color','black');
					$('.button_join').prop('disabled', true);


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
    $('#mphone').attr('disabled', false);
    clearInterval(timerInterval); // 기존 타이머를 초기화합니다.
    time = 3; // 3분으로 다시 설정합니다.
}

let timerInterval; // 타이머 setInterval의 참조를 저장하기 위한 변수


const remainingMin = document.getElementById("remaining__min");
const remainingSec = document.getElementById("remaining__sec");
const completeBtn = document.getElementById("userNum");

let time = 3;

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