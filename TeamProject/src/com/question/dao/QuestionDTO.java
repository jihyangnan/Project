package com.question.dao;
import java.util.*;
/*
--1:1문의
CREATE TABLE question(
  q_No NUMBER PRIMARY KEY NOT NULL, --문의번호(pk)
  q_Title VARCHAR2(30) NOT NULL, -- 제목
  q_Content VARCHAR2(200) NOT NULL, --내용
  q_Date DATE NOT NULL, --등록일
  q_Phone VARCHAR2(30), --휴대전화
  q_Email VARCHAR2(30) NOT NULL, --이메일
  q_Id VARCHAR2(20) NOT NULL, -- 작성자(fk)
  q_qtNo NUMBER REFERENCES question_type(qt_No) -- 문의유형 번호(fk)
);
 */
public class QuestionDTO {
	private int q_no;
	private String q_title;
	private String q_content;
	private Date q_date;
	private String q_phone;
	private String q_email;
	private int q_qtno;
	private String q_id;
	private int num;
	private String dbday;
	private String qt_name;
	
	
	public String getQt_name() {
		return qt_name;
	}
	public void setQt_name(String qt_name) {
		this.qt_name = qt_name;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getDbday() {
		return dbday;
	}
	public void setDbday(String dbday) {
		this.dbday = dbday;
	}
	public int getQ_no() {
		return q_no;
	}
	public void setQ_no(int q_no) {
		this.q_no = q_no;
	}
	public String getQ_title() {
		return q_title;
	}
	public void setQ_title(String q_title) {
		this.q_title = q_title;
	}
	public String getQ_content() {
		return q_content;
	}
	public void setQ_content(String q_content) {
		this.q_content = q_content;
	}
	public Date getQ_date() {
		return q_date;
	}
	public void setQ_date(Date q_date) {
		this.q_date = q_date;
	}
	public String getQ_phone() {
		return q_phone;
	}
	public void setQ_phone(String q_phone) {
		this.q_phone = q_phone;
	}
	public String getQ_email() {
		return q_email;
	}
	public void setQ_email(String q_email) {
		this.q_email = q_email;
	}
	public int getQ_qtno() {
		return q_qtno;
	}
	public void setQ_qtno(int q_qtno) {
		this.q_qtno = q_qtno;
	}
	public String getQ_id() {
		return q_id;
	}
	public void setQ_id(String q_id) {
		this.q_id = q_id;
	}

	
	
}
