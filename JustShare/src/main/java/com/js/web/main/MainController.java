package com.js.web.main;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {
	
	@Autowired
	private MainService mainService;
	
	@GetMapping("/")
	public String main() {
		return "index";
	}
	
	@GetMapping("/login")
	public String login() {
		
		return "login";
	}
	
	
	@PostMapping("/login")
	public String login(@RequestParam Map<String, Object> map, HttpSession session) {
		Map<String, Object> res = mainService.login(map);
		System.out.println(res);
		if (String.valueOf(res.get("count")).equals("1")) {
			session.setAttribute("mid", map.get("id"));
			session.setAttribute("mname", res.get("mname"));
			return "redirect:/";
	}  else {
		return "login";
	}
	
}
}
	
