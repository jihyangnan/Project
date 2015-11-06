package com.reserve.dao;

import java.util.Date;

public class ReviewDTO {
	private int re_No;
	private String re_Id;	
	private int re_hNo;
	private String re_Content;
	private Date re_date;
	
	
	public int getRe_No() {
		return re_No;
	}
	public void setRe_No(int re_No) {
		this.re_No = re_No;
	}
	public String getRe_Id() {
		return re_Id;
	}
	public void setRe_Id(String re_Id) {
		this.re_Id = re_Id;
	}
	public int getRe_hNo() {
		return re_hNo;
	}
	public void setRe_hNo(int re_hNo) {
		this.re_hNo = re_hNo;
	}
	public String getRe_Content() {
		return re_Content;
	}
	public void setRe_Content(String re_Content) {
		this.re_Content = re_Content;
	}
	public Date getRe_date() {
		return re_date;
	}
	public void setRe_date(Date re_date) {
		this.re_date = re_date;
	}
	
}
