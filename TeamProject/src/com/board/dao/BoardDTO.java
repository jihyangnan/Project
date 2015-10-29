package com.board.dao;
import java.util.*;
/*
 -- 게시판 테이블
  CREATE TABLE p_board(
  b_no NUMBER PRIMARY KEY NOT NULL, --글번호(pk)
  b_Id VARCHAR2(20) NOT NULL, -- 작성자(fk)
  b_Title VARCHAR2(50) NOT NULL, -- 제목
  b_Content VARCHAR2(2000) NOT NULL, -- 내용
  b_Hit NUMBER NOT NULL, -- 조회수
  b_Renum NUMBER, -- 답변수
  b_Date DATE NOT NULL, --등록일
  b_Delete CHAR(2) NOT NULL, --삭제여부
  b_saNo NUMBER REFERENCES b_Word(sa_No) -- 말머리 번호 (fk)
);

 */
public class BoardDTO {
	private int b_no;
	private String b_id;
	private String b_title;
	private String b_content;
	private int b_hit;
	private int b_renum;
	private Date b_date;
	private String b_delete;
	private int b_sano;
	private String dbday;
	private String sa_img;
	
	public int getB_no() {
		return b_no;
	}
	public void setB_no(int b_no) {
		this.b_no = b_no;
	}
	public String getB_id() {
		return b_id;
	}
	public void setB_id(String b_id) {
		this.b_id = b_id;
	}
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public String getB_content() {
		return b_content;
	}
	public void setB_content(String b_content) {
		this.b_content = b_content;
	}
	public int getB_hit() {
		return b_hit;
	}
	public void setB_hit(int b_hit) {
		this.b_hit = b_hit;
	}
	public int getB_renum() {
		return b_renum;
	}
	public void setB_renum(int b_renum) {
		this.b_renum = b_renum;
	}
	public Date getB_date() {
		return b_date;
	}
	public void setB_date(Date b_date) {
		this.b_date = b_date;
	}
	public String getB_delete() {
		return b_delete;
	}
	public void setB_delete(String b_delete) {
		this.b_delete = b_delete;
	}
	public int getB_sano() {
		return b_sano;
	}
	public void setB_sano(int b_sano) {
		this.b_sano = b_sano;
	}
	public String getDbday() {
		return dbday;
	}
	public void setDbday(String dbday) {
		this.dbday = dbday;
	}
	public String getSa_img() {
		return sa_img;
	}
	public void setSa_img(String sa_img) {
		this.sa_img = sa_img;
	}
}
