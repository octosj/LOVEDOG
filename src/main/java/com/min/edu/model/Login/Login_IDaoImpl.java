/**
 * 
 */
package com.min.edu.model.Login;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.min.edu.dto.User_Dto;


@Repository
public class Login_IDaoImpl implements Login_IDao {

	private Logger log = LoggerFactory.getLogger(Login_IDaoImpl.class);
	private final String NS = "sarang.hagae.";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	

	@Override
	public User_Dto loginH(User_Dto dto) {
		return sqlSession.selectOne(NS+"loginH", dto);
	}
	
	@Override
	public boolean duplicateidCheck(String id) {
		int cnt = sqlSession.selectOne(NS+"duplicateidCheck", id);
		return cnt==1?false:true;
	}

	@Override
	public User_Dto loginU(Map<String, String> map) {
		return sqlSession.selectOne(NS+"loginU", map);
	}



}
