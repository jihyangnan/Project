package com.nezip.dao;

// 집사진 테이블
public class Home_photoDTO {

	private int p_No;		// 집사진번호
	private int P_hno;		// 숙소번호
	private String p_File;	// 사진파일
	private String p_Name;	// 사진이름
	public int getP_No() {
		return p_No;
	}
	public void setP_No(int p_No) {
		this.p_No = p_No;
	}
	public int getP_hno() {
		return P_hno;
	}
	public void setP_hno(int p_hno) {
		P_hno = p_hno;
	}
	public String getP_File() {
		return p_File;
	}
	public void setP_File(String p_File) {
		this.p_File = p_File;
	}
	public String getP_Name() {
		return p_Name;
	}
	public void setP_Name(String p_Name) {
		this.p_Name = p_Name;
	}
	
	
}
