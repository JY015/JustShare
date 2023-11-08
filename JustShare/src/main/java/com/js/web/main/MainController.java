package com.js.web.main;


import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class MainController {

	@Autowired
	private MainService mainService;
	

	@GetMapping("/")
	public String main2(Model model, HttpSession session, @RequestParam Map<String, Object> map) {
		
				//배너
				List<MainDTO> bannerlist = mainService.bannerlist();
				model.addAttribute("bannerlist", bannerlist);
				//메인게시물 최신순	 
				List<Map<String,Object>> imageD = mainService.imageD();
				model.addAttribute("imageD", imageD);
				//메인게시물 조회순
				List<Map<String,Object>> imageC = mainService.imageC();
				List<Map<String,Object>> imgsubst = mainService.imageC();
				model.addAttribute("imageC", imageC);
				
				List<Map<String, Object>> cateList = mainService.cateList();
				model.addAttribute("cateList", cateList);
				System.out.println(cateList);
				
				System.out.println(imageC);
				
				for (int i = 0; i < imgsubst.size(); i++) {
					String addr = String.valueOf(((String) imgsubst.get(i).get("addr")).substring(0, 7));	
					imgsubst.get(i).put("addr", addr);
				}
				
				for (int i = 0; i < imgsubst.size(); i++) {
					 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
					    LocalDateTime localDateTime = (LocalDateTime) imgsubst.get(i).get("bdate"); // "bDate" 필드 이름에 맞게 변경
					    Timestamp timestamp = Timestamp.valueOf(localDateTime);
					    String bdate_substring = sdf.format(timestamp).substring(0,10);
					    imgsubst.get(i).put("bdate", bdate_substring);
				}
				
				model.addAttribute("imgsubst", imgsubst);
				System.out.println(imgsubst);
				
		return "main";

	}

}
