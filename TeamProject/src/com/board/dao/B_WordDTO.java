package com.board.dao;
import java.util.*;
/*
--말머리 테이블
CREATE TABLE b_Word(
  sa_No NUMBER PRIMARY KEY NOT NULL,--말머리 번호 (pk)
  sa_Name VARCHAR2(20) -- 말머리 이름
);
 */
public class B_WordDTO {
	private int sa_no;
	private String sa_name;
	public int getSa_no() {
		return sa_no;
	}
	public void setSa_no(int sa_no) {
		this.sa_no = sa_no;
	}
	public String getSa_name() {
		return sa_name;
	}
	public void setSa_name(String sa_name) {
		this.sa_name = sa_name;
	}
	
	
}
