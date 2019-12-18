package com.min.edu.model.Reserv;

import java.util.List;
import java.util.Map;

import com.min.edu.dto.AllObj_Dto;
import com.min.edu.dto.Hospi_Dto;
import com.min.edu.dto.Obj_Dto;
import com.min.edu.dto.Reserv_Dto;

public interface Reserv_IDao {
	
	//병원 진료 과 조회
	public List<Hospi_Dto> selectHObj(String h_regi);
	
	//병원 진료 동물 조회
	public List<Hospi_Dto> selectHAni(String h_regi);
	
	//예약 검색
	public List<Hospi_Dto> serchReser(Map<String, String> map);
	
	//예약 추가
	public boolean insertReser(Reserv_Dto rDto);
	
	//예약삭제
	public boolean delReser(Map<String, String[]>  map);
	
	//예약수정
	public boolean modifyReser(Map<String, String> map);
	
	//전체 진료 과 조회
	public List<AllObj_Dto> selectAllObj();
	
	//전체 진료 상세 조회
	public List<AllObj_Dto> selectAllODetail(String main_obj);
	
	//병원 상세조회
	public Hospi_Dto selectOneHospital2(String h_regi);
	
	//병원 예약 조회
	public Reserv_Dto selectR_Date(String h_regi);

}
