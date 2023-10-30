

const socket = new WebSocket("ws://localhost:8080/chat");

socket.onopen = function(event) {
    // 웹소켓이 연결되었을 때 실행할 공통 코드
 var mid = sessionStorage.getItem("mid");

if (mid === null || mid === "null") {
       console.log("세션이 없어 웹소켓 연결을 수행하지 않습니다.");
       
    } else {
	 console.log("커넥션이 만들어졌습니다.js");
        socket.send(JSON.stringify({ "mid": mid }));
           
    }

};

  var count = 0;
var noteNumElement = document.querySelector('.note-num');
var currentScreen = getCurrentScreen();
socket.onmessage = function(event) {
	
    // 웹소켓으로부터 메시지를 수신했을 때 실행할 공통 코드


var data = JSON.parse(event.data);


//alert(noteNumElement.textContent);
if(currentScreen==1) {

//noteNumElement.style.display = 'block';
	handleNewMessage();
	alert(count);
}


};


function handleNewMessage() {
    count += 1;
    noteNumElement.textContent = count;
}


//##현재화면을 확인후 메시지 전달 할지 체크
function getCurrentScreen() {
    if (document.querySelector('.contacts_card')) {
        return 'contacts_card';
    } else if (document.getElementById('msgload')) {
        return 'msgload';
    }
    // 다른 상태에 따른 처리 추가 가능
    return '1';
}
