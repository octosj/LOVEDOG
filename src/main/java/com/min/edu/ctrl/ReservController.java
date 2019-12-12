package com.min.edu.ctrl;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.min.edu.dto.Obj_Dto;
import com.min.edu.model.Reserv.Reserv_IService;

@Controller
public class ReservController {
//예약관련 Controller
	
	Logger log = LoggerFactory.getLogger(ReservController.class);
	
	@Autowired
	Reserv_IService service;
	
	@RequestMapping(value = "/reser.do",method=RequestMethod.GET)
	public String reser(Model model) {
			List<String> o_code = new ArrayList<String>();
			o_code.add("A");
			o_code.add("B");
			model.addAttribute("o_code", o_code);
		return "reser";
	}
	
	public String reserSerch(Model model, String h_regi) {
		log.info("진료 동물 조회\t :{}"+h_regi);
		List<Obj_Dto> lists = service.selectObj(h_regi);
		model.addAttribute("lists",lists);
		return"";
	}
}
