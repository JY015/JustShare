package com.js.web.login;


import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.apache.commons.mail.EmailException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.js.web.chat.ChatWebSocketHandler;
import com.js.web.util.Util;

@Controller
public class LoginController {

   @Autowired
   private LoginService mainService;
   
   @Autowired
   private Util util;

   @GetMapping("/login")
   public String login() {
      return "login";
   }

   @PostMapping("/login")
   public String login(@RequestParam Map<String, Object> map, HttpSession session, Model model) {
      Map<String, Object> res = mainService.login(map);
      System.out.println(res);
      if (String.valueOf(res.get("count")).equals("1")) {
         session.setAttribute("mid", map.get("mid"));
         session.setAttribute("mname", res.get("mname"));
         session.setAttribute("mgrade", res.get("mgrade"));
         
           if ((int)res.get("mgrade") == 4) {               
                       
              return "redirect:/admin/";              
           }
           if ((int)res.get("mgrade") == 2 || (int)res.get("mgrade") == 1) {               
              session.invalidate(); 
              return "redirect:/reportLogin";              
           }
         return "redirect:/";
      } else {
         model.addAttribute("loginCheckCount", 1);
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
      
   @PostMapping("findPwCheck")
   public String findPwCheck(@RequestParam String mid, @RequestParam String mphone, Model model) {
      Map<String, Object> map = new HashMap<>();
      map.put("mid", mid);
      map.put("mphone", mphone);
      Map<String, Object> findPwCheck = mainService.findPwCheck(map);
      System.out.println("findPwCheck : "+ findPwCheck);
      if (String.valueOf(findPwCheck.get("count")).equals("1")) {
         model.addAttribute("findPwCheck", 1);
         String memail = (String) findPwCheck.get("memail");
         model.addAttribute("memail", memail);
         String uuid = String.valueOf(UUID.randomUUID()).substring(0, 6);
         model.addAttribute("uuid",uuid);
         System.out.println(uuid);
         return "findPw";
      }
      model.addAttribute("findPwCheck", 0);
      return "findPw";
   }
   
   @PostMapping("/findPw") 
   public String findPw(@RequestParam Map<String, Object> map, Model model) throws EmailException {
    
      /* util.htmlMailSender(map); */
      System.out.println("findPw 여기" + map);
      String uuidPw = (String) map.get("uuid");
      System.out.println("uuidPw" + uuidPw);
      model.addAttribute("findPwEmail", 1);
      model.addAttribute("uuidPw", uuidPw);
       mainService.temporaryPw(map);
        return "findPw";
    
     }

   @PostMapping("findPwFinal")
   public String findPwFinal() {
      return "login";
   }
   

}