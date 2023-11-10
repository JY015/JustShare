package com.js.web.board;

import java.util.HashMap;
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
	
	@Autowired
	
	private AreaDivide areaDivide;

	// 전체 리스트 뽑기
	public List<Map<String, Object>> list(Map<String, Object> map) {
		
		return boardDAO.list(map);
	}
	
	// 받은 주소 값을 위도로 변경하여 DB에 넣어주기 >> 문제 발생 
	// 넣는거 까진 잘 들어가는데 해당 bno를 어떻게 찾아줄건가 
	public Integer adr(Map<String, Object> map) {
		// 위도 경도 찾아서 넣어주기
		String a = (String) map.get("add");
		Coordinates b = addressService.getCoordinate(a);
		double x = Double.parseDouble(b.getX());
		double y = Double.parseDouble(b.getY());
		map.put("x", x);
		map.put("y", y);
		// 지역 스트링으로 나누기 > 숫자로 변형 후 map 에 넣어주기 
		Map<String,Object> areaD = areaDivide.areaD(a);
		Map<String,Object> areaN = boardDAO.areaN(areaD);
		Integer ano = (Integer) areaN.get("ano");
		Integer rno = (Integer) areaN.get("rno");
		map.put("ano",ano);
		map.put("rno",rno);
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

	public int listNum(Map<String, Object> map) {
		
		return boardDAO.listNum(map);
	}

	public List<Map<String, Object>> listp(Map<String, Object> map) {
		
		return boardDAO.listp(map);
	}

	public Map<String, Object> detail(Map<String, Object> map) {
		// 클릭할때마다 조회수 +1 추가하기
		boardDAO.read(map);
		return boardDAO.detail(map);
	}

	public List<String> imageD(Map<String, Object> map) {
		
		return boardDAO.imageD(map);
	}

	public List<String> equipD(Map<String, Object> map) {
		
		return boardDAO.equipD(map);
	}

	public int del(Map<String, Object> map) {
		
		return boardDAO.del(map);
	}

	public List<Integer> equipDE(Map<String, Object> map) {
		
		return boardDAO.equipDE(map);
	}

	public int report(Map<String, Object> map) {
		// 신고 접수하면서 board에 게시글 신고 횟수 올리기
		boardDAO.breport(map);
		
		return boardDAO.report(map);
	}

	public int dp(Map<String, Object> map) {
		// 받아온 값은 object 타입 integer 타입으로 변환해준다 
		// null 이 들어왔을때 예외처리 안해줬음 
		// Object 타입을 변환 시키는 클래스를 만들면 편할듯 ? 
		String rmid = (String) map.get("rmid");
		
		
		Map<String,Object> imap = new HashMap<String, Object>();
		imap.put("rmid", rmid);
		imap.put("bno", map.get("bno"));
		
		return boardDAO.dp(imap);
	}

	public List<Map<String, Object>> areaList() {
		
		return boardDAO.areaList();
	}

	public int bedit(Map<String, Object> map) {
		String a = (String) map.get("add");
		Coordinates b = addressService.getCoordinate(a);
		double x = Double.parseDouble(b.getX());
		double y = Double.parseDouble(b.getY());
		map.put("x", x);
		map.put("y", y);
		// 지역 스트링으로 나누기 > 숫자로 변형 후 map 에 넣어주기 
		Map<String,Object> areaD = areaDivide.areaD(a);
		Map<String,Object> areaN = boardDAO.areaN(areaD);
		Integer ano = (Integer) areaN.get("ano");
		Integer rno = (Integer) areaN.get("rno");
		map.put("ano",ano);
		map.put("rno",rno);
		boardDAO.bedit(map);
	
		return 1;
	}

	public void deleteEquip(Map<String, Object> map) {
		boardDAO.deleteEquip(map);
		
	}

	public List<Map<String, Object>> reportCateList() {
		
		return boardDAO.reportCateList();
	}

	public Integer isLike(Map<String, Object> map) {
		
		return boardDAO.isLike(map);
	}

	public Integer likesCount(Map<String, Object> map) {
		
		return boardDAO.likesCount(map);
	}

	public void deleteLike(Map<String, Object> map) {
		
		boardDAO.deleteLike(map);
		
	}

	public void insertLike(Map<String, Object> map) {
		
		boardDAO.insertLike(map);
		
	}

	public List<Integer> isLikeList(Map<String, Object> map) {
		
		return boardDAO.isLikeList(map);
	}

	public List<Map<String, Object>> regionList() {
		
		return boardDAO.regionList();
	}

	public List<Map<String, Object>> equipDetail(Map<String, Object> map) {
		
		return boardDAO.equipDetail(map);
	}

	public List<Map<String, Object>> place(Map<String, Object> map) {
		
		return boardDAO.place(map);
	}

}
