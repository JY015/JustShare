package com.js.web.chat;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SocketService {
	
	@Autowired
	SocketDAO socketDAO;


	public List<Map<String, Object>> serchid(Map<String, Object> map) {
		
		 String toId = (String) map.get("toId");
	        String id = (String) map.get("id");
	    
		if (isFirstConversation(toId, id)) {
            // 첫 대화인 경우 초기 메시지를 데이터베이스에 삽입
     
			
		System.out.println("첫대화");
			map.put("toId", toId); // f
			map.put("id", id); // f
			map.put("message", "");
			//System.out.println(map.toString());
			socketDAO.Firstmsg(map);
		
			
        }
		
		
		
		return socketDAO.serchid(map);
	}


	public int msginsert(JSONObject jsonObject) {
		
		  Map<String, Object> map = new HashMap<>();
		    jsonObject.keys().forEachRemaining(key -> map.put(key, jsonObject.get(key)));
	
		
		return socketDAO.msginsert(map);
	}
	
	public boolean isFirstConversation(String toId,String id) {
		  Map<String, Object> map = new HashMap<>();
		  map.put("toId", toId);
		  map.put("id", id);
		
			int result =socketDAO.isFirstConversation(map);
			
			if(result ==0) {
				//System.out.println("firstmsg0 :"+result);
				return true;
			}
			
			//System.out.println("firstmsg1 :"+result);
			
				
		return false;
		
		
	}


	public String imgserch(Map<String, Object> map) {
		
		return socketDAO.imgserch(map);
	}


	public List<Map<String, Object>> roomload(Map<String, Object> map) {
	
		return socketDAO.roomload(map);
	}

}
