package com.js.web.map;

import java.util.List;
import java.util.Map;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MapController {

	@Autowired
	private MapService mapService;
	
	@GetMapping("/mapGps")
	public String mapGps() {
		return "mapGps";
	}
	
	@ResponseBody
	@PostMapping("/mapGps")
	public String mapGps(MapDTO mapdto) {
        System.out.println(mapdto);
        
        int result = mapService.gpsInsert(mapdto);
        
		 JSONObject json = new JSONObject(); 
		 json.put("result", result);
		 System.out.println(json.toString());
        
		return json.toString();
	}
	
	@GetMapping("/mapMark")
	public String mapMark(Model model) {
		MapDTO mapDto= new MapDTO();
		mapDto.setMno(18);
		
		List<Map<String, Object>> result = mapService.gpsList(mapDto);

		System.out.println(result);
		System.out.println(mapDto.getMno());
		//System.out.println(String.valueOf(result.get(2).get("longitude")));

		//System.out.println(String.valueOf(result.get(2).get("longitude")));
		
		if (!result.isEmpty()) {
		    Map<String, Object> map = result.get(0);
		    Object latitude = map.get("latitude");
		    Object longitude = map.get("longitude");
		    Object btitle = map.get("btitle");
		    Object badd = map.get("badd");
		    System.out.println(latitude);
		    System.out.println(longitude);
		    System.out.println(btitle);
		    System.out.println(badd);
		    
		    model.addAttribute("latitude",latitude);
		    model.addAttribute("longitude",longitude);
		    model.addAttribute("btitle",btitle);
		    model.addAttribute("badd",badd);
		}


		return "mapMark";
	}
}
