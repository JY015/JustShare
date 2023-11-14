package com.js.web.join;

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
	public String join(JoinDTO joinDTO) {
		//System.out.println("jsp에서 오는 값 : " + joinDTO);
		
		int result = joinService.join(joinDTO);
		
		if(result == 1) {
		
		return "redirect:/index";
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
	
	
	//아이디 중복검사
	@ResponseBody
	@PostMapping("/checkID")
	public String checkID(@RequestParam("mid") String mid) {
		System.out.println("id : " + mid);
		int result = joinService.checkID(mid);
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