/**
 * 
 */
package com.min.edu.model.Hospi;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.min.edu.dto.Hospi_Dto;
import com.min.edu.dto.User_Dto;

/**
 * @author octo
 *
 */
@Repository
public class Hospi_IDaoImpl implements Hospi_IDao {

	@Autowired
	private SqlSessionTemplate SqlSession;
	private final String NS ="com.min.edu.dto.Hospi_Dto.";
	
	@Override
	public boolean insertHospital(Hospi_Dto dto) {
		int cnt = SqlSession.insert(NS+"insertHospital");
		return cnt>0?true:false;
	}

	@Override
	public boolean updateHospital(User_Dto dto) {
		int cntU = SqlSession.update(NS+"updateHospital", dto);
		return cntU>0?true:false;
	}

	@Override
	public boolean deleteHospital(String u_id) {
		int cnt = SqlSession.delete(NS+"deleteHospital");
		return false;
	}

	@Override
	public List<Hospi_Dto> selectAllHospital() {
	
		return SqlSession.selectList(NS+"selectAllHospital");
	}

	@Override
	public boolean selectOneHospital(String u_id) {
		
		return SqlSession.selectOne(NS+"selectOneHospital", u_id);
	}

	@Override
	public boolean insertAni(Map<String, String[]> main_ani) {
		int cnt = SqlSession.insert(NS+"insertAni", main_ani);
		return cnt>0?true:false;
	}

	@Override
	public boolean insertObj(Map<String, String[]> main_obj) {
		int cnt = SqlSession.insert(NS+"insertObj", main_obj);
		return cnt>0?true:false;
	}


	
}
