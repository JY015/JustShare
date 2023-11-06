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
    <link rel="stylesheet" href="./css/join.css">
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
	                           $("#resultMSG").css("color", "greed").text("가입할 수 있습니다.");
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
	  
	  
	  
	  $('#send').click(function() {
			
			const to = $('#to').val();
			
			$.ajax ({
				url: '/check/sendSMS',
				type: 'GET',
				data: {
					"to" : to
				},
				success: function(data) {
					const checkNum = data;
					alert('checkNum:'+ checkNum);
					
					$('#enterBtn').click(function() {	
						const userNum = $('#userNum').val();
						
						if(checkNum === userNum) {
							alert('인증 성공하였습니다.');
						}
						else {
							alert('인증 실패하였습니다. 다시 입력해주세요.');
						}
					});
					
				}
			});
			
		});
	  
	  
	  $(function(){
			window.addEventListener('ssc_wheel', function(event) {
				event.preventDefault();
			}, {passive:false}); 
			   //휴대폰 번호 인증
			   var isphoneChecked = false; // ID 중복 확인 여부를 저장하는 변수
			   $(document).on("click", "#phoneChk", function() {
			   	var phone = $("#phone").val().trim();
			   	if (!strToInt(phone)) {
		            return; // 숫자로 변환되지 않으면 함수 종료
		        }
			   	alert("인증번호 발송이 완료되었습니다.\n휴대폰에서 인증번호 확인을 해주세요.");
			   	$.ajax({
			           type:"post",
			           url:"phoneCheck",// "phoneCheck?phone=" + phone하려면 밑에 data를 빼야함
			           data:{phone:phone},
			           success:function(data){
			        	    alert(data);
			           	    update();
			           		var clickCnt = 0;
			           	 $(document).on("click", "#phoneChk2", function() {
			           		if(data == $("#phone2").val().trim()){
			           			alert("본인 인증이 확인되었습니다.");
			           			$("#phoneChk2").attr("disabled",true);
			           			$("#phoneChk2").css("background-color",'green');
			           			isphoneChecked = true;
			           			/*$.ajax({
			           			   type:"post",
			     		           url:"phoneSave",
			     		           data:{phone:phone},
			     		           success:function(data){
			     		        	   location.href="./info";
			     		           }, error:function(error){
			     		        	   alert('에러');
			     		           }
			           			});*/
			           		} else if (clickCnt < 5){
			           			alert("인증 번호가 틀렸습니다. 다시 시도하세요.");
			           		} else if(clickCnt >= 5){
			           			alert("인증 번호를 다시 받으세요.");
			           			location.href = "./info";
			           		}
			           		clickCnt++;
			           	 });
		           		},
		           		error:function(error){
		           			alert("에러");
		           		}
			       });
			  });
		});
		
		function strToInt(str) {
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
  <form id="myForm" action="./join" method="post"> 
      <div class="join-div" align="center">
      <div style="text-align:center;">
<img alt="JustShare" src="./img/JustShare.png">
</div>
         
            <h1>회원가입<br></h1>
   
         <div>
            <div class="idBox">
               <input class="input" type="text" name="mid" id="mid" placeholder="아이디를 3글자 이상 입력해 주세요"/>
               <button id="idCheck" type="button" class="idbutton">중복검사</button>
               <br> <span id="resultMSG"></span>
            </div>
            <div class="label-row" style="height:20px" id="resultForm">
               <div class="label-name"></div>
               <div class="label-in">
                  <span id="resultMSG"></span>
               </div>
            </div>
         </div>
         <div>
            <div class="pwBox1">
               <input class="input" type="password" name="mpw1" id="pw1" placeholder="비밀번호를 입력해 주세요"/><br><br>
            </div>
            <div>
               <div class="poBox2">
                  <input class="input" type="password" name="mpw" id="pw2" placeholder="비밀번호를 다시 입력해 주세요"/>
                  <br>
                  <div class="label-row" style="height: 25px" id="pwresultForm">
                     <div class="label-name"></div>
                     <div class="label-in">
                        <span id="pwresultMSG"></span><br>
                     </div>
                  </div>
               </div>
               </div>
         </div>
               <div>
                  <div class="nameBox">
                     <input class="input" type="text" name="mname" id="mname" placeholder="이름을 입력해 주세요."/><br><br>
                  </div>
               </div>
               <div>
                  <div class="addrBox">
                     <input class="input" type="text" name="maddr" id="maddr" placeholder="주소를 입력해 주세요"/><br><br>
                  </div>
               </div>
               <div>
                  <div class="addrBox1">
                     <input class="input" type="text" name="maddr" id="maddr1" placeholder="상세주소를 입력해 주세요"/><br><br>
                  </div>
               </div>
               <div>
                  <div class="birthBox">
                     <input class="input"  type="date" name="mbirth" id="mbirth"/><br><br>
                  </div>
               </div>
           
           
         
              
<!--       <div class="form-group"> 전화번호 (숫자만 입력하세요.)
                      <div class="detail">
                      <input class="menu-title" type="text" id="phone" name="phone" placeholder="전화번호">
						<input class="btn" type="button" id="phoneChk" value = "인증번호 받기">	
						<br><br>
						<input class="menu-title" id="phone2" type="text" disabled required/>
						<input class="btn" type="button" id="phoneChk2" value = "본인인증" disabled="disabled">
						<div><span style="color: red;" class="point successPhoneChk">휴대폰 번호 입력후 인증번호 보내기를 해주십시오.</span></div>
						<input type="hidden" id="phoneDoubleChk"/>
					</div>
                  </div> -->
                  
                  
               
               <div>
                  <div class="phoneBox">
                     <input class="input" type="text" name="mphone" id="mphone" placeholder="전화번호를 입력해 주세요"/><br><br>
                  </div>
               </div>
               <div class="emailBox">
					<input class="input" type="text" id="memail" placeholder="이메일을 입력해 주세요" /><br> <br> 
					<select class="selectMail" id="selectBox" name="selectBox">
						<option id="Opt">-선택-</option>
						<option id="naver" value="@naver.com">@naver.com</option>
						<option id="gmail" value="@gmail.com">@gmail.com</option>
						<option id="hanmail" value="@hanmail.net">@hanmail.net</option>
						<option id="kakao" value="@kakao.com">@kakao.com</option>
					</select>
					<input type="hidden" name="memail" id="memailF"/>
				</div>
               	<div>
	               <br>
	               <button class="Jbutton" type="reset">취소</button>
	               <button class="Jbutton" type="button" id="joinjoin">가입</button>
               	</div>

      </div>
  </form>











</body>
</html>