package com.nezip.dao;

// 집유형 테이블
public class Home_categoryDTO {

	private int ht_No;			// 집유형번호
	private String ht_Name;		// 집유형명
	private String ht_Content;	// 집유형설명
	
	public int getHt_No() {
		return ht_No;
	}
	public void setHt_No(int ht_No) {
		this.ht_No = ht_No;
	}
	public String getHt_Name() {
		return ht_Name;
	}
	public void setHt_Name(String ht_Name) {
		this.ht_Name = ht_Name;
	}
	public String getHt_Content() {
		return ht_Content;
	}
	public void setHt_Content(String ht_Content) {
		this.ht_Content = ht_Content;
	}
	
}
