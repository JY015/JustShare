package com.js.web.board;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;

@Service
public class AreaDivide {
	 
	public Map<String,Object> areaD(String a) {
		Map<String,Object> areaDivide = new HashMap<String, Object>();
		String[] add = a.split(" ");
		String region = add[0];
		String area = add[1];
		if(area.contains("면")) {
			area ="기타";
		}
		areaDivide.put("area", area);
		areaDivide.put("region",region);
		return areaDivide;
	}
	
}
