package com.js.web.map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MapService {

	@Autowired
	private MapDAO mapDao;

	public int gpsInsert(MapDTO mapdto) {
		return mapDao.gpsInsert(mapdto);
	}




}
