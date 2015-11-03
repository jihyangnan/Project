package com.reserve.dao;

import java.util.Date;

public class ReviewDTO {
	private int re_no;
	private String re_id;	
	private int re_hno;
	private String re_content;
	private Date re_date;
	public ReviewDTO(){
		
	}
	public ReviewDTO(int re_no,String re_id,int re_hno,String re_content){
		super();
		this.re_no=re_no;
		this.re_id=re_id;
		this.re_hno=re_hno;
		this.re_content=re_content;
	}
	public String getRe_id() {
		return re_id;
	}
	public void setRe_id(String re_id) {
		this.re_id = re_id;
	}
	public int getRe_no() {
		return re_no;
	}
	public void setRe_no(int re_no) {
		this.re_no = re_no;
	}
	public int getRe_hno() {
		return re_hno;
	}
	public void setRe_hno(int re_hno) {
		this.re_hno = re_hno;
	}
	public String getRe_content() {
		return re_content;
	}
	public void setRe_content(String re_content) {
		this.re_content = re_content;
	}
	public Date getRe_date() {
		return re_date;
	}
	public void setRe_date(Date re_date) {
		this.re_date = re_date;
	}
	
}
