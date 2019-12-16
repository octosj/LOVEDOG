package com.min.edu.model.FreeBoard;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.min.edu.ctrl.FBController;
import com.min.edu.dto.FreeBoard_Dto;

@Repository
public class FB_IDaoImpl implements FB_IDao{

	private Logger log = LoggerFactory.getLogger(FB_IDaoImpl.class);
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private final String NS = "sarang.hagae.";
	
	
	@Override
	public boolean insertBoard(FreeBoard_Dto dto) {
		int cnt = sqlSession.insert(NS+"insertBoard", dto);
		return cnt>0?true:false;
	}

	@Override
	public boolean modifyBoard(FreeBoard_Dto dto) {
		int cnt  = sqlSession.update(NS+"modifyBoard", dto);
		return cnt>0?true:false;
	}

	@Override
	public boolean delBoard(String seq) {
		
		log.info("seq=====>{}",seq);
		
		int cnt = sqlSession.update(NS+"delBoard", seq);
		
		log.info("cnt=====>{}",cnt);
		
		return cnt>0?true:false;
	}

	@Override
	public boolean delflagBoard(Map<String, String[]> map) {
		int cnt = sqlSession.update(NS+"delflagBoard", map);
		return cnt>0?true:false;
	}


	@Override
	public List<FreeBoard_Dto> allBoard(String selEtc, String search_option, String keyword) {
		Map<String, String> map = new HashMap<String, String>();
		
		log.debug("selEtc=============>{}",selEtc);
		
		map.put("selEtc", selEtc);
		map.put("search_option", search_option);
		map.put("keyword", keyword);
		return sqlSession.selectList(NS+"allBoard", map);
	}
	
	@Override
	public FreeBoard_Dto detailBoard(String seq) {
		return sqlSession.selectOne(NS+"detailBoard", seq);
	}

	@Override
	public boolean replyUp(FreeBoard_Dto dto) {
		int cntU = sqlSession.update(NS+"replyUp", dto);
		return cntU>0?true:false;
	}

	@Override
	public boolean replyIn(FreeBoard_Dto dto) {
		int cntI = sqlSession.insert(NS+"replyIn", dto);
		return cntI>0?true:false;
	}

	@Override
	public void readcount(String seq) {
		sqlSession.update(NS+"readcount", seq);
	}


}
