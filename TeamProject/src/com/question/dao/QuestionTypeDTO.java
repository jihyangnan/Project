package com.question.dao;
import java.util.*;
/*
--문의 유형
CREATE TABLE question_type(
  qt_No NUMBER PRIMARY KEY NOT NULL, -- 문의 유형 종류(pk)
  qt_Name VARCHAR2(30) NOT NULL --문의 유형 이름
);
 */
public class QuestionTypeDTO {
	private int qt_no;
	private String qt_name;
	public int getQt_no() {
		return qt_no;
	}
	public void setQt_no(int qt_no) {
		this.qt_no = qt_no;
	}
	public String getQt_name() {
		return qt_name;
	}
	public void setQt_name(String qt_name) {
		this.qt_name = qt_name;
	}
	
	
}
