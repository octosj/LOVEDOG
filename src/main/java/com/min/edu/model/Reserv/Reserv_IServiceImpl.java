package com.min.edu.model.Reserv;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.min.edu.dto.Obj_Dto;
@Service
public class Reserv_IServiceImpl implements Reserv_IService {
	
	@Autowired
	Reserv_IDao dao;
	
	Logger log = LoggerFactory.getLogger(Reserv_IServiceImpl.class);

	@Override
	public List<Obj_Dto> selectObj(String h_regi) {
		log.info("selectObj\t : {}"+h_regi);
		return dao.selectObj(h_regi);
	}
	
	public List<Obj_Dto> SelectOBJ() {
		
		return dao.SelectOBJ();
	}
	

}
