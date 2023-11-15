package com.js.web.main;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MainDAO {

	List<MainDTO> bannerlist();

	List<Map<String,Object>> imageD();


	List<Map<String, Object>> cateList();

	List<Map<String, Object>> boardlatest();

	List<Map<String, Object>> boardreadcount();

	List<Map<String, Object>> blikescount();



}
