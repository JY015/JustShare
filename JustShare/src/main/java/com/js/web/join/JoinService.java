package com.js.web.join;


import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;


@Service
public class JoinService {
	
	@Autowired
	private JoinDAO joinDAO;
	
	public int join(Map<String, Object> map) {
		return joinDAO.join(map);
	}

	public int checkID(String mid) {
		return joinDAO.checkID(mid);
	}

	public String PhoneNumberCheck(String mphone)  {
		String api_key = "NCSEI7JKXTYEHEEK"	; 
		String api_secret ="DA6032CBYZVT8G1GX3FGJBKYB2S41D3B"; 
		Message coolsms = new Message(api_key, api_secret);
			
		Random rand  = new Random();
	    String numStr = "";
	    for(int i=0; i<6; i++) {
	       String ran = Integer.toString(rand.nextInt(10));
	       numStr+=ran;
	    }          

	    HashMap<String, String> params = new HashMap<String, String>();
	    params.put("to", mphone);    // 수신전화번호 (ajax로 view 화면에서 받아온 값으로 넘김)
	    params.put("from", "01082795878");    // 발신전화번호. 테스트시에는 발신,수신 둘다 본인 번호로 하면 됨
	    params.put("type", "SMS"); 
	    params.put("text", "JustShare 인증번호는 [" + numStr + "] 입니다.");

	    try {
			coolsms.send(params);
		} catch (CoolsmsException e) {
			e.printStackTrace();
		} 
	        
	    return numStr;

		    
	}
}