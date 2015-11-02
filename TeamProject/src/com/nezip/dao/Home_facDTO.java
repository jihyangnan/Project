package com.nezip.dao;

// 숙소시설 테이블
public class Home_facDTO {

	private int hs_No;			// 시설번호
	private int hs_Kind;		// 시설종류
	private String hs_Name;		// 시설이름
	private String hs_Content;	// 시설설명
	
	public int getHs_No() {
		return hs_No;
	}
	public void setHs_No(int hs_No) {
		this.hs_No = hs_No;
	}
	public int getHs_Kind() {
		return hs_Kind;
	}
	public void setHs_Kind(int hs_Kind) {
		this.hs_Kind = hs_Kind;
	}
	public String getHs_Name() {
		return hs_Name;
	}
	public void setHs_Name(String hs_Name) {
		this.hs_Name = hs_Name;
	}
	public String getHs_Content() {
		return hs_Content;
	}
	public void setHs_Content(String hs_Content) {
		this.hs_Content = hs_Content;
	}
	
}
