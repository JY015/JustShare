package com.js.web.map;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MapService {

	@Autowired
	private MapDAO mapDao;

	public int gpsInsert(MapDTO mapDto) {
		return mapDao.gpsInsert(mapDto);
	}

	public List<Map<String, Object>> gpsList(MapDTO mapDto) {
		// TODO Auto-generated method stub
		return mapDao.gpsList(mapDto);
	}




}
