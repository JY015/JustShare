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
		System.out.println(cateAll);
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
		    for (int i = 0; i < cateAll.size(); i++) {

		        Object cate = cateAll.get(i).get("cate");
		        
		        if (cate.equals(1) | cate.equals(2) | cate.equals(3) | cate.equals(4)) {
		        	cateAll.get(i).put("cname", "commercial");
		        }
		        
		        if (cate.equals(5) | cate.equals(6) | cate.equals(7) | cate.equals(8) | cate.equals(9)) {
		        	cateAll.get(i).put("cname", "studio");
		        }
		        
		        if (cate.equals(10) | cate.equals(11) ) {
		        	cateAll.get(i).put("cname", "culture");
		        }
		        
		        if (cate.equals(12) | cate.equals(13)) {
		        	cateAll.get(i).put("cname", "business");
		        }
		        
		        model.addAttribute("cateAll", cateAll);
		    }
		}

		return "map";
	}
	

}
