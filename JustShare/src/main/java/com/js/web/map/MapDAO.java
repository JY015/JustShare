package com.js.web.map;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MapDAO {

	int gpsInsert(MapDTO mapDto);

	List<Map<String, Object>> gpsList(MapDTO mapDto);

}
