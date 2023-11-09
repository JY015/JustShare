package com.js.web.admin;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AdminDAO {

	int login(Map<String, Object> map);

	List<Map<String, Object>> memberList();

	int gradeChange(Map<String, Object> map);

	List<Map<String, Object>> reportList();

	List<Map<String, Object>> reportListMember(List<Map<String, Object>> reportList);

	void gradeDown();

}
