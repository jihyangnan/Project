package com.nezip.dao;

import java.util.*;

/*(
h_No NUMBER, -- ����ȣ
h_Type NUMBER, --��������ȣ
h_rType NUMBER, --����������ȣ
h_nPerson NUMBER NOT NULL, --�����ο�
h_nRoom NUMBER NOT NULL, --ħ�Ǽ�
h_nBed NUMBER NOT NULL, --ħ���
h_nBath NUMBER NOT NULL, --��Ǽ�
h_nHome VARCHAR2(40) NOT NULL, --�����̸�
h_hContent VARCHAR2(100) NOT NULL, --���Ҽ��λ���
h_Addr1 VARCHAR2(100) NOT NULL, --�ּ�
h_Addr2 VARCHAR2(100) NOT NULL, --���ּ�
h_Phone VARCHAR2(20) NOT NULL, --��󿬶�ó
h_Money NUMBER NOT NULL, --���
h_Startday DATE, -- ���������
h_Endday DATE, --���ึ����
h_Upday DATE DEFAULT SYSDATE, --�����
h_Loc VARCHAR2(30) NOT NULL, --���浵
h_Id VARCHAR2(20), --�����
h_Close CHAR(1), --����ϷῩ��
h_Rule VARCHAR2(2000) --�����̿��Ģ
CONSTRAINT zipreg_no_pk PRIMARY KEY(h_no)
);
*/
public class ZipRegDTO {
	private int h_No;
	private int h_Type;
	private int h_rType;
	private int h_nPerson;
	private int h_nRoom;
	private int h_nBed;
	private int h_nBath;
	private String h_nHome;
	private String h_hContent;
	private String h_Addr1;
	private String h_Addr2;
	private String h_Phone;
	private int h_Money;
	private String h_Startday;
	private String h_Endday;
	private Date Upday;
	private String h_Loc;
	private String h_Id;
	private String h_Close;
	private String h_Rule;
	private String postcode;	// �����ȣ (db���� ���� ����)
	private String image; 		// ��ϵ� ù��° �̹���
	private int replyCount;		// �ı� ����
	private List<Fac_regDTO> facList;	// ��ϵ� �ü���

	public int getH_No() {
		return h_No;
	}

	public void setH_No(int h_No) {
		this.h_No = h_No;
	}

	public int getH_Type() {
		return h_Type;
	}

	public void setH_Type(int h_Type) {
		this.h_Type = h_Type;
	}

	public int getH_rType() {
		return h_rType;
	}

	public void setH_rType(int h_rType) {
		this.h_rType = h_rType;
	}

	public int getH_nPerson() {
		return h_nPerson;
	}

	public void setH_nPerson(int h_nPerson) {
		this.h_nPerson = h_nPerson;
	}

	public int getH_nRoom() {
		return h_nRoom;
	}

	public void setH_nRoom(int h_nRoom) {
		this.h_nRoom = h_nRoom;
	}

	public int getH_nBed() {
		return h_nBed;
	}

	public void setH_nBed(int h_nBed) {
		this.h_nBed = h_nBed;
	}

	

	public String getH_nHome() {
		return h_nHome;
	}

	public void setH_nHome(String h_nHome) {
		this.h_nHome = h_nHome;
	}

	public String getH_hContent() {
		return h_hContent;
	}

	public void setH_hContent(String h_hContent) {
		this.h_hContent = h_hContent;
	}

	public String getH_Addr1() {
		return h_Addr1;
	}

	public void setH_Addr1(String h_Addr1) {
		this.h_Addr1 = h_Addr1;
	}

	public String getH_Addr2() {
		return h_Addr2;
	}

	public void setH_Addr2(String h_Addr2) {
		this.h_Addr2 = h_Addr2;
	}

	public String getH_Phone() {
		return h_Phone;
	}

	public void setH_Phone(String h_Phone) {
		this.h_Phone = h_Phone;
	}

	public int getH_Money() {
		return h_Money;
	}

	public void setH_Money(int h_Money) {
		this.h_Money = h_Money;
	}

	public String getH_Startday() {
		return h_Startday;
	}

	public void setH_Startday(String h_Startday) {
		this.h_Startday = h_Startday;
	}

	public String getH_Endday() {
		return h_Endday;
	}

	public void setH_Endday(String h_Endday) {
		this.h_Endday = h_Endday;
	}

	public Date getUpday() {
		return Upday;
	}

	public void setUpday(Date upday) {
		Upday = upday;
	}

	public String getH_Loc() {
		return h_Loc;
	}

	public void setH_Loc(String h_Loc) {
		this.h_Loc = h_Loc;
	}

	public String getH_Id() {
		return h_Id;
	}

	public void setH_Id(String h_Id) {
		this.h_Id = h_Id;
	}

	public String getH_Close() {
		return h_Close;
	}

	public void setH_Close(String h_Close) {
		this.h_Close = h_Close;

	}

	public String getH_Rule() {
		return h_Rule;
	}

	public void setH_Rule(String h_Rule) {
		this.h_Rule = h_Rule;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getReplyCount() {
		return replyCount;
	}

	public void setReplyCount(int replyCount) {
		this.replyCount = replyCount;
	}

	public int getH_nBath() {
		return h_nBath;
	}

	public void setH_nBath(int h_nBath) {
		this.h_nBath = h_nBath;
	}
	public List<Fac_regDTO> getFacList() {
		return facList;
	}

	public void setFacList(List<Fac_regDTO> facList) {
		this.facList = facList;
	}
	
}
