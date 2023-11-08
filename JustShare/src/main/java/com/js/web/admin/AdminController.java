package com.js.web.admin;


import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private AdminService adminService;
	
	@GetMapping("/admin")
	public String admin() {
		return "admin";
	}

	
	@GetMapping("/login")
	public String adminlogin() {
		return "/login";
	}

	@PostMapping("/login")
	public String adminLogin(@RequestParam Map<String, Object> map, HttpSession session) {
		
		int loginCheck = adminService.login(map);
		System.out.println(loginCheck);
		
		if(loginCheck == 1) {
			session.setAttribute("mid", map.get("mid").toString());
			return "redirect:/admin/admin";
		} else {
			return "/admin/login";
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("mid");
		return "/admin/login";
	}
	
	
	

}
