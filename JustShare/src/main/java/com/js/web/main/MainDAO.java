package com.js.web.main;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MainDAO {
	Map<String, Object> login(Map<String, Object> map);

	String findId(Map<String, Object> map);

	Map<String, Object> findPW(Map<String, Object> map);

	Map<String, Object> findPwCheck(Map<String, Object> map);

	void temporaryPw(Map<String, Object> map);


}
