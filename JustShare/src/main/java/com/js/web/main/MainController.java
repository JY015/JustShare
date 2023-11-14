package com.js.web.main;


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
   public String main(Model model, HttpSession session, @RequestParam Map<String, Object> map) {
   
      //배너
      List<MainDTO> bannerlist = mainService.bannerlist();
      model.addAttribute("bannerlist", bannerlist);
      //메인게시물 최신순    
      List<Map<String,Object>> imageD = mainService.imageD();
      model.addAttribute("imageD", imageD);
      //메인게시물 조회순
      List<Map<String,Object>> imageC = mainService.imageC();
      model.addAttribute("imageC", imageC);
      
      List<Map<String, Object>> cateList = mainService.cateList();
      model.addAttribute("cateList", cateList);
      System.out.println(cateList);
      
      
      return "index";
   
   }


}