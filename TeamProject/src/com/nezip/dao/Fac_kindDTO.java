package com.nezip.dao;

// 시설종류 테이블
public class Fac_kindDTO {

	private int si_No;			// 시설종류번호
	private String si_Kind;		// 종류명
	private String si_Content;	// 종류설명
	
	public int getSi_No() {
		return si_No;
	}
	public void setSi_No(int si_No) {
		this.si_No = si_No;
	}
	public String getSi_Kind() {
		return si_Kind;
	}
	public void setSi_Kind(String si_Kind) {
		this.si_Kind = si_Kind;
	}
	public String getSi_Content() {
		return si_Content;
	}
	public void setSi_Content(String si_Content) {
		this.si_Content = si_Content;
	}

}
