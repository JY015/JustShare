package com.js.web.join;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface JoinDAO{
	public int join(Map<String, Object> map);

	public int checkID(String id);

	public int emailchk(String email);

	public int phonechk(int user_phone);
	
	
}


