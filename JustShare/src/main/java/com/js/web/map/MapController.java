package com.js.web.map;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MapController {

	@Autowired
	private MapService mapService;
	
	@GetMapping("/mapGps")
	public String mapcenter() {
		return "mapGps";
	}
	
	@ResponseBody
	@PostMapping("/mapGps")
	public String Postmapcenter(MapDTO mapdto) {
        System.out.println(mapdto);
        
        int result = mapService.gpsInsert(mapdto);
        
		 JSONObject json = new JSONObject(); 
		 json.put("result", result);
		 System.out.println(json.toString());
        
		return json.toString();
	}
}
