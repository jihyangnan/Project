package com.nezip.dao;

// 숙소유형 테이블
public class Room_categoryDTO {

	private int hst_No;			// 숙소유형 번호
	private String hst_Name;	// 숙소유형명
	private String hst_Content;	// 숙소유형설명
	
	public int getHst_No() {
		return hst_No;
	}
	public void setHst_No(int hst_No) {
		this.hst_No = hst_No;
	}
	public String getHst_Name() {
		return hst_Name;
	}
	public void setHst_Name(String hst_Name) {
		this.hst_Name = hst_Name;
	}
	public String getHst_Content() {
		return hst_Content;
	}
	public void setHst_Content(String hst_Content) {
		this.hst_Content = hst_Content;
	}
}
