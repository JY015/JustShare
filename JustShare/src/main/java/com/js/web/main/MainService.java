package com.js.web.main;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MainService {

	@Autowired 
	private MainDAO mainDAO;



	public List<MainDTO> bannerlist() {
		
		return mainDAO.bannerlist();
	}



	public List<Map<String, Object>> cateList() {
	
		return mainDAO.cateList();
	}



	public List<Map<String, Object>> imageD() {
		
		return mainDAO.imageD();
	}



	public List<Map<String, Object>> imageC() {

		return mainDAO.imageC();
	}


	
	
}
