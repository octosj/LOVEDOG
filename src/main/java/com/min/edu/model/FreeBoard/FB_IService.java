package com.min.edu.model.FreeBoard;

import java.util.List;
import java.util.Map;

import com.min.edu.dto.FreeBoard_Dto;

public interface FB_IService {

		// 글 작성
		public boolean insertBoard(FreeBoard_Dto dto);
		
		// 글 수정
		public boolean modifyBoard(FreeBoard_Dto dto);
		
		// 글 삭제
		public boolean delBoard(String seq);
		
		// 다중 삭제
		public boolean delflagBoard(Map<String, String[]> map);
		
		// 글 검색 (제목)
		public List<FreeBoard_Dto> searchTitle(String title);
		
		// 글 검색 (작성자)
		public List<FreeBoard_Dto> searchId(String id);
		
		// 전체 글 보기
		public List<FreeBoard_Dto> allBoard(String selEtc);
		
		// 상세 글 보기
		public FreeBoard_Dto detailBoard(String seq);
		
		// 답글
		public boolean replyBoard(FreeBoard_Dto dto);
		
		// 조회수 증가
		public void readcount(String seq);
	
}
