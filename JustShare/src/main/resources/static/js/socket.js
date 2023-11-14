




	const socket = new SockJS("//localhost:8080/chat");
	//const socket = new WebSocket("ws://localhost:8080/chat");
	 let msgcount=0;
	 //let mid = sessionStorage.getItem("mid");

//로그아웃에 이기능 추가
	function logoutAndCloseSocket() {
	    // 여기서 WebSocket 연결을 닫는 코드를 추가
	    var mid = sessionStorage.getItem("mid"); 
	    
	    
            
	    if(mid!=null) { 

		var jsonmsg={
			
			"mid":mid,
			"close":"연결해제"
			
		}
		
		   // 메시지를 보내고, 성공적으로 보내졌을 때 WebSocket 연결을 닫음
        socket.send(JSON.stringify(jsonmsg), function() {
            // WebSocket 연결이 성공적으로 닫혔을 때 실행되는 코드
            socket.close();
            window.location.href = './logout';
        });
    } else {
        // mid가 없는 경우에는 그냥 로그아웃만 수행
        window.location.href = './logout';
    }
}
	 //socket.send(JSON.stringify(jsonmsg));
		
	    //}
	  //window.location.href = './logout';
	



 
socket.onopen = function(event) {
 //
    // 웹소켓이 연결되었을 때 실행할 공통 코드
 var mid = sessionStorage.getItem("mid");
const noteNumElement = document.querySelector('.note-num');

if (mid === null || mid == "null") {
       console.log("세션이 없어 웹소켓 연결을 수행하지 않습니다.");

    } else {
	 console.log("커넥션이 만들어졌습니다.js");
        socket.send(JSON.stringify({ "mid": mid }));
	
	getmsgcount(function(msgcount) {
  
   


	if (msgcount == 0) {
      		noteNumElement.style.display = 'none';
      		noteNumElement.textContent = msgcount;
      	  }else{
      	noteNumElement.style.display = 'block';
		noteNumElement.textContent = msgcount;
}
});

    }


}





	socket.onmessage = function(event) {
		 //var json=0;
		 var mid = sessionStorage.getItem("mid");
	var currentScreen = getCurrentScreen();

	var socketdata = JSON.parse(event.data);
	

  

		if(currentScreen =="1"||currentScreen =="contacts_card" ||currentScreen=="msgload" ) {
	getmsgcount(function(msgcount) {
		
	
if ("message" in socketdata && "sender" in socketdata && "time" in socketdata ) {  //일반메시지전송

    	 var mid = sessionStorage.getItem("mid");
   		var sender = socketdata.sender;
    var bno = socketdata.bno;
    	$.ajax({
                type: "GET",
                url: "./firstmsgchk", 
             
                data: {
                	
                	"mid" : mid,
                	"sender": socketdata.sender
              
                
                	},
               	
                success: function(data) {
                	
                    
                	
                var jsonData = JSON.parse(data); 
                var json = jsonData.result;
                

       
                if(json==0 || json==1) {
					
					
	if(currentScreen =="contacts_card" ||currentScreen=="msgload" ||currentScreen=="1" ) {
						

					  toastr.options = {
                closeButton: true,
                progressBar: true,
                showMethod: 'slideDown',
                preventDuplicates:true,
                
                positionClass: 'toast-top-center',
                timeOut: 2000,
                onShown: function() {
				       	
				  },
				    
				 onclick: function() {
				 	
	   				
			 		
			  var result = confirm("채팅창으로 이동 하시겠습니까?");
				 		
					  if(result) {
			 location.href='/chat1?';
			 

					  }
						 
			}
                
            },
            
            
            
            
            toastr.success(""+socketdata.sender+'님과 첫 대화가 시작 되었습니다.',"알림" );
            } 
		
		
				}
			 
             
		  },
		  error: function() {
    		
    	}
        
});


	var noteNumElement = document.querySelector('.note-num');


      	  if (msgcount == 0) {
      		noteNumElement.style.display = 'block';
      		noteNumElement.textContent = 1;
      	  }else{
      	noteNumElement.style.display = 'block';
		if(msgcount<99) {
  			msgcount +=1;
			noteNumElement.textContent = msgcount;
		}
      		  
      	  }	


	} else if("mid" in socketdata && "sender" in socketdata && "firstmsg" in socketdata
				&& !("toId" in socketdata)){
		
		    	
		var noteNumElement = document.querySelector('.note-num');


      	  if (msgcount == 0) {
      		noteNumElement.style.display = 'block';
      		noteNumElement.textContent = 1;
      	  }else{
      	noteNumElement.style.display = 'block';
		if(msgcount<99) {
  			msgcount +=1;
			noteNumElement.textContent = msgcount;
		}
      		  
      	  }	
			
  		
		
	} else if("toId" in socketdata && "mid" in socketdata && "bno" in socketdata
    		 &&"fromchk" in socketdata && !("tochk" in socketdata)
    		 && !("time" in socketdata)) { //거래창업데이트
    
    	var toId = socketdata.toId;
    	var mid = socketdata.mid;
    	var bno = socketdata.bno;
    	var fromchk = socketdata.fromchk;
    
		 
        	if(fromchk=1) {
        	jstradefromupdate(mid,toId,bno);
        	
      }
    
    
 	}else if("toId" in socketdata && "mid" in socketdata && "bno" in socketdata
		 && "tochk" in socketdata && !("fromchk" in socketdata)
		 && !("time" in socketdata)) {
 		
 		var toId = socketdata.toId;
    	var mid = socketdata.mid;
    	var bno = socketdata.bno;
    	var tochk = socketdata.tochk;
	 
	
     	//여기부터
     		if(tochk==1) { 
				 	jstradetoupdate(mid,toId,bno);

	 }
	 
 } 
	
	
			});	
	}
	}
	

function jstradefromupdate(mid,toId,bno) {
    // 모든 user_info1 엘리먼트를 찾기
    
		 //alert(toId);
			
			
			toastr.options = {
				    closeButton: true,
		 		    progressBar: true,
				    showMethod: 'slideDown',
				    preventDuplicates:true,
				    
				    positionClass: 'toast-top-center',
				    timeOut: 2000,
				    onShown: function() {
				       	
				    },
				    
				     onclick: function() {
				 	
	   				
			 		
					  var result = confirm("거래 화면으로 이동 하시겠습니까?");
				 		
					  if(result) {
			 location.href='/chat1?toId='+mid+'&bno='+bno+'';
			 
	   	

		
	

					  }
						 
			}
				};

				toastr.success("" + mid + '님이 거래를 요청 하셨습니다.', "알림");
		

		}
       
	


//##to가from일떄 to업하기 
function jstradetoupdate(mid,toId,bno){
		
	
		
			toastr.options = {
				    closeButton: true,
				    progressBar: true,
				    showMethod: 'slideDown',
				    preventDuplicates:true,
				    
				    positionClass: 'toast-top-center',
				    timeOut: 2000,
				    onShown: function() {
				
				        
				       		
				    },
				    onclick: function() {
				 	
	   				
			 		
					  var result = confirm("거래 화면으로 이동 하시겠습니까?");
				 		
					  if(result) {
			 location.href='/chat1?toId='+mid+'&bno='+bno+'';
			 

					  }
						 
			}
				    
				    
				    
				};

				toastr.success("" + mid + '님이 거래를 요청 하셨습니다.', "알림");
			
		}
	





//##현재화면을 확인후 메시지 전달 할지 체크 ( 숨겨짐여부까지 확인가능)
 	function getCurrentScreen() {
 	    var contactsCard = document.querySelector('.contacts_card');
 	    var msgLoad = document.getElementById('msgload');

 	    if (contactsCard && window.getComputedStyle(contactsCard).display !== 'none') {
 	        return 'contacts_card';
 	    } else if (msgLoad && window.getComputedStyle(msgLoad).display !== 'none') {
 	        return 'msgload';
 	    }
 	    
 	    return '1'; // 
 	}
  

function getmsgcount(callback) {  //mid에 저장된 새 메시지 총개수 가져오기
	
	

 var mid = sessionStorage.getItem("mid");
 


			$.ajax({
                    type: "GET",
                    url: "./msgcount", 
                    data: {
                    	"mid" : mid
                    
                    	},
                   	
                    success: function(data) {
                    	
                    
                    	
                    	const jsonData = JSON.parse(data); 
                    	
                    	
                    	if(jsonData.result != null){
                     msgcount= jsonData.result;
                    
						callback(msgcount);
						}
			
},
            error: function() {
        		
        	}

});

};





//}//소켓메시지 끝

	
	
