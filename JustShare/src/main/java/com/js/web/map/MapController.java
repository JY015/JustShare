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
	
	@Autowired
	private BoardService boardService;
	
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
	
	@GetMapping("/mapMark2")
	public String mapMark(Model model) {
		
		BoardDTO boardDto= new BoardDTO();
		List<Map<String, Object>> ListAll = mapService.gpsListOne(boardDto);
		
		BoardDTO boardDto2= new BoardDTO();
		List<Map<String, Object>> ListOne = mapService.gpsListAll(boardDto2);

		System.out.println("ListAll:"+ListAll);
		System.out.println("ListOne:"+ListOne);
		
		if (!ListAll.isEmpty()) {
		    Map<String, Object> map = ListAll.get(0);
		    Object bno = map.get("bno");
		    Object latitude = map.get("latitude");
		    Object longitude = map.get("longitude");
		    Object btitle = map.get("btitle");
		    Object addr = map.get("addr");
		    System.out.println(bno);
		    System.out.println(latitude);
		    System.out.println(longitude);
		    System.out.println(btitle);
		    System.out.println(addr);
		 
		    model.addAttribute("ListAll",ListAll);
		}
		
		if (!ListOne.isEmpty()) {
		    Map<String, Object> map = ListOne.get(0);
		    Object bno = map.get("bno");
		    Object latitude = map.get("latitude");
		    Object longitude = map.get("longitude");
		    Object btitle = map.get("btitle");
		    Object addr = map.get("addr");
		    System.out.println(bno);
		    System.out.println(latitude);
		    System.out.println(longitude);
		    System.out.println(btitle);
		    System.out.println(addr);
		 
		    model.addAttribute("ListOne",ListOne);
		}


		return "mapMark2";
	}
	
	@GetMapping("/mapMark3")
	public String mapMark3(Model model) {
		
		BoardDTO boardDto= new BoardDTO();
		List<Map<String, Object>> ListAll = mapService.gpsListOne(boardDto);
		
		BoardDTO boardDto2= new BoardDTO();
		List<Map<String, Object>> ListOne = mapService.gpsListAll(boardDto2);
		
		ImgDTO imageDto = new ImgDTO();
		List<Map<String, Object>> imageAll = mapService.imageD(imageDto);

		model.addAttribute("imageAll",imageAll);
		

		/*
		 * System.out.println("ListAll:"+ListAll);
		 * System.out.println("ListOne:"+ListOne);
		 * System.out.println("imageAll:"+imageAll);
		 */

		if (!ListAll.isEmpty()) {
		    Map<String, Object> map = ListAll.get(0);
		    Object bno = map.get("bno");
		    Object latitude = map.get("latitude");
		    Object longitude = map.get("longitude");
		    Object btitle = map.get("btitle");
		    Object addr = map.get("addr");
		    //System.out.println(bno);
		    //System.out.println(latitude);
		    //System.out.println(longitude);
		    //System.out.println(btitle);
		    //System.out.println(addr);
		 
		    model.addAttribute("ListAll",ListAll);
		}
		
		if (!ListOne.isEmpty()) {
		    Map<String, Object> map = ListOne.get(0);
		    Object bno = map.get("bno");
		    Object latitude = map.get("latitude");
		    Object longitude = map.get("longitude");
		    Object btitle = map.get("btitle");
		    Object addr = map.get("addr");
			/*
			 * System.out.println(bno); System.out.println(latitude);
			 * System.out.println(longitude); System.out.println(btitle);
			 * System.out.println(addr);
			 */
		 
		    model.addAttribute("ListOne",ListOne);
		}

		return "mapMark3";
	}
	
	@GetMapping("/mapMark4")
	public String mapMark4(Model model) {
		
		BoardDTO boardDto= new BoardDTO();
		List<Map<String, Object>> ListAll = mapService.gpsListOne(boardDto);
		
		BoardDTO boardDto2= new BoardDTO();
		List<Map<String, Object>> ListOne = mapService.gpsListAll(boardDto2);
		
		ImgDTO imageDto = new ImgDTO();
		List<Map<String, Object>> imageAll = mapService.imageD(imageDto);

		model.addAttribute("imageAll",imageAll);
		

		/*
		 * System.out.println("ListAll:"+ListAll);
		 * System.out.println("ListOne:"+ListOne);
		 * System.out.println("imageAll:"+imageAll);
		 */

		if (!ListAll.isEmpty()) {
		    Map<String, Object> map = ListAll.get(0);
		    Object bno = map.get("bno");
		    Object latitude = map.get("latitude");
		    Object longitude = map.get("longitude");
		    Object btitle = map.get("btitle");
		    Object addr = map.get("addr");
		    //System.out.println(bno);
		    //System.out.println(latitude);
		    //System.out.println(longitude);
		    //System.out.println(btitle);
		    //System.out.println(addr);
		 
		    model.addAttribute("ListAll",ListAll);
		}
		
		if (!ListOne.isEmpty()) {
		    Map<String, Object> map = ListOne.get(0);
		    Object bno = map.get("bno");
		    Object latitude = map.get("latitude");
		    Object longitude = map.get("longitude");
		    Object btitle = map.get("btitle");
		    Object addr = map.get("addr");
			/*
			 * System.out.println(bno); System.out.println(latitude);
			 * System.out.println(longitude); System.out.println(btitle);
			 * System.out.println(addr);
			 */
		 
		    model.addAttribute("ListOne",ListOne);
		}

		return "mapMark4";
	}
	
	@GetMapping("/mapMark5")
	public String mapMark5(Model model) {
		
		BoardDTO boardDto= new BoardDTO();
		List<Map<String, Object>> ListAll = mapService.gpsListOne(boardDto);
		
		BoardDTO boardDto2= new BoardDTO();
		List<Map<String, Object>> ListOne = mapService.gpsListAll(boardDto2);
		
		ImgDTO imageDto = new ImgDTO();
		List<Map<String, Object>> imageAll = mapService.imageD(imageDto);

		model.addAttribute("imageAll",imageAll);
		

		/*
		 * System.out.println("ListAll:"+ListAll);
		 * System.out.println("ListOne:"+ListOne);
		 * System.out.println("imageAll:"+imageAll);
		 */

		if (!ListAll.isEmpty()) {
		    Map<String, Object> map = ListAll.get(0);
		    Object bno = map.get("bno");
		    Object latitude = map.get("latitude");
		    Object longitude = map.get("longitude");
		    Object btitle = map.get("btitle");
		    Object addr = map.get("addr");
		    //System.out.println(bno);
		    //System.out.println(latitude);
		    //System.out.println(longitude);
		    //System.out.println(btitle);
		    //System.out.println(addr);
		 
		    model.addAttribute("ListAll",ListAll);
		}
		
		if (!ListOne.isEmpty()) {
		    Map<String, Object> map = ListOne.get(0);
		    Object bno = map.get("bno");
		    Object latitude = map.get("latitude");
		    Object longitude = map.get("longitude");
		    Object btitle = map.get("btitle");
		    Object addr = map.get("addr");
			/*
			 * System.out.println(bno); System.out.println(latitude);
			 * System.out.println(longitude); System.out.println(btitle);
			 * System.out.println(addr);
			 */
		 
		    model.addAttribute("ListOne",ListOne);
		}

		return "mapMark5";
	}
	
	@GetMapping("/mapMark6")
	public String mapMark6(Model model) {
		
		BoardDTO boardDto= new BoardDTO();
		List<Map<String, Object>> ListAll = mapService.gpsListOne(boardDto);
		
		BoardDTO boardDto2= new BoardDTO();
		List<Map<String, Object>> ListOne = mapService.gpsListAll(boardDto2);
		
		ImgDTO imageDto = new ImgDTO();
		List<Map<String, Object>> imageAll = mapService.imageD(imageDto);

		model.addAttribute("imageAll",imageAll);
		

		/*
		 * System.out.println("ListAll:"+ListAll);
		 * System.out.println("ListOne:"+ListOne);
		 * System.out.println("imageAll:"+imageAll);
		 */

		if (!ListAll.isEmpty()) {
		    Map<String, Object> map = ListAll.get(0);
		    Object bno = map.get("bno");
		    Object latitude = map.get("latitude");
		    Object longitude = map.get("longitude");
		    Object btitle = map.get("btitle");
		    Object addr = map.get("addr");
		    //System.out.println(bno);
		    //System.out.println(latitude);
		    //System.out.println(longitude);
		    //System.out.println(btitle);
		    //System.out.println(addr);
		 
		    model.addAttribute("ListAll",ListAll);
		}
		
		if (!ListOne.isEmpty()) {
		    Map<String, Object> map = ListOne.get(0);
		    Object bno = map.get("bno");
		    Object latitude = map.get("latitude");
		    Object longitude = map.get("longitude");
		    Object btitle = map.get("btitle");
		    Object addr = map.get("addr");
			/*
			 * System.out.println(bno); System.out.println(latitude);
			 * System.out.println(longitude); System.out.println(btitle);
			 * System.out.println(addr);
			 */
		 
		    model.addAttribute("ListOne",ListOne);
		}

		return "mapMark6";
	}
}
