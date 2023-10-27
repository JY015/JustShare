package com.js.web.board;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardService {
	@Autowired
	private BoardDAO boardDAO;
	
	@Autowired
	private AddressService addressService;

	// 전체 리스트 뽑기
	public List<Map<String, Object>> list(Map<String, Object> map) {
		
		return boardDAO.list(map);
	}
	
	// 받은 주소 값을 위도로 변경하여 DB에 넣어주기 >> 문제 발생 
	// 넣는거 까진 잘 들어가는데 해당 bno를 어떻게 찾아줄건가 
	public Integer adr(Map<String, Object> map) {
		String a = (String) map.get("add");
		Coordinates b = addressService.getCoordinate(a);
		double x = Double.parseDouble(b.getX());
		double y = Double.parseDouble(b.getY());
		map.put("x", x);
		map.put("y", y);
		boardDAO.adr(map);
		return 1 ;
	}
	// 작성 완료된 글 번호 가져오기 
	public int bno() {
		
		return boardDAO.bno();
	}
	// 작성시 시설 테이블에 시설 저잔
	public void equip(Map<String, Object> equip) {
		boardDAO.equip(equip);
		
	}

	public void image(Map<String, Object> image) {
		boardDAO.image(image);
		
	}

	public List<Map<String, Object>> cl() {
		
		return boardDAO.cl();
	}

	public List<Map<String, Object>> el() {
		
		return boardDAO.el();
	}

	public int listNum() {
		
		return boardDAO.listNum();
	}

	public List<Map<String, Object>> listp(Map<String, Integer> intLimit) {
		
		return boardDAO.listp(intLimit);
	}

	public List<Map<String, Object>> detail(Map<String, Object> map) {
		
		return boardDAO.detail(map);
	}

	


}
