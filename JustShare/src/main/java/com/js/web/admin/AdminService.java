package com.js.web.admin;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminService {

	@Autowired 
	private AdminDAO adminDAO;

	public int login(Map<String, Object> map) {
		
		return adminDAO.login(map);
	}




	
	
	
}
