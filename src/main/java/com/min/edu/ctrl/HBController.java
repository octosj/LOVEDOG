package com.min.edu.ctrl;

import java.util.Date;
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

import com.min.edu.dto.HongBoard_Dto;
import com.min.edu.model.HongBoard.HB_IService;

@Controller
public class HBController {
     // 정보게시판 컨트롤러
	
	private Logger log = LoggerFactory.getLogger(HBController.class);

	@Autowired
	private HB_IService service;
	
	// 게시판 목록
	@RequestMapping(value = "/hongboard.do", method = RequestMethod.GET)
	public String hongBoard(Model model) {
		log.info("병원정보 게시판 hongboard.do", new Date());	
		List<HongBoard_Dto> lists = service.hallBoard();
		model.addAttribute("lists", lists);
		log.info("lists {}" , lists);
		return "hongboard";
	}
	
	@RequestMapping(value = "/hdetail.do", method = RequestMethod.GET)
	public String hdetail(Model model, String h_regi, String seq) {
		Map<String,String> map = new HashMap<String,String>();
		map.put("h_regi", h_regi);                         
        map.put("seq", seq);
        List<HongBoard_Dto> lists = service.hdetailBoard(map);
		model.addAttribute("lists", lists);
		return "hdetail";
	}	


	
}





