package com.js.web.board;

import java.io.File;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.multipart.MultipartFile;



@Controller
public class BoardController {
	@Autowired
	private BoardService boardService;
	
	@GetMapping("/board")    // 게시판 리스트 
	public String board(Model model,PageCriteria cri) {
		// 조건 1. 검색을 실시하지 않았을때
		// 전체 글 개수
        int listNum = boardService.listNum();
		// 페이징 객체
        Map<String, Object> map = new HashMap<String, Object>();
        Paging paging = new Paging();
        paging.setCri(cri);
        paging.setTotalCount(listNum);    
        map.put("cri", cri);
		List<Map<String, Object>> boardList = boardService.list(map);
		model.addAttribute("list",boardList);
		model.addAttribute("paging", paging);
		return "board";
	}
	
	// 인피니트 페이지
	@ResponseBody
	@PostMapping("/board")
	public String boardp(@RequestParam Map<String,Object> map ) {
		// 전체 글 숫자 
		int listNum = boardService.listNum();
		// map 에서 꺼내서 형 변환 
		int limit = Integer.parseInt(map.get("limit").toString());
		int nextPageLimit = Integer.parseInt(map.get("nextPageLimit").toString());
		Map<String,Integer> intLimit = new HashMap<String, Integer>();
		intLimit.put("limit", limit);
		intLimit.put("nextPageLimit", nextPageLimit);
		
		// 최대보다 많으면 더이상 뽑지 않으면
		 if( nextPageLimit < listNum) {
		        List<Map<String, Object>> listp = boardService.listp(intLimit);
		     // JSON 배열을 생성하고 데이터 추가
		        JSONArray jsonArray = new JSONArray();
		        for (Map<String, Object> item : listp) {
		            JSONObject jsonObject = new JSONObject(item);
		            jsonArray.put(jsonObject);
		        }
		        // JSON 응답 반환
		        return jsonArray.toString();
		    } else {
		        // 더 이상의 데이터가 없음을 나타내는 JSON 응답 반환
		        return "{\"message\":\"No more data available.\"}";
		    }
	}
	
	@GetMapping("/bwrite")   // 글 작성
	public String bwrite(HttpSession session,Model model) {
		// 세션없으면 빠꾸시키기 추가하기 >> 로그인 생기면 
		//시설/카데고리  자료 가져오기  
		List<Map<String, Object>> cl = boardService.cl();
		List<Map<String, Object>> el = boardService.el();
		model.addAttribute("catelist",cl);
		model.addAttribute("equiplist",el);
		return "bwrite";
	}
	@PostMapping("/bwrite")
	public String bwrite(@RequestParam Map<String, Object>map,@RequestParam(value="equipment"
	, required= false)Integer[] equipment,@RequestParam("upFile")MultipartFile[] upfile,HttpSession session) {
		 
		// session.getAttribute("mno"); map.put("mno",mno) 로그인 생기면 밑에 수정
		//게시글 작성 + 주소 변형후 DB에 넣기 
		// 임시 회원번호 부여
		// 이거 조건을 걸때 사진은 반드시있어야하니깐 제일 위에 if해서 걸어주기 안함아직
		map.put("mno", 1);

		Integer adr = boardService.adr(map); 
		
		
		// 해당 글 번호 가져오기  >> 이걸 사진이랑 시설에 넣기 
		int a = boardService.bno(); 
		
		// 체크 박스로 여러개 받은 시설 테이블에 저장 
		Map<String, Object> equip = new HashMap<String, Object>();
		int i = 0 ;
		equip.put("bno", a);
		for (i=0;i<equipment.length;i++) {
            equip.put("i", equipment[i]);
            boardService.equip(equip);
         }
		
		
		// 이미지 업로드      +  대표 사진 설정하는 법 
		// path 경로 찾기
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes())
				.getRequest();
		String path = request.getServletContext().getRealPath("/img/places");
		System.out.println(path);
		// 다중 이미지를 가져와서 하나하나 분리함 > 서버에 저장해야함 
		//  jsp 에서 받은 파일 저장하기 
		Map<String, Object> image = new HashMap<String, Object>();
		int f =0 ;
		for(f=0; f<upfile.length;f++) {
			// 파일 이름 꺼내오기
			String originalFilename = upfile[f].getOriginalFilename();
			
			// 파일 확장자  처리 >> 이미지 파일만 올라갈 수 있게 
			String fileExtension = originalFilename.substring(originalFilename.lastIndexOf(".") + 1);
			// 이미지 파일만 처리
            if ("jpg".equalsIgnoreCase(fileExtension) || "png".equalsIgnoreCase(fileExtension)||"bmp".equalsIgnoreCase(fileExtension)) {
            	// 파일 이름 가공 >> 올린 이미지의 이름이 같을 수 있어서 
            	LocalDateTime ldt = LocalDateTime.now();
    			String format = ldt.format(DateTimeFormatter.ofPattern("YYYYMMddHHmmss"));
            	String realFileName = format + originalFilename;   
				// 이미지 업로드 
				File newFileName = new File(path,realFileName);
				try {
				} catch (Exception e) {
					e.printStackTrace();
				}
				try {
					FileCopyUtils.copy(upfile[f].getBytes(), newFileName);
				} catch (IOException e) {
					e.printStackTrace();
				}
				// 업로드 된 해당 이미지를 DB에 기록하기
				// 첫번째로 올린 이미지를 메인이미지로 >> 메인 이미지 선택은 나중에
				if(f==0) {
					image.put("main", 1);
				}else {
					image.put("main", 0);
				}
				image.put("bno", a);
				image.put("originalFilename", originalFilename);
				image.put("realFileName", realFileName);
				 boardService.image(image); 
            	
            } else {
                // 이미지가 아닌 파일은 처리하지 않음
                return "이미지 파일만 가능합니다.";
            }
	
		}
		
		return "redirect:board";
	}
	
	@GetMapping("/bdetail")
	public String bdetail(@RequestParam Map<String,Object> map,HttpSession session,Model model ) {
		// 해당 게시글 번호 받아와서 게시글 띄우기 
		Map<String, Object> detail = boardService.detail(map);
		// 게시글에 연관된 시설명 / 사진 모두 가져오기 
		
		List<String> imageD = boardService.imageD(map);
		List<String> equipD = boardService.equipD(map);
		
		model.addAttribute("imageD", imageD);
		model.addAttribute("equipD", equipD);
		model.addAttribute("detail", detail);
		return "bdetail";
	}
	
	@GetMapping("/bdelete")
	public String bdetail(@RequestParam Map<String,Object> map,HttpSession session) {
		// 아이디 일치 확인
		// 게시글 받아와서 삭제
		int a = boardService.del(map);
		return "redirect:board";
	}
	@GetMapping("/bedit")
	public String bedit(@RequestParam Map<String,Object> map,HttpSession session,Model model) {
		// 아이디 일치확인
		//게시글 내용 그대로 받아오기 
		Map<String, Object> detail = boardService.detail(map);
		List<String> imageD = boardService.imageD(map);
		// 번호를 가져와야함 
		List<Integer> equipDE = boardService.equipDE(map);
		// 카테고리/ 시설 명 가져오기 
		List<Map<String, Object>> cl = boardService.cl();
		List<Map<String, Object>> el = boardService.el();
		// 올렸던 파일 가져오기 
		
		
		model.addAttribute("catelist",cl);
		model.addAttribute("equiplist",el);
		model.addAttribute("imageD", imageD);
		model.addAttribute("equipDE", equipDE);
		model.addAttribute("detail", detail);
		return "bedit";
	}
	// 수정 아직 다안함 >> 파일을 다시 돌아오게하는 법을 몰라서 그거 띄우고  post 만들거임
	
	@GetMapping("/report")
	public String report(@RequestParam Map<String,Object> map,HttpSession session,Model model ) {
		// 신고하는 사람 추가 >> 나중에 세션으로 받는거로 수정
		map.put("rmno", 2);
		model.addAttribute("map", map);
		return "report";
	}
	@PostMapping("/report")
	public String reportp(@RequestParam Map<String,Object> map,HttpSession session,Model model ) {
		// 중복 신고에 대해서 어떻게 막아야할까?
		
		// 신고 받은 내용 DB에 저장하기 
		int a = boardService.report(map);
		return "redirect:/bdetail?bno="+map.get("bno");
	}
}
