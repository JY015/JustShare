package com.js.web.main;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MainDAO {
	Map<String, Object> login(Map<String, Object> map);


}
