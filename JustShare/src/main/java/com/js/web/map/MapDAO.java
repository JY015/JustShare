package com.js.web.map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MapDAO {

	int gpsInsert(MapDTO mapdto);

}
