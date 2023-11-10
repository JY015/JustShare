
package com.js.web.util;

import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.HtmlEmail;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

@Component
public class Util {

	  public HttpServletRequest getCurrentRequest() {
	      return ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
	   }
	   public HttpServletResponse getCurrentResponse() {
	      return ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getResponse();
	   }
	   
	   public HttpSession getSession() {
		      return ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest().getSession();
		   }

	   public String uploadPath() {
		      return getCurrentRequest().getServletContext().getRealPath("/upload");
		   }
	
	   
	   public boolean htmlMailSender(Map<String, Object> map) throws EmailException {
		   
			String emailAddr = "eorb1527@outlook.com";// 보내는사람
		    String passwd = "";
			String name = "Just Share 비밀번호 찾기"; // 보내는 사람 이름
			String hostname = "smtp.office365.com";// smtp주소
			int port = 587;
	
			//메일보내기 작업하기
			HtmlEmail mail = new HtmlEmail();
		      mail.setCharset("UTF-8");
		      mail.setDebug(true);
		      mail.setHostName(hostname);
		      mail.setAuthentication(emailAddr, passwd);
		      mail.setSmtpPort(port);
		      mail.setStartTLSEnabled(true);
		      mail.setFrom(emailAddr, name);
		   // mail.addTo("eorb1527@naver.com");
		      mail.addTo(String.valueOf(map.get("to")));
		     // !!!!mail.setSubject(String.valueOf(map.get("title")));
		      mail.setSubject("안녕하세요. JustShare입니다. 임시비밀번호 보내겠습니다.");
		      
		     // mail.setMsg(String.valueOf(map.get("content")));//본문내용
		     // String path = uploadPath();
		      //String img = "";
		      //String file2 = path + "";
		      
		      String html = "<html>";
		     // html += "<h1>그림을 첨부합니다</h1>";
		     // html += "<img alt=\"이미지\" src='"+img+"'>";
		      html += "<h2>임시 비밀번호를 보내드립니다.</h2>";
		      html += "<div>임시 암호: " + String.valueOf(map.get("uuid")) + "</div>";
		      html += "</html>";
		      mail.setHtmlMsg(html);
		      
		      
		      String result = mail.send();//메일보내기
			  System.out.println("메일 보내기:" + result);
			 

		   return true;
	   }
	   

	
}
