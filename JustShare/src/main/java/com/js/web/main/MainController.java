package com.js.web.main;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.apache.commons.mail.EmailException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MainController {

	@Autowired
	private MainService mainService;

	@GetMapping("/")
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
			session.setAttribute("mid", map.get("id"));
			session.setAttribute("mname", res.get("mname"));		
			return "redirect:/";
		} else {
			/* model.addAttribute("loginCheckCount", 1); */
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

	@GetMapping("/userSearch")
	public String userSearch() {
		return "userSearch";
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
		
		return "findPw";
	}
	
	@GetMapping("/mail")
	public String mail() {
		
		return "mail";
	}

}
