package com.js.web.map;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MapDAO {

	int gpsInsert(MapDTO mapDto);

	List<Map<String, Object>> gpsListAll(BoardDTO boardDto);

	List<Map<String, Object>> gpsListOne(BoardDTO boardDto2);

	List<Map<String, Object>> imageD(ImgDTO imageDto);

	List<Map<String, Object>> cateAll(CateDTO cateDto);

}
