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
	public String main(HttpSession session, Model model) {
		int memberCount = adminService.memberCount();
		int boardCount = adminService.boardCount();
		int reportCount = adminService.reportCount();
		int tradeCount = adminService.tradeCount();
		List<Map<String, Object>> boardCate = adminService.boardCate();
		model.addAttribute("memberCount", memberCount);
		model.addAttribute("boardCount", boardCount);
		model.addAttribute("reportCount", reportCount);
		model.addAttribute("tradeCount", tradeCount);
		model.addAttribute("boardCate", boardCate);
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
		List<Map<String, Object>> category = adminService.category();
		adminService.gradeDown(); //신고 누적에 따른 강등
		System.out.println("reportListMember : "  + reportListMember);
		model.addAttribute("reportListMember", reportListMember);
		model.addAttribute("reportList", reportList);
		model.addAttribute("category", category);
		return "admin/reportList";
	}
	
	@GetMapping("/admin/tradeList")
	public String tradeList(Model model) {
		
		List<Map<String, Object>> tradeList = adminService.tradeList();
		List<Map<String, Object>> totalTradeList = adminService.totalTradeList();
		List<Map<String, Object>> dateList = adminService.dateList();
		List<Map<String, Object>> monthDay = adminService.monthDay();
		model.addAttribute("tradeList", tradeList); // 결제 내역 출력
		model.addAttribute("totalTradeList", totalTradeList); //총 결제된 내역 수 뽑기
		model.addAttribute("dateList", dateList); //날짜랑 날짜에 맞는 카운트 뽑기
		model.addAttribute("monthDay", monthDay);//달과 일자만 출력
		System.out.println(tradeList);
		return "admin/tradeList";
	}
	
	@GetMapping("/admin/chart")
	public String chart() {
		
		return "admin/chart";
	}

}

	
	
	


