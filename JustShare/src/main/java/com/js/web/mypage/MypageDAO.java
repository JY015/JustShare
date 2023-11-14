package com.js.web.mypage;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MypageDAO {

	Map<String, Object> list(String mid);

	Map<String, Object> listdetail(String mid);

	List<Map<String, Object>> listdetail2(String mid);

	List<Map<String, Object>> likelist(String mid);

	Map<String, Object> info(Map<String, Object> map);

	Map<String, Object> idchk(String id);

	Map<String, Object> emailchk(String email, String mid); 

	void infoChange(Map<String, Object> map);

	/* List<Map<String, Object>> trade(String mid); */

	
}
