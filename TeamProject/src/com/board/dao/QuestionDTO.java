package com.board.dao;
import java.util.*;
/*
--1:1����
CREATE TABLE question(
  q_No NUMBER PRIMARY KEY NOT NULL, --���ǹ�ȣ(pk)
  q_Title VARCHAR2(30) NOT NULL, -- ����
  q_Content VARCHAR2(200) NOT NULL, --����
  q_Date DATE NOT NULL, --�����
  q_Phone VARCHAR2(30), --�޴���ȭ
  q_Email VARCHAR2(30) NOT NULL, --�̸���
  q_Id VARCHAR2(20) NOT NULL, -- �ۼ���(fk)
  q_qtNo NUMBER REFERENCES question_type(qt_No) -- �������� ��ȣ(fk)
);
 */
public class QuestionDTO {
	private int q_no;
	private String q_title;
	private String q_content;
	private Date q_date;
	private String q_phone;
	private String q_email;
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
	
}
