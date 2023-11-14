package com.js.web.mypage;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;



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
			 
				
				 List<Map<String,Object>> trade = mypageService.trade(mid);
				 model.addAttribute("trade", trade);
				 
				 List<Map<String,Object>> review = mypageService.review(mid);
				 model.addAttribute("review", review);
				 
				 
				 
			return "/member/mypage";
			
		} else {
			return "redirect:/";
		}
	}
		
		
		@GetMapping("/member/modify")
		public String modify(HttpSession session, Model model, @RequestParam Map<String, Object> map) {
			
			if(session.getAttribute("mid") != null) {
				map.put("mname", session.getAttribute("mname"));
				Map<String, Object> info = mypageService.info(map);
				model.addAttribute("info", info);
				return "/member/modify";
			} else {
				return "redirect:/login";
			}	
			
		}
		
	
		@ResponseBody
		@PostMapping("/idchk")
		public String idchk(@RequestParam(name="id", required = true) String id, HttpSession session) {
			System.out.println(id);
			if(session.getAttribute("mid") != null) {
				Map<String, Object> map = mypageService.idchk(id);
				JSONObject json = new JSONObject();
				json.put("count", map.get("count"));
				json.put("mno", map.get("mno"));
				return json.toString();
			} else {
				return "redirect:/login";
			}
		}
		
		@ResponseBody
		@PostMapping("/emailchk")
		public String emailchk(@RequestParam(name="email", required = true) String email, HttpSession session) {
			System.out.println(email);
			if(session.getAttribute("mid") != null) {
				String mid = (String)session.getAttribute("mid");
				Map<String, Object> map = mypageService.emailchk(email, mid);
				System.out.println(map);
				JSONObject json = new JSONObject();
				json.put("count", map.get("count"));
				return json.toString();
			} else {
				return "redirect:/login";
			}
	}
		
		
		
		
	}




