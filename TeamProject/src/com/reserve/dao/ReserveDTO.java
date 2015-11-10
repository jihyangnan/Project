package com.reserve.dao;
import java.util.Date;

public class ReserveDTO {
	private int r_no;
	private int r_addr;
	private String r_member;
	private Date r_start;
	private Date r_end;
	private int r_person;
	
	public int getR_no() {
		return r_no;
	}
	public void setR_no(int r_no) {
		this.r_no = r_no;
	}
	public int getR_addr() {
		return r_addr;
	}
	public void setR_addr(int r_addr) {
		this.r_addr = r_addr;
	}
	public String getR_member() {
		return r_member;
	}
	public void setR_member(String r_member) {
		this.r_member = r_member;
	}
	public Date getR_start() {
		return r_start;
	}
	public void setR_start(Date r_start) {
		this.r_start = r_start;
	}
	public Date getR_end() {
		return r_end;
	}
	public void setR_end(Date r_end) {
		this.r_end = r_end;
	}
	public int getR_person() {
		return r_person;
	}
	public void setR_person(int r_person) {
		this.r_person = r_person;
	}
}
