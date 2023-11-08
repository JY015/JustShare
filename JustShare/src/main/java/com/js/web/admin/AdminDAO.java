package com.js.web.admin;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AdminDAO {

	int login(Map<String, Object> map);


	
}
