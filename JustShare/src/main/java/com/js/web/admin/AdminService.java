package com.js.web.admin;

import java.util.List;
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

	public List<Map<String, Object>> memberList() {
		
		return adminDAO.memberList();
	}

	public int gradeChange(Map<String, Object> map) {
		
		return adminDAO.gradeChange(map);
	}

	public List<Map<String, Object>> reportList() {
		
		return adminDAO.reportList();
	}

	public List<Map<String, Object>> reportListMember(List<Map<String, Object>> reportList) {
		
		return adminDAO.reportListMember(reportList);
	}

	public void gradeDown() {

		adminDAO.gradeDown();
	}




	
	
	
}
