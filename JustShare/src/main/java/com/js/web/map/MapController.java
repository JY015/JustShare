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

import com.js.web.board.BoardService;

@Controller
public class MapController {

	@Autowired
	private MapService mapService;
	
	
	@GetMapping("/map")
	public String mapMark7(Model model) {
		
		BoardDTO boardDto= new BoardDTO();
		List<Map<String, Object>> ListAll = mapService.gpsListOne(boardDto);
		
		BoardDTO boardDto2= new BoardDTO();
		List<Map<String, Object>> ListOne = mapService.gpsListAll(boardDto2);
		
		ImgDTO imageDto = new ImgDTO();
		List<Map<String, Object>> imageAll = mapService.imageD(imageDto);

		model.addAttribute("imageAll",imageAll);
		
		CateDTO cateDto = new CateDTO();
		List<Map<String, Object>> cateAll = mapService.cateAll(cateDto);
		//System.out.println(cateAll);
		model.addAttribute("cateAll",cateAll);

		if (!ListAll.isEmpty()) {
		    Map<String, Object> map = ListAll.get(0);
		    Object bno = map.get("bno");
		    Object latitude = map.get("latitude");
		    Object longitude = map.get("longitude");
		    Object btitle = map.get("btitle");
		    Object addr = map.get("addr");
		 
		    model.addAttribute("ListAll",ListAll);
		}
		
		if (!ListOne.isEmpty()) {
		    Map<String, Object> map = ListOne.get(0);
		    Object bno = map.get("bno");
		    Object latitude = map.get("latitude");
		    Object longitude = map.get("longitude");
		    Object btitle = map.get("btitle");
		    Object addr = map.get("addr");
		 
		    model.addAttribute("ListOne",ListOne);
		}
		
		if (!cateAll.isEmpty()) {
		        model.addAttribute("cateAll", cateAll);
		}

		return "map";
	}
	

}
