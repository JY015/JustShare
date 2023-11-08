package com.js.web.main;


import java.sql.Date;
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
<<<<<<< HEAD
	public String main2(Model model, HttpSession session, @RequestParam Map<String, Object> map) {
=======
	public String main() {
		return "index";
	}


	@GetMapping("/login")
	public String login(Model model) {
		return "login";
	}

	@PostMapping("/login")
	public String login(@RequestParam Map<String, Object> map, HttpSession session, Model model) {
		Map<String, Object> res = mainService.login(map);
		System.out.println(res);
		if (String.valueOf(res.get("count")).equals("1")) {
			session.setAttribute("mid", map.get("mid"));
			session.setAttribute("mname", res.get("mname"));		
			return "redirect:/";
		} else {
			model.addAttribute("loginCheckCount", 1);
			return "login";		
		}
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		if (session.getAttribute("mid") != null) {
			session.removeAttribute("mid");
		}
		if (session.getAttribute("mname") != null) {
			session.removeAttribute("mname");
		}
		session.invalidate();
		return "redirect:/";
	}

	@GetMapping("/findId")
	public String findId() {

		return "findId";
	}

	@PostMapping("/findId")
	public String findId(@RequestParam String mname, @RequestParam String mphone, Model model) {
		Map<String, Object> map = new HashMap<>();
		map.put("mphone", mphone);
		map.put("mname", mname);
		String findId = mainService.findId(map);
		if (findId != null) {
			System.out.println(mname);
			System.out.println(mphone);
			System.out.println(findId);
			model.addAttribute("findId", findId);
			model.addAttribute("count", 1);
		return "findId";
		}
		model.addAttribute("count", 0);
		return "findId";
	}
	
	@GetMapping("/findPw")
	public String findPw() {
>>>>>>> main
		
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
