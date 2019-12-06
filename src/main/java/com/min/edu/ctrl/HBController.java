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

import com.min.edu.dto.HongBoard_Dto;
import com.min.edu.model.HongBoard.HB_IService;

@Controller
public class HBController {
     // 정보게시판 컨트롤러
	
	private Logger log = LoggerFactory.getLogger(FBController.class);

	@Autowired
	private HB_IService service;
	
	@RequestMapping(value = "/hongboard.do", method = RequestMethod.GET)
	public String hongBoard(Model model) {
		log.info("병원정보 게시판 hongboard.do", new Date());
		List<HongBoard_Dto> lists = service.hallBoard();
		model.addAttribute("lists", lists);
		return "hongboard";
	}
	
	
	
	
}
