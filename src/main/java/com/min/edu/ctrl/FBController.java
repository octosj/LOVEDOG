package com.min.edu.ctrl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.min.edu.dto.FreeBoard_Dto;
import com.min.edu.model.FreeBoard.FB_IService;


@Controller
public class FBController {
   // 자유게시판 컨트롤러
	
	private Logger log = LoggerFactory.getLogger(FBController.class);

	@Autowired
	private FB_IService service;
	
	@RequestMapping(value = "/freeboard.do" , method = RequestMethod.GET)
	public ModelAndView freeBoard(Model model,String selEtc, 
			@RequestParam(defaultValue="u_id") String search_option, 
			@RequestParam(defaultValue="") String keyword   //키워드의 기본값을 "" 공백으로
	) {
		log.info("search_option {}", search_option);
		log.info("keyword {}", keyword);
		log.info("selEtc {}", selEtc);
				
		List<FreeBoard_Dto> lists = service.allBoard(selEtc, search_option, keyword);
		model.addAttribute("lists", lists);
		
		ModelAndView mav = new ModelAndView();
        Map<String,Object> map = new HashMap<>();
              
        map.put("list", lists);                         
        map.put("search_option", search_option);
        map.put("selEtc", selEtc);
        map.put("keyword", keyword);
        mav.addObject("map", map);  
        
        log.info("mav : {}", mav);
        
        return mav;    
		
	}
	
	@RequestMapping(value = "/reviewboard.do", method = RequestMethod.GET)
	public ModelAndView reviewboard(Model model,String selEtc, 
			@RequestParam(defaultValue="u_id") String search_option, 
			@RequestParam(defaultValue="") String keyword   //키워드의 기본값을 "" 공백으로
	) {
		log.info("search_option {}", search_option);
		log.info("keyword {}", keyword);
		log.info("selEtc {}", selEtc);
				
		List<FreeBoard_Dto> lists = service.allBoard(selEtc, search_option, keyword);
		model.addAttribute("lists", lists);
		
		ModelAndView mav = new ModelAndView();
        Map<String,Object> map = new HashMap<>();
              
        map.put("list", lists);                         
        map.put("search_option", search_option);
        map.put("selEtc", selEtc);
        map.put("keyword", keyword);
        mav.addObject("map", map);  
        
        log.info("mav : {}", mav);
        
        return mav;    
		
	}
	
	@RequestMapping(value = "/noticeboard.do", method = RequestMethod.GET)
	public ModelAndView noticeboard(Model model,String selEtc, 
			@RequestParam(defaultValue="u_id") String search_option, 
			@RequestParam(defaultValue="") String keyword   //키워드의 기본값을 "" 공백으로
	) {
		log.info("search_option {}", search_option);
		log.info("keyword {}", keyword);
		log.info("selEtc {}", selEtc);
				
		List<FreeBoard_Dto> lists = service.allBoard(selEtc, search_option, keyword);
		model.addAttribute("lists", lists);
		
		ModelAndView mav = new ModelAndView();
        Map<String,Object> map = new HashMap<>();
              
        map.put("list", lists);                         
        map.put("search_option", search_option);
        map.put("selEtc", selEtc);
        map.put("keyword", keyword);
        mav.addObject("map", map);  
        
        log.info("mav : {}", mav);
        
        return mav;    
		
	}
	
	@RequestMapping(value = "/detail.do", method = RequestMethod.GET)
	public String detail(Model model, String seq) {
		log.info("상세보기 detail.do{}", seq);
		FreeBoard_Dto lists = service.detailBoard(seq);
		model.addAttribute("lists", lists);
		return "detail";
	}	
	
	@RequestMapping(value = "/del.do" , method = RequestMethod.GET)
	public String delBoard(String seq, String selEtc) {
		log.info("단일 삭제 del.do{}", seq);
		boolean isc = service.delBoard(seq);
		log.info("selEtc===={}", selEtc);
		log.info("isc=======>"+isc);
		switch (selEtc) {
		case "F":
			return isc?"redirect:/freeboard.do?selEtc="+selEtc:"redirect:/detail.do";
		case "R":
			return isc?"redirect:/reviewboard.do?selEtc="+selEtc:"redirect:/detail.do";
		default:
			return isc?"redirect:/noticeboard.do?selEtc="+selEtc:"redirect:/detail.do";
		}
		
		
	}
	
	// 전체보기 -> 글 쓰기 폼 
	@RequestMapping(value = "/write.do", method = RequestMethod.GET)
	public String writeA() {
		return "write";	
	}
	
	// 글쓰기 폼 -> 등록
	@RequestMapping(value = "/Nwrite.do", method = RequestMethod.POST)
	public String write(FreeBoard_Dto dto, String selEtc, String seq,Model model) {
		log.info("글작성  Nwrite.do \t {}", dto);
		FreeBoard_Dto mdto = service.detailBoard(seq);
		 model.addAttribute("mdto",mdto);
		boolean isc =  service.insertBoard(dto);
		switch (selEtc) {
		case "F":
			return isc?"redirect:/freeboard.do?selEtc="+selEtc:"redirect:/write.do";
		case "R":
			return isc?"redirect:/reviewboard.do?selEtc="+selEtc:"redirect:/write.do";
		default:
			return isc?"redirect:/noticeboard.do?selEtc="+selEtc:"redirect:/write.do";
		}	
	}
	
	// 수정 폼 -> 수정하기
	@RequestMapping(value = "/modify.do", method = RequestMethod.POST)
	public String modify(FreeBoard_Dto dto, String selEtc) {
		log.info("수정 modify.do : \t{}", dto);
		boolean isc = service.modifyBoard(dto);
		log.info("selEtc===={}", selEtc);
		log.info("isc=======>"+isc);
		switch (selEtc) {
		case "F":
			return isc?"redirect:/freeboard.do?selEtc="+selEtc:"redirect:/modify.do";
		case "R":
			return isc?"redirect:/reviewboard.do?selEtc="+selEtc:"redirect:/modify.do";
		default:
			return isc?"redirect:/noticeboard.do?selEtc="+selEtc:"redirect:/modify.do";
		}	
	}
	
	// 상세보기 -> 수정 폼
	@RequestMapping(value = "/modifyForm.do", method = RequestMethod.GET)
	public String modifyA(Model model, String seq) {
		log.info("수정폼 modifyForm.do : \t{}", seq);
		FreeBoard_Dto dto = service.detailBoard(seq);
		 model.addAttribute("dto",dto);
		return "modifyForm";
		
	}
	
	// 답글 폼 -> 답글 등록
	@RequestMapping(value="/reply.do", method = RequestMethod.POST)
	public String reply(FreeBoard_Dto dto, String selEtc) {
		log.info("답글 reply.do : \t{}", dto);
		boolean iscI =  service.replyBoard(dto);
		log.info("selEtc===={}", selEtc);
		log.info("isc=======>"+iscI);
		switch (selEtc) {
		case "F":
			return iscI?"redirect:/freeboard.do?selEtc="+selEtc:"redirect:/replyForm.do";
		case "R":
			return iscI?"redirect:/reviewboard.do?selEtc="+selEtc:"redirect:/replyForm.do";
		default:
			return iscI?"redirect:/noticeboard.do?selEtc="+selEtc:"redirect:/replyForm.do";
		}	
	}
	
	// 상세보기 -> 답글 폼으로 이동
	@RequestMapping(value = "/replyForm.do", method = RequestMethod.GET)
	public String replyA(Model model, String seq) {
		log.info("답글폼 replyForm.do : \t{}", seq);
		FreeBoard_Dto dto = service.detailBoard(seq);
		model.addAttribute("dto", dto);
		return "replyForm";
	}
	
	
}















