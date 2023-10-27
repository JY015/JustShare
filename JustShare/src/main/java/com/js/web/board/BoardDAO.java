package com.js.web.board;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
@Mapper

public interface BoardDAO {
	
	List<Map<String, Object>> list(Map<String, Object> map);

	void adr(Map<String, Object> map);

	int bno();

	void equip(Map<String, Object> equip);

	void image(Map<String, Object> image);

	List<Map<String, Object>> cl();

	List<Map<String, Object>> el();

	int listNum();

	List<Map<String, Object>> listp(Map<String, Integer> intLimit);

	Map<String, Object> detail(Map<String, Object> map);

	List<String> imageD(Map<String, Object> map);

	List<String> equipD(Map<String, Object> map);

	int del(Map<String, Object> map);

	List<Integer> equipDE(Map<String, Object> map);

	void read(Map<String, Object> map);

	int report(Map<String, Object> map);

	void breport(Map<String, Object> map);

	int dp(Map<String, Integer> imap);

	
}
