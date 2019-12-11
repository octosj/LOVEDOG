package com.min.edu.ctrl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HospiController {
// 병원 Controller
	private Logger logger = LoggerFactory.getLogger(HospiController.class);
	
	@RequestMapping(value = "/init.do", method = RequestMethod.GET)
	public String init() {
		logger.info("환영합니다! index page에 접속을 성공했습니다! ");
		return "init";
	}
	
}
