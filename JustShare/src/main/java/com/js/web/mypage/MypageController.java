package com.js.web.mypage;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;



@Controller
public class MypageController {

	@Autowired
	private MypageService mypageService;
	

	@GetMapping("/member/mypage")
	public String mypage(HttpSession session, Model model) {
		String mid = (String) session.getAttribute("mid");
		
		if (mid != null) {
			System.out.println(mid);
		Map<String, Object> list = mypageService.list(mid);
		/* System.out.println(list); */
			model.addAttribute("list", list);
			System.out.println(list);
			
			
			Map<String, Object> listdetail = mypageService.listdetail(mid);
			model.addAttribute("listdetail",listdetail);
			
			List<Map<String,Object>> listdetail2 = mypageService.listdetail2(mid);
			model.addAttribute("listdetail2", listdetail2);

		
			 List<Map<String,Object>> likelist = mypageService.likelist(mid);
			 model.addAttribute("likelist", likelist);
			 
			
			
			return "/member/mypage";
			
		} else {
			return "redirect:/";
		}

	}



}
