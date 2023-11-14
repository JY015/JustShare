package com.js.web.join;


import java.util.Map;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Controller
public class JoinController {
	
	@Autowired
	private JoinService joinService;
	
	@GetMapping("/join")
	public String join() {
	  return "join"; 
		}
	
	@PostMapping("/join")
	public String join(@RequestParam Map<String, Object> map) {
		System.out.println(map); 
		String combinedAddress =(String) map.get("maddr") + map.get("maddr2"); 
		
		 map.put("maddr", combinedAddress);
		 System.out.println(map);
		int result = joinService.join(map);
		
		if(result == 1) {
		
		return "redirect:/login";
	}else {
	return "redirect:/join";
}
	
	}

	
	//아이디 중복검사
	@ResponseBody
	@PostMapping("/checkID")
	public String checkID(@RequestParam("mid") String mid) {
		System.out.println("id : " + mid);
		int result = joinService.checkID(mid);
		JSONObject json = new JSONObject();
		json.put("result", result);
		return json.toString();
	}

	  
	// coolSMS 테스트 화면
	@GetMapping("/sms")
	public String mySms() {
		return "/phone";
	}
	    
	// coolSMS 구현 로직 연결  
	@GetMapping("/checkSms")
	public @ResponseBody String sendSMS(@RequestParam(value="mphone") String mphone) throws CoolsmsException {  	
		return joinService.PhoneNumberCheck(mphone);
	}

}