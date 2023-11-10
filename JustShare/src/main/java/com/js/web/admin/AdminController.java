package com.js.web.admin;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;
	
	@GetMapping("/admin")
	public String main(HttpSession session) {		
			return "admin/main";
	}
		
	@GetMapping("/admin/member")
	public ModelAndView member(Model model) {
	ModelAndView mv = new ModelAndView("admin/member");
		
		List<Map<String, Object>> memberList = adminService.memberList();
		
		model.addAttribute("memberList", memberList);
		
		
		return mv;
	}
	
	@GetMapping("/admin/gradeChange")
	public String gradeChange(@RequestParam Map<String, Object> map, Model model) {

		int change = adminService.gradeChange(map);		
		model.addAttribute("change", change);

		return"redirect:/admin/member";
	}
	

	@GetMapping("/admin/reportList")
	public String report(Model model) {
		List<Map<String, Object>> reportList = adminService.reportList();
		List<Map<String, Object>> reportListMember = adminService.reportListMember(reportList);
		adminService.gradeDown(); //신고 누적에 따른 강등
		System.out.println("reportListMember : "  + reportListMember);
		model.addAttribute("reportListMember", reportListMember);
		model.addAttribute("reportList", reportList);
		return "admin/reportList";
	}
	
	@GetMapping("/admin/tradeList")
	public String tradeList(Model model) {
		
		List<Map<String, Object>> tradeList = adminService.tradeList();
		List<Map<String, Object>> totalTradeList = adminService.totalTradeList();
		model.addAttribute("tradeList", tradeList);
		model.addAttribute("totalTradeList", totalTradeList);
		System.out.println(tradeList);
		return "admin/tradeList";
	}
	
}

	
	
	


