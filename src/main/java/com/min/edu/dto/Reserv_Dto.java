package com.min.edu.dto;

import java.util.Date;

public class Reserv_Dto {
	
	int seq      ;
	String u_id     ;
	String h_regi   ;
	String r_status ;
	Date r_date   ;
	String r_content;

	Hospi_Dto hospi_Dto;
	User_Dto user_Dto;
	
	@Override
	public String toString() {
		return "Reserv_Dto [seq=" + seq + ", u_id=" + u_id + ", h_regi=" + h_regi + ", r_status=" + r_status
				+ ", r_date=" + r_date + ", r_content=" + r_content + "]";
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getH_regi() {
		return h_regi;
	}
	public void setH_regi(String h_regi) {
		this.h_regi = h_regi;
	}
	public String getR_status() {
		return r_status;
	}
	public void setR_status(String r_status) {
		this.r_status = r_status;
	}
	public Date getR_date() {
		return r_date;
	}
	public void setR_date(Date r_date) {
		this.r_date = r_date;
	}
	public String getR_content() {
		return r_content;
	}
	public void setR_content(String r_content) {
		this.r_content = r_content;
	}
	
	public Reserv_Dto() {
		// TODO Auto-generated constructor stub
	}
	public Reserv_Dto(int seq, String u_id, String h_regi, String r_status, Date r_date, String r_content) {
		super();
		this.seq = seq;
		this.u_id = u_id;
		this.h_regi = h_regi;
		this.r_status = r_status;
		this.r_date = r_date;
		this.r_content = r_content;
	}
	
}
