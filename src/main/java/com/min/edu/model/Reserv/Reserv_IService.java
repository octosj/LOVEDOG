package com.min.edu.model.Reserv;

import java.util.List;

import org.springframework.stereotype.Service;

import com.min.edu.dto.Obj_Dto;


public interface Reserv_IService {
	
	public List<Obj_Dto> selectObj(String h_regi);

	public List<Obj_Dto> SelectOBJ();

}
