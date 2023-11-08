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
import org.springframework.http.ResponseEntity;
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

	@GetMapping("/board") // 게시판 리스트
	public String board(@RequestParam Map<String, Object> map, Model model, PageCriteria cri,
			@RequestParam(name = "areas", required = false) String areas,
			@RequestParam(name = "categories", required = false) String categories,
			@RequestParam(name = "equipments", required = false) String equipments, HttpSession session) {
	
		map.put("sid", session.getAttribute("mid"));
		map.put("areas", areas);
		map.put("categories", categories);
		map.put("equipments", equipments);
		
		// 리스트 총개수 뽑기 
		int listNum = boardService.listNum(map);

		// 지역구 / 시설 / 카테고리 전부 꺼내기 << 모달로 띄울 필터창에 보여줄 목록을 가져오기 위해서
		List<Map<String, Object>> areaList = boardService.areaList();
		List<Map<String, Object>> cl = boardService.cl();
		List<Map<String, Object>> el = boardService.el();

		// 페이징 객체 >> 1page 말고 덧붙이기 할껀데 페이징이 필요한가 ?
		Paging paging = new Paging();
		paging.setCri(cri);
		paging.setTotalCount(listNum);
		map.put("cri", cri);
		
		// 로그인 한 사람의 좋아요 확인하기   >  그 리스트에 글을 어캐 확인해야하지? 이것도 리스트로 같이 찍어주기 ? bno를 뭘 보내줘야함?
		// 이거 리스트를 뽑아서 같이 뿌리기 ?
	
		
		// 리스트 뽑기 + 검색시 + 필터
		List<Map<String, Object>> boardList = boardService.list(map);
		
		model.addAttribute("list", boardList);
		model.addAttribute("paging", paging);
		model.addAttribute("areaList", areaList);
		model.addAttribute("catelist", cl);
		model.addAttribute("equiplist", el);
		return "board";
	}

	// 인피니트 페이지 두번째 페이지 부터 계속 ajax로 생성해서 붙이기
	@ResponseBody
	@PostMapping("/board")
	public String boardp(@RequestParam Map<String, Object> map,HttpSession session) {
		
		// 전체 글 숫자 + 검색
		int listNum = boardService.listNum(map);

		// map 에서 꺼내서 형 변환
		int limitI = Integer.parseInt(map.get("limit").toString());
		int nextPageLimitI = Integer.parseInt(map.get("nextPageLimit").toString());
		
		map.put("limitI", limitI);
		map.put("nextPageLimitI", nextPageLimitI);
		map.put("sid", session.getAttribute("mid"));

		// 최대보다 많으면 더이상 뽑지 않으면
		if (nextPageLimitI < (listNum + 10)) {
			List<Map<String, Object>> listp = boardService.listp(map);
			
			// JSON 배열을 생성하고 데이터 추가
			JSONArray jsonArray = new JSONArray();
			for (Map<String, Object> item : listp) {
				JSONObject jsonObject = new JSONObject(item);;
				jsonArray.put(jsonObject);
			}

			// JSON 응답 반환
			return jsonArray.toString();
		} else {
			// 더 이상의 데이터가 없음을 나타내는 JSON 응답 반환
			return "{\"message\":\"No more data available.\"}";
		}
	}


	@GetMapping("/bwrite") // 글 작성
	public String bwrite(HttpSession session, Model model) {
		if(session.getAttribute("mid") != null) {
		// 시설/카데고리 자료 가져오기
		List<Map<String, Object>> cl = boardService.cl();
		List<Map<String, Object>> el = boardService.el();
		model.addAttribute("catelist", cl);
		model.addAttribute("equiplist", el);
		return "bwrite";
		}else {
		return "redirect:/board";
		}
		}

	@PostMapping("/bwrite")
	public String bwrite(@RequestParam Map<String, Object> map,
			@RequestParam(value = "equipment", required = false) Integer[] equipment,
			@RequestParam("upFile") MultipartFile[] upfile, HttpSession session) {
		if(session.getAttribute("mid") != null) {
		// 로그인 후 글 작성 내용 insert 
		map.put("mid", session.getAttribute("mid"));
		Integer adr = boardService.adr(map);

		// 해당 글 번호 가져오기 >> 이걸 사진이랑 시설에 넣기
		int a = boardService.bno();

		// 체크 박스로 여러개 받은 시설 테이블에 저장
		Map<String, Object> equip = new HashMap<String, Object>();
		int i = 0;
		equip.put("bno", a);
		for (i = 0; i < equipment.length; i++) {
			equip.put("i", equipment[i]);
			boardService.equip(equip);
		}

		// 이미지 업로드 + 대표 사진 설정하는 법
		// path 경로 찾기
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes())
				.getRequest();
		String path = request.getServletContext().getRealPath("/img/places");
		System.out.println(path);
		// 다중 이미지를 가져와서 하나하나 분리함 > 서버에 저장해야함
		// jsp 에서 받은 파일 저장하기
		Map<String, Object> image = new HashMap<String, Object>();
		int f = 0;
		for (f = 0; f < upfile.length; f++) {
			// 파일 이름 꺼내오기
			String originalFilename = upfile[f].getOriginalFilename();

			// 파일 확장자 처리 >> 이미지 파일만 올라갈 수 있게
			String fileExtension = originalFilename.substring(originalFilename.lastIndexOf(".") + 1);
			// 이미지 파일만 처리
			if ("jpg".equalsIgnoreCase(fileExtension) || "png".equalsIgnoreCase(fileExtension)
					|| "bmp".equalsIgnoreCase(fileExtension) ||"jpeg".equalsIgnoreCase(fileExtension)) {
				// 파일 이름 가공 >> 올린 이미지의 이름이 같을 수 있어서
				LocalDateTime ldt = LocalDateTime.now();
				String format = ldt.format(DateTimeFormatter.ofPattern("YYYYMMddHHmmss"));
				String realFileName = format+originalFilename;
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
				if (f == 0) {
					image.put("main", 1);
				} else {
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
	}else {
		return "board";
	}
	}
	@GetMapping("/bdetail")
	public String bdetail(@RequestParam Map<String, Object> map, HttpSession session, Model model) {
		// 해당 게시글 번호 받아와서 게시글 띄우기
		Map<String, Object> detail = boardService.detail(map);
		// 게시글에 연관된 시설명 / 사진 모두 가져오기
		List<String> imageD = boardService.imageD(map);
		List<String> equipD = boardService.equipD(map);
		// 해당글의 좋아요 수 가져오기 
		Integer likesCount = boardService.likesCount(map); 
		// 로그인 한 사람의 좋아요 가져오기
		String sid = String.valueOf( session.getAttribute("mid")) ;
		map.put("sid",sid);
		Integer isLike = boardService.isLike(map);
		
		model.addAttribute("likesCount", likesCount);
		model.addAttribute("isLike", isLike);
		model.addAttribute("imageD", imageD);
		model.addAttribute("equipD", equipD);
		model.addAttribute("detail", detail);
		return "bdetail";
	}

	@GetMapping("/bdelete")
	public String bdetail(@RequestParam Map<String, Object> map, HttpSession session) {
		// 로그인 확인
		if(session.getAttribute("mid") != null) {
		// 아이디 일치 확인 	
		Map<String, Object> detail = boardService.detail(map);
		String rid = String.valueOf(detail.get("mid"));
		String sid = String.valueOf( session.getAttribute("mid")) ;
		if(rid.equals(sid)) {
		int a = boardService.del(map);
		return "redirect:board";
		}else {
		return "redirect:board";	
		}
		}else {
		return "redirect:board";
	}
	}

	@GetMapping("/bedit")
	public String bedit(@RequestParam Map<String, Object> map, HttpSession session, Model model) {
		//로그인 확인
		if(session.getAttribute("mid") != null) {
		// 게시글 내용 그대로 받아오기 +  아이디 일치확인
		Map<String, Object> detail = boardService.detail(map);
		String rid = String.valueOf(detail.get("mid"));
		String sid = String.valueOf( session.getAttribute("mid")) ;
		if(rid.equals(sid)) {
		List<String> imageD = boardService.imageD(map);
		// 번호를 가져와야함
		List<Integer> equipDE = boardService.equipDE(map);
		// 카테고리/ 시설 명 가져오기
		List<Map<String, Object>> cl = boardService.cl();
		List<Map<String, Object>> el = boardService.el();
		// 올렸던 파일 가져오기

		model.addAttribute("catelist", cl);
		model.addAttribute("equiplist", el);
		model.addAttribute("imageD", imageD);
		model.addAttribute("equipDE", equipDE);
		model.addAttribute("detail", detail);
		return "bedit";
		}else{ return "redirect:/bdetail?bno="+map.get("bno");
		}
		}else{ return "redirect:/bdetail?bno="+map.get("bno");
		}
		}
	
	@PostMapping("/bedit")
	public String beditU(@RequestParam Map<String, Object> map,
			@RequestParam(value = "equipment", required = false) Integer[] equipment,
			@RequestParam("upFile") MultipartFile[] upfile, HttpSession session) {
		
		// map 으로 새로받은 데이터는 업데이트 
		
		// 로그인 확인 + id 일치 확인 해야함 아직안함 
		// 수정하는 사람의 mid 넣어주기 
		String sid = String.valueOf( session.getAttribute("mid")) ;
		map.put("mid", sid);
		int result = boardService.bedit(map);
		// 체크 박스로 받은 시설 테이블 수정 >기존에 있던 bno가 일치하는 컬럼 전부 지우기>> 지우고 다시 쓰는 이유- 갯수가 달라질수 있어서 // 겹치는거 체크 ?
		boardService.deleteEquip(map);
		// 새로 받은 시설 테이블 추가 
		Map<String, Object> equip = new HashMap<String, Object>();
		int i = 0;
		equip.put("bno", map.get("bno"));
		for (i = 0; i < equipment.length; i++) {
			equip.put("i", equipment[i]);
		boardService.equip(equip);	
		}
		// 이미지 처리법 어려움  기존 이미지 지우고 새로운 이미지 추가 > 겹치는거면 ? >시설처럼하면 서버에 남은 이미지 파일이 문제 
		
		return "redirect:/bdetail?bno="+map.get("bno");
	}
	
	
	@GetMapping("/report")
	public String report(@RequestParam Map<String, Object> map, HttpSession session, Model model) {
		// 세션확인
		if(session.getAttribute("mid") != null) {
		// 신고하는 사람이 본인과 아이디가 같다면 신고 막기 
		String mid = String.valueOf(map.get("mid"));
		String rmid = String.valueOf(session.getAttribute("mid"));
		if(mid.equals("rmid")) {
			return "redirect:/bdetail?bno="+map.get("bno");
		}else {
			// 카테고리 꺼내오기 
			List<Map<String, Object>> reportCateList = boardService.reportCateList();
			// 신고하는 사람 넣기 
			map.put("rmid", session.getAttribute("mid"));
			// 중복 신고 확인하기 
			int dp = boardService.dp(map);
			map.put("dp",dp);
			model.addAttribute("reportCateList",reportCateList);
			model.addAttribute("map", map);
			return "report";
			}
		}
		else {	return "redirect:/bdetail?bno="+map.get("bno");
		}
		}

	@PostMapping("/report")
	public String reportp(@RequestParam Map<String, Object> map, HttpSession session, Model model) {
		// 로그인 검사 + 신고자 
		if(session.getAttribute("mid") != null) {
		int dp = boardService.dp(map);
		if (dp == 0) {
			// 신고 받은 내용 DB에 저장하기
			
			int a = boardService.report(map);
			// 신고 완료한 글에 대하여 표시하기 >>> rmno 와 sessionid 가 같고 dp가 0이 아니면 불드러오게
			model.addAttribute("dp", dp);
			return "redirect:/bdetail?bno=" + map.get("bno");
		} else {

			return "redirect:/bdetail?bno=" + map.get("bno");
		}

		}else {
		return "redirect:/bdetail?bno=" + map.get("bno");
		}
	}
	
	
	  @ResponseBody
	  @PostMapping("/like") 
	  public  ResponseEntity<String> like(@RequestParam Map<String, Object> map) {
		 // 좋아요가 찍혀있으면 삭제/ 없으면 추가 
		 // 작성 글이 본인 글이라면 좋아요 할 수 없게 ? 걸어야하나 말아야하나 ?
		  String likes = String.valueOf(map.get("likes"));
		  if(likes.equalsIgnoreCase("off")) {
			  boardService.deleteLike(map);
		  }else {
			  boardService.insertLike(map);
		  }
		  
		  return ResponseEntity.ok().build(); 
		  
	  }
	 

}
