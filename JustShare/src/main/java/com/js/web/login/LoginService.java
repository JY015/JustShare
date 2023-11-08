package com.js.web.login;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginService {

	@Autowired 
	private LoginDAO mainDAO;

	public Map<String, Object> login(Map<String, Object> map) {
		
		return mainDAO.login(map);
	}

	public String findId(Map<String, Object> map) {
		
		return mainDAO.findId(map);
	}

	public Map<String, Object> findPwCheck(Map<String, Object> map) {
		
		return mainDAO.findPwCheck(map);
	}

	public void temporaryPw(Map<String, Object> map) {
			mainDAO.temporaryPw(map);
		
	}


	
	
	
}
