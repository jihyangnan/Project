package com.board.dao;
import java.util.*;
/*
--���Ӹ� ���̺�
CREATE TABLE b_Word(
  sa_No NUMBER PRIMARY KEY NOT NULL,--���Ӹ� ��ȣ (pk)
  sa_Name VARCHAR2(20) -- ���Ӹ� �̸�
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
