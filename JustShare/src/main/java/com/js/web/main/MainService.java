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


	
	
	
}
