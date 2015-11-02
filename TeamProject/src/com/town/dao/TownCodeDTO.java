package com.town.dao;

public class TownCodeDTO {

	private String code;	// 지역코드 또는 시군구 코드
	private String name;	// 지역명 또는 시군구 명
	private String mum;		// 일련번호
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMum() {
		return mum;
	}
	public void setMum(String mum) {
		this.mum = mum;
	}
}
