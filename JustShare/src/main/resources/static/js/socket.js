function logoutAndCloseSocket() {
       // 여기서 WebSocket 연결을 닫는 코드를 추가
       var mid = sessionStorage.getItem("mid"); 
       
             
       var result = confirm("로그아웃 하시겠습니까?");
                   
   if(result) { 
       
            
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
}