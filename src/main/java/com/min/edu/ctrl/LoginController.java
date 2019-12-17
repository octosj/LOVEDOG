package com.min.edu.ctrl;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.min.edu.dto.User_Dto;
import com.min.edu.model.Login.Login_IService;

@Controller
public class LoginController {
	private Logger log = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	private Login_IService service;

	@RequestMapping(value = "/init.do", method = RequestMethod.GET)
	public String init() {
		log.info("환영합니다! index page에 접속을 성공했습니다! ");
	    return "init";
}
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login() {
		log.info("환영합니다! login page에 접속을 성공했습니다! ");
		return "login";
}
	
	@RequestMapping(value="/loginAjax.do",method=RequestMethod.POST)	
	@ResponseBody 
	public Map<String, String>loginAjax(HttpSession session, User_Dto dto){ 
		  log.info("********LoginAjax 실행합니다{}********",dto);
		  Map<String, String> map = new HashMap<String, String>(); 
		  map.put("u_id", dto.getU_id()); 
		  map.put("u_password", dto.getU_password());
		  map.put("u_auth", dto.getU_auth());
		  System.out.println(map);
		  System.out.println();
		  User_Dto Udto = service.loginUser(map);
			  	if(Udto == null) {
			  		map.put("msg", "실패");
			  	}else if(Udto != null){
			  		map.put("msg", "성공");
			  	}
		 log.info("********LoginAjax 종료합니다{}********",dto);
		 return map; 
				}
	
	@RequestMapping(value = "/loginU.do", method = RequestMethod.POST)
	public String LoginU(HttpSession session, User_Dto dto) {
		Map<String, String> map = new HashMap<String, String>(); 
				map.put("u_id", dto.getU_id()); 
			if(dto.getU_id() == "admin") {
				map.put("u_password", dto.getU_password());
				map.put("u_auth", "A");
			}else{
				map.put("u_password", dto.getU_password());
				map.put("u_auth", dto.getU_auth());
			}
		log.info("LoginU에 접근합니다. --{}",dto.getU_id());
		User_Dto Udto = service.loginUser(map);
		session.setAttribute("user", Udto);
		System.out.println(dto.getU_id());
		System.out.println(dto.getU_auth());
 		return "redirect:/view.do";
	}

	@RequestMapping(value = "/loginH.do", method = RequestMethod.POST)
	public String LoginH(HttpSession session, User_Dto dto) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("u_id", dto.getU_id());
		map.put("u_password", dto.getU_password());
		map.put("u_auth", dto.getU_auth());
		log.info("LoginH에 접근합니다. --{}",dto.getU_id());
		log.info("LoginH에 접근합니다. --{}",dto.getU_auth());
		User_Dto Udto = service.loginUser(map);
		session.setAttribute("Huser", Udto);
		return "redirect:/Hview.do";
	}

	@RequestMapping(value = "/view.do", method = RequestMethod.GET)
	public String view(HttpSession session, User_Dto dto) {
		log.info(" 로그인 성공 ~~~~ ");
		User_Dto Udto = (User_Dto) session.getAttribute("user");
		return "view";
	}

	@RequestMapping(value = "/Hview.do", method = RequestMethod.GET)
	public String Hview(HttpSession session, User_Dto dto) {
		log.info(" 로그인 성공 ~~~~ ");
		User_Dto Udto = (User_Dto) session.getAttribute("Huser");
		return "Hview";
	}
	
	@RequestMapping(value = "/admin.do", method = RequestMethod.GET)
	public String admin(HttpSession session, User_Dto dto) {
		log.info(" 어드민 로그인합니다.  성공 ~~~~ ");
		User_Dto Udto = (User_Dto) session.getAttribute("Huser");
		return "redirect:/Aview.do";
	}
}
