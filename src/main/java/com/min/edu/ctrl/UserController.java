
package com.min.edu.ctrl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.min.edu.dto.Hospi_Dto;
import com.min.edu.dto.User_Dto;
import com.min.edu.model.User.User_IService;

@Controller
public class UserController {
	//유저관련 Controller
	Logger log = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private User_IService service;
	
	@RequestMapping(value = "/index.do", method = RequestMethod.GET)
	public String index(HttpSession session,Model model) {
		log.info("index 메인 페이지 이동 {}", new Date());
		User_Dto Udto = (User_Dto) session.getAttribute("user");
		model.addAttribute("Udto", Udto);
		return "index";
	}
	@RequestMapping(value = "/H_index.do", method = RequestMethod.GET)
	public String H_index(HttpSession session,Model model) {
		log.info("H_index 병원 메인 페이지 이동 {}", new Date());
		Hospi_Dto Hdto = (Hospi_Dto) session.getAttribute("user");
		log.info("H_index 병원 메인 페이지 이동 {}", Hdto);
		model.addAttribute("Hdto", Hdto);
		return "H_index";
	}
	@RequestMapping(value = "/Mypage.do", method = RequestMethod.GET)
	public String Mypage(Model model, String u_id) {
		log.info("Mypage 마이페이지 이동 {}", u_id);
		User_Dto dto = service.SelectOneuser(u_id);
		model.addAttribute("dto", dto);
		return "Mypage";
	}
	@RequestMapping(value = "/H_Mypage.do", method = RequestMethod.GET)
	public String H_Mypage(Model model, String u_id) {
		log.info("H_Mypage 병원 정보 페이지  {}", new Date());
		Hospi_Dto Hdto = service.SelectOnehospital(u_id);
		model.addAttribute("Hdto", Hdto);
		return "H_Mypage";
	}
	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	public String UserList(Model model) {
		log.info("UserList 회원 전체 조회 페이지 이동 {}", model);
		List<User_Dto> lists = service.SelectAlluser();
		model.addAttribute("lists", lists);
		return "UserList";
	}
	@RequestMapping(value = "/H_main.do", method = RequestMethod.GET)
	public String HospitalList(Model model) {
		log.info("HospitalList 병원 전체 조회 페이지 이동 {}", model);
		List<Hospi_Dto> Hdto = service.SelectAllhospital();
		model.addAttribute("Hdto", Hdto);
		return "HospitalList";
	}
	@RequestMapping(value = "/delete.do", method = RequestMethod.GET)
	public String delete() {
		log.info("delete 회원 삭제 / 탈퇴 {}", new Date());
		return "DeleteForm";
	}
	@RequestMapping(value = "/deleteForm.do", method = RequestMethod.POST)
	public String delete(HttpSession session) {
		log.info("delete 회원 삭제 / 탈퇴 {}", new Date());
		User_Dto dto = (User_Dto) session.getAttribute("user");
		log.info("delete 회원 삭제 / 탈퇴 {}", dto);
		boolean isc = service.DeleteUser(dto.getU_id());
		return isc?"redirect:/Mypage.do?u_id="+dto.getU_id():"redirect:/delete.do";
	}
	@RequestMapping(value = "/modifyUser.do", method = RequestMethod.POST)
	public String modifyUser(HttpSession session, User_Dto dto) {
		log.info("modifyUser 회원 수정 완료 {}", dto);
		User_Dto mdto = (User_Dto) session.getAttribute("user");
		log.info("modifyUser 회원 수정 완료 {}", mdto);
		dto.setU_id(dto.getU_id());
		boolean isc = service.UserModify(dto);
		return isc? "redirect:/mainOne.do?u_id="+dto.getU_id():"redirect:/modifyUser.do";
	}
	@RequestMapping(value = "/modifyUserForm.do", method = RequestMethod.GET)
	public String modifyPw(HttpSession session,Model model) {
		log.info("modifyPw 회원 수정 페이지로 이동~~ {}", new Date());
		User_Dto dto = (User_Dto) session.getAttribute("user");
		model.addAttribute("dto", dto);
		return "ModifyPw";	
	}
	@RequestMapping(value="/modifyPw.do", method = RequestMethod.POST)
	public String UserModify() {
		log.info("UserModify 회원 수정 페이지로 이동~~ {}", new Date());
		return "UserModify";
	}
	@RequestMapping(value = "/apply.do", method= RequestMethod.GET)
	public String Hospi_apply() {
		log.info("Hospi_apply 병원 신청 페이지  {}", new Date());
		return "HospitalApp";
	}
	
}