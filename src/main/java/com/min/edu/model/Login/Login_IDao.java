package com.min.edu.model.Login;

import java.util.Map;

import com.min.edu.dto.User_Dto;

public interface Login_IDao {

	
		public User_Dto loginU(Map<String,String> map);
		
		public boolean duplicateidCheck(String id);

		public User_Dto loginH(User_Dto dto);

}

