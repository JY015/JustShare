package com.js.web.main;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Arrays;
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

		// 배너
		List<MainDTO> bannerlist = mainService.bannerlist();
		model.addAttribute("bannerlist", bannerlist);
		
		// 메인게시물 최신순
		List<Map<String, Object>> boardlatest = mainService.boardlatest();
		model.addAttribute("boardlatest", boardlatest);
		System.out.println(boardlatest);
		
		// 메인게시물 조회순
		List<Map<String, Object>> boardreadcount = mainService.boardreadcount();
		model.addAttribute("boardreadcount", boardreadcount);
		System.out.println(boardreadcount);
		
		// 메인게시물 좋아요순
		List<Map<String, Object>> blikescount = mainService.blikescount();
		model.addAttribute("blikescount", blikescount);
		System.out.println(blikescount);
				
		
		List<Map<String, Object>> cateList = mainService.cateList();
		model.addAttribute("cateList", cateList);


		return "main";

	}

}