package com.js.web.mypage;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;



@Controller
public class MypageController {

	@Autowired
	private MypageService mypageService;
	

	@GetMapping("/mypage")
	public String mypage(HttpSession session, Model model) {
		String mid = (String) session.getAttribute("mid");
		
		if (mid != null) {
			System.out.println(mid);
			List<MypageDTO> list = mypageService.list(mid);
			model.addAttribute("mypageList", list);

			return "mypage";
			
		} else {
			return "redirect:/";
		}

	}



}
