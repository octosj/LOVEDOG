package com.min.edu.model.Reserv;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.min.edu.dto.Obj_Dto;

@Repository
public class Reserv_IDaoImpl implements Reserv_IDao {
	
	@Autowired
	SqlSessionTemplate session;
	
	String NS = "sarang.hagae.reser.";

	@Override
	public List<Obj_Dto> selectObj(String h_regi) {
		
		return session.selectList(NS+"selectObj",h_regi);
	}

	@Override
	public List<Obj_Dto> SelectOBJ() {
		
		return session.selectList(NS+"SelectOBJ");
	}

}
