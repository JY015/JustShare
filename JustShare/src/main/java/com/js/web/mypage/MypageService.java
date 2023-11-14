package com.js.web.mypage;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MypageService {	
	
	@Autowired 
	private MypageDAO mypageDAO;

	public Map<String,Object> list(String mid) {
		
		return mypageDAO.list(mid);
	}

	public Map<String, Object> listdetail(String mid) {
	
		return mypageDAO.listdetail(mid);
	}

	public List<Map<String, Object>> listdetail2(String mid) {
		
		return mypageDAO.listdetail2(mid);
	}

    public List<Map<String, Object>> likelist(String mid) {
		
		return mypageDAO.likelist(mid);
	}

	public Map<String, Object> info(Map<String, Object> map) {
	
		return mypageDAO.info(map);
	}

	public Map<String, Object> idchk(String id) {
		
		return mypageDAO.idchk(id);
	}

	public Map<String, Object> emailchk(String email, String mid) {
		return mypageDAO.emailchk(email, mid);
	}


	public void infoChange(Map<String, Object> map) {
		mypageDAO.infoChange(map);
	}

	/*
	 * public List<Map<String, Object>> trade(String mid) {
	 * 
	 * return mypageDAO.trade(mid); }
	 */
	
	
}
