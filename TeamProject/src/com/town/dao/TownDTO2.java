package com.town.dao;

import java.util.Date;

public class TownDTO2 {

	private int tw_No;
	private String tw_Name;
	private Date tw_Date;
	private int tw_Hit;
	private String tw_Addr;
	private String tw_Cont;
	private String photolist;
	
	public int getTw_No() {
		return tw_No;
	}
	public void setTw_No(int tw_No) {
		this.tw_No = tw_No;
	}
	public String getTw_Name() {
		return tw_Name;
	}
	public void setTw_Name(String tw_Name) {
		this.tw_Name = tw_Name;
	}
	public Date getTw_Date() {
		return tw_Date;
	}
	public void setTw_Date(Date tw_Date) {
		this.tw_Date = tw_Date;
	}
	public int getTw_Hit() {
		return tw_Hit;
	}
	public void setTw_Hit(int tw_Hit) {
		this.tw_Hit = tw_Hit;
	}
	public String getTw_Addr() {
		return tw_Addr;
	}
	public void setTw_Addr(String tw_Addr) {
		this.tw_Addr = tw_Addr;
	}
	public String getTw_Cont() {
		return tw_Cont;
	}
	public void setTw_Cont(String tw_Cont) {
		this.tw_Cont = tw_Cont;
	}
	public String getPhotolist() {
		return photolist;
	}
	public void setPhotolist(String photolist) {
		this.photolist = photolist;
	}
	
}
