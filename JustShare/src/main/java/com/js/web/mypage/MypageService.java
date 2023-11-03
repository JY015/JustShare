package com.js.web.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MypageService {
	
	@Autowired 
	private MypageDAO mypageDAO;

	public List<MypageDTO> list(String mid) {
		
		return mypageDAO.list(mid);
	}




	
	
	
}
