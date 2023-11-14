package com.js.web.join;


import java.util.Map;

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

	/*
	 * @Autowired private SmsUtil smsUtil;
	 */
	@GetMapping("/index")
	public String index() {
		
		return "index";
	}
	
	
	@GetMapping("/join")
	public String join() {
	  return "join"; 
		}
	
	@PostMapping("/join")
	public String join(@RequestParam Map<String, Object> map, @RequestParam("maddr1") String subAddress) {
		 String combinedAddress =(String) map.get("maddr")+','+subAddress;
		
		 map.put("maddr2", combinedAddress);
		 System.out.println(map);
		int result = joinService.join(map);
		
		if(result == 1) {
		
		return "redirect:/login";
	}else {
	return "redirect:/join";
}
	
	}
	
	/*
	 * @ResponseBody
	 * 
	 * @PostMapping("/phoneCheck")// 휴대폰 문자보내기 public String
	 * sendSMS(@RequestParam(name="phone", required = false) String phone,
	 * HttpSession session) { if(session.getAttribute("mid") != null) {
	 * System.out.println(phone); int randomNumber = (int)((Math.random()* (9999 -
	 * 1000 + 1)) + 1000);//난수 생성
	 * 
	 * smsUtil.sendOne(phone, randomNumber); return String.valueOf(randomNumber); }
	 * else { return "redirect:/login"; } }
	 */
	
	

	
	@ResponseBody
	@PostMapping("/emailcheck")
	public String emailchk(@RequestParam("email") String email ) {
		/* JSONObject json = new JSONObject(); */
		System.out.println(email);
		int result = joinService.emailchk(email);
		System.out.println(result);
		
		return result + "";
	}
	
	
	
	

	//아이디 중복검사
	@ResponseBody
	@PostMapping("/checkID")
	public String checkID(@RequestParam("id") String id) {
		//System.out.println("id : " + mid);
		int result = joinService.checkID(id);
			return result + "";
	}

	
	
	@ResponseBody
	@PostMapping("/phonecheck")
	public String phonechk(@RequestParam("user_phone") int user_phone ) {
		/* JSONObject json = new JSONObject(); */
		System.out.println(user_phone);
		int result = joinService.phonechk(user_phone);
		System.out.println(result);
		
		return result + "";
	}
	
	
	  
	// coolSMS 테스트 화면
	@GetMapping("/sms")
	public String mySms() {
		return "/phone";
	}
	    
	// coolSMS 구현 로직 연결  
	@GetMapping("/checkSms")
	public @ResponseBody String sendSMS(@RequestParam(value="phone") String phone) throws CoolsmsException {  	
		return joinService.PhoneNumberCheck(phone);
	}

}