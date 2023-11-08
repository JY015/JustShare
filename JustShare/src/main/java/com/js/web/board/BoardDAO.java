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

	int listNum(Map<String, Object> map);

	List<Map<String, Object>> listp(Map<String, Object> map);

	Map<String, Object> detail(Map<String, Object> map);

	List<String> imageD(Map<String, Object> map);

	List<String> equipD(Map<String, Object> map);

	int del(Map<String, Object> map);

	List<Integer> equipDE(Map<String, Object> map);

	void read(Map<String, Object> map);

	int report(Map<String, Object> map);

	void breport(Map<String, Object> map);

	int dp(Map<String, Object> imap);

	List<Map<String, Object>> areaList();

	Map<String, Object> areaN(Map<String, Object> areaD);

	int bedit(Map<String, Object> map);

	void deleteEquip(Map<String, Object> map);

	List<Map<String, Object>> reportCateList();

	Integer isLike(Map<String, Object> map);

	Integer likesCount(Map<String, Object> map);

	void deleteLike(Map<String, Object> map);

	void insertLike(Map<String, Object> map);

	List<Integer> isLikeList(Map<String, Object> map);

	List<Map<String, Object>> regionList();


	
}
