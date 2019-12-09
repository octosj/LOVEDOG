package com.min.edu.ctrl;

import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.min.edu.dto.FreeBoard_Dto;
import com.min.edu.model.FreeBoard.FB_IService;


@Controller
public class FBController {
   // 자유게시판 컨트롤러
	
	private Logger log = LoggerFactory.getLogger(FBController.class);

	@Autowired
	private FB_IService service;
	
	@RequestMapping(value = "/freeboard.do" , method = RequestMethod.GET)
	public String freeBoard(Model model,String selEtc) {
		log.info("자유게시판 freeboard.do", new Date());
		List<FreeBoard_Dto> lists = service.allBoard(selEtc);
		model.addAttribute("lists", lists);
		return "freeboard";
		
	}
	
	@RequestMapping(value = "/reviewboard.do", method = RequestMethod.GET)
	public String reviewBoard(Model model, String selEtc) {
		log.info("후기게시판 reviewBoard.do", new Date());
		List<FreeBoard_Dto> lists = service.allBoard(selEtc);
		model.addAttribute("lists", lists);
		return "reviewboard";
	}
	
	@RequestMapping(value = "/noticeboard.do", method = RequestMethod.GET)
	public String noticeboard(Model model, String selEtc) {
		log.info("공지게시판 noticeboard.do", new Date());
		List<FreeBoard_Dto> lists = service.allBoard(selEtc);
		model.addAttribute("lists", lists);
		return "noticeboard";
	}
	
	@RequestMapping(value = "/detail.do", method = RequestMethod.GET)
	public String detail(Model model, String seq) {
		log.info("상세보기 detail.do", seq);
		FreeBoard_Dto lists = service.detailBoard(seq);
		model.addAttribute("lists", lists);
		return "detail";
	}	
	
	@RequestMapping(value = "/del.do" , method = RequestMethod.GET)
	public String delBoard(String seq, String selEtc) {
		log.info("단일 삭제 del.do{}", seq);
		boolean isc = service.delBoard(seq);
		log.info("selEtc===={}", selEtc);
		log.info("isc=======>{}",isc);
		
		return isc?"redirect:/freeboard.do?selEtc="+selEtc:"redirect:/detail.do";
	}
	
	@RequestMapping(value = "/write.do", method = RequestMethod.GET)
	public String writeA() {
	return "write";
	}
	
	
	
	
	
	
	
	
	
}



