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

import com.min.edu.dto.Hospi_Dto;
import com.min.edu.dto.User_Dto;
import com.min.edu.model.Hospi.Hospi_IService;

@Controller
public class HospiController {
// 병원 Controller
	private Logger logger = LoggerFactory.getLogger(HospiController.class);
	
	@Autowired
	private Hospi_IService service;

	// 관리자 첫화면
	@RequestMapping(value = "/mainH.do", method = RequestMethod.GET)
	public String mainH() {
		logger.info("mainH 관리자 첫화면\t{}", new Date());
		return "HospiMain";
	}

	
	// 병원목록
	@RequestMapping(value = "/HospiList.do", method = RequestMethod.GET)
	public String HospiList(Model model) {
		logger.info("HospiList \t{}", new Date());
		List<Hospi_Dto> lists = service.selectAllHospital();
		model.addAttribute("lists", lists);
		return "HospiList";
	}
	
}
