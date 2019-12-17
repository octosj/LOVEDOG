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
import org.springframework.web.bind.annotation.ResponseBody;

import com.min.edu.dto.AllObj_Dto;
import com.min.edu.dto.Hospi_Dto;
import com.min.edu.model.Reserv.Reserv_IService;

@Controller
public class ReservController {
//예약관련 Controller
	
	Logger log = LoggerFactory.getLogger(ReservController.class);
	
	@Autowired
	Reserv_IService service;
	
	@RequestMapping(value = "/reser.do",method=RequestMethod.GET)
	public String reser(Model model) {
		log.info("resr.do 작동");
		List<AllObj_Dto> lists = service.selectAllObj();
		model.addAttribute("lists",lists);
		return "reser";
	}
	
	@RequestMapping(value = "/objAjax.do",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, List<AllObj_Dto>> objAjax(String main_obj) {
		log.info("objAjax 작동\t:{}",main_obj);
		Map<String, List<AllObj_Dto>> map = new HashMap<String,List<AllObj_Dto> >();
		List<AllObj_Dto> DLists = service.selectAllODetail(main_obj);
		map.put("DLists",DLists);
		return map;
	}
	
	@RequestMapping(value = "/serchReser.do", method = RequestMethod.GET)
	public String serchReser (String r_date, String main_obj, String obj_detail_code, Model model) {
		log.info("serchReser 작동");
		System.out.println(main_obj);
		System.out.println(r_date);
		System.out.println(obj_detail_code);
		Map<String, String> map = new HashMap<String, String>();
		map.put("main_obj", main_obj);
		map.put("r_date", r_date);
		map.put("obj_detail_code", obj_detail_code);
		List<Hospi_Dto> srLists = service.serchReser(map);
		model.addAttribute("lists", srLists);
		System.out.println(srLists);
		return "serchreserList";
	}
	

}
