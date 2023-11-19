<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<main>
		<div class="page-loader">
	
		</div>
		<div class="main">
			<div class="container">
				<div class="row">
					<div class="col-sm-6 col-sm-offset-3">
						<h1 class="module-title font-alt">회원정보 수정</h1>
					</div>
				</div>
			</div>
		 
          <div class="container">
            <div class="row">
            <form action="./infoChange" method="post" class="row" onsubmit="return validateForm()">
              <div class="col-sm-8 col-sm-offset-2">
                  <div class="form-group">
                    아이디 : <p style="display: inline" id="name" class="menu-title">${info.mid}</p>
                    <div>
                    	<input name="id" id="id" class="menu-title" type="text" placeholder="아이디"/>
                    	<input name="idchk" id="idchk" class="menu-title" type=button value="아이디 중복 확인"/>
                    	&nbsp;<span style="color: red;" id="idchkMsg"></span>
                    	<input id="idchkhidden" type="hidden"></input>
                  	</div>
                  </div>
                  <div class="form-group">
                    새 비밀번호  <input name="pw" style="width: 300px;" class="menu-title" id="pw" type="password" placeholder="새 비밀번호를 입력해주세요."/>
                  </div>
                  <div class="form-group">
                    비밀번호 확인  <input style="width: 300px;" class="menu-title input-sm" id="pwchk" type="password" placeholder="새 비밀번호를 한 번 더 입력해주세요."/>
                  	&nbsp;<span style="color: red;" id="pwchkMsg">비밀번호와 일치하지 않습니다.</span>
                  </div>
                  <div class="form-group">
                    이름 : <p style="display: inline" id="name" class="menu-title">${info.mname}</p>
                  </div>
                  <div class="form-group">
                  	주소 :
                  	<p style="display: inline" class="menu-title">${info.maddr}</p>
                  	
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
                  	
                  <div class="form-group">
                    생년월일 : <p style="display: inline" class="menu-title">${info.mbirth}&nbsp;</p>
				      <div><input name="birth" id="birth" type="date" min="1900-01-01"></div>
                  </div>
				<div class="form-group">
                  	이메일 : <p style="display: inline" class="menu-title">${info.memail}&nbsp;</p>
                  	<div class="form-group divEmail"  id="divEmail">
					<span class="form-group"><input type="text" id="emailId" name="emailId"/></span>
					<span class="at">@</span>
					<span class="menu-title">
	                  	<select id="selectEmailDomain" name="selectEmailDomain">
							<option selected="selected" value="naver.com">naver.com</option>
							<option value="kakao.com">kakao.com</option>
							<option value="daum.net">daum.net</option>
							<option value="nate.com">nate.com</option>
							<option value="gmail.com">gmail.com</option>
							<option value="5">직접 입력</option>
						</select>
					</span>
					<!-- 직접 입력시 노출 -->
					<input type="text" id="emailDomain" name="emailDomain" class="emailInput" value="" style="display: none"/>
					<div>
                    	<input name="emailchk" id="emailchk" class="menu-title" type=button value="이메일 중복 확인"/>
                    	&nbsp;<span style="color: red;" id="emailchkMsg"></span>
                    	<input id="emailchkhidden" type="hidden"></input>
                  	</div>
                  </div>
              	</div>
                  <hr>
                  <button type="submit" class="btn infobtn">회원정보 변경</button>
              	</div>
		    </form>
            </div>
            
          </div>
		</div>
	</main>
</body>
</html>