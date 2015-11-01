package com.board.dao;

import java.sql.Date;
import java.util.*;
/*-- 답글 테이블
CREATE TABLE Re_board(
  rw_No NUMBER PRIMARY KEY NOT NULL, --답글번호 (pk)
  rw_Order NUMBER , --순서번호
  rw_Content VARCHAR2(200) NOT NULL, --내용
  rw_Id VARCHAR2(20), -- 작성자 (fk)
  rw_Date DATE NOT NULL, --등록일
  rw_Delete CHAR(2), --삭제여부
  rw_bNo NUMBER REFERENCES p_Board(b_No) --그룹번호(fk)
);*/
public class ReBoardDTO {
	private int rw_no;
	private int rw_order;
	private String rw_content;
	private String rw_id;
	private Date rw_date;
	private String rw_Delete;
	private int rw_bno;
	private int b_no;
	private String dbday;
	
	public String getDbday() {
		return dbday;
	}
	public void setDbday(String dbday) {
		this.dbday = dbday;
	}
	public int getRw_bno() {
		return rw_bno;
	}
	public void setRw_bno(int rw_bno) {
		this.rw_bno = rw_bno;
	}
	public int getRw_no() {
		return rw_no;
	}
	public void setRw_no(int rw_no) {
		this.rw_no = rw_no;
	}
	public int getRw_order() {
		return rw_order;
	}
	public void setRw_order(int rw_order) {
		this.rw_order = rw_order;
	}
	public String getRw_content() {
		return rw_content;
	}
	public void setRw_content(String rw_content) {
		this.rw_content = rw_content;
	}
	public String getRw_id() {
		return rw_id;
	}
	public void setRw_id(String rw_id) {
		this.rw_id = rw_id;
	}
	public Date getRw_date() {
		return rw_date;
	}
	public void setRw_date(Date rw_date) {
		this.rw_date = rw_date;
	}
	public String getRw_Delete() {
		return rw_Delete;
	}
	public void setRw_Delete(String rw_Delete) {
		this.rw_Delete = rw_Delete;
	}
	public int getB_no() {
		return b_no;
	}
	public void setB_no(int b_no) {
		this.b_no = b_no;
	}
	
}
