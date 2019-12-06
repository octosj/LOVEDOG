package com.min.edu.ctrl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ReservController {
//예약관련 Controller
	
	Logger log = LoggerFactory.getLogger(ReservController.class);
	
	@RequestMapping(value = "/reser.do",method=RequestMethod.GET)
	public String reser() {
		return "reser";
	}
}
