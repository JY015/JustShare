package com.js.web.join;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class JoinService {
	
	@Autowired
	private JoinDAO joinDAO;
	
	public int join(JoinDTO joinDTO) {
		return joinDAO.join(joinDTO);
	}

	public int checkID(String mid) {
		return joinDAO.checkID(mid);
	}
	
	/*
	 * public String PhoneNumberCheck(String to) throws CoolsmsException {
	 * 
	 * String api_key = "NCSHONZYXFYSSMEB"; String api_secret =
	 * "UNNGPMH4FUXIRCPQY2VSJPZFOZTB80QE"; Message coolsms = new Message(api_key,
	 * api_secret);
	 * 
	 * Random rand = new Random(); String numStr = ""; for(int i=0; i<4; i++) {
	 * String ran = Integer.toString(rand.nextInt(10)); numStr+=ran; }
	 * 
	 * HashMap<String, String> params = new HashMap<String, String>();
	 * params.put("to", to); // 수신전화번호 (ajax로 view 화면에서 받아온 값으로 넘김)
	 * params.put("from", "01072791324"); // 발신전화번호. 테스트시에는 발신,수신 둘다 본인 번호로 하면 됨
	 * params.put("type", "sms"); params.put("text", "인증번호는 [" + numStr + "] 입니다.");
	 * 
	 * coolsms.send(params); // 메시지 전송
	 * 
	 * return numStr;
	 * 
	 * }
	 */
}


