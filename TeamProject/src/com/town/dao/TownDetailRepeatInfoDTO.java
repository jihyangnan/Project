package com.town.dao;

public class TownDetailRepeatInfoDTO {

	private String contentId;		// ������id
	private String contentTypeId;	// ������Ÿ�� id
	
	// ���� �ڽ��� �ƴѰ��
	private String fldgubun;		// �Ϸù�ȣ
	private String infoName;		// ����
	private String infoText;		// ����
	private String serialNum;		// �ݺ� �Ϸù�ȣ
	
	// contentTypeId=25 �����ڽ� �� ���
	private String subContentId;		// ���� ����Ʈid
	private String subDetailalt;		// �ڽ��̹��� ����
	private String subDetailimg;		// �ڽ��̹���
	private String subDetailOverview;	// �ڽ�����
	private String subName;				// �ڽ���
	private String subNum;				// �ݺ� �Ϸù�ȣ
	
	
	public String getContentId() {
		return contentId;
	}
	public void setContentId(String contentId) {
		this.contentId = contentId;
	}
	public String getContentTypeId() {
		return contentTypeId;
	}
	public void setContentTypeId(String contentTypeId) {
		this.contentTypeId = contentTypeId;
	}
	public String getFldgubun() {
		return fldgubun;
	}
	public void setFldgubun(String fldgubun) {
		this.fldgubun = fldgubun;
	}
	public String getInfoName() {
		return infoName;
	}
	public void setInfoName(String infoName) {
		this.infoName = infoName;
	}
	public String getInfoText() {
		return infoText;
	}
	public void setInfoText(String infoText) {
		this.infoText = infoText;
	}
	public String getSerialNum() {
		return serialNum;
	}
	public void setSerialNum(String serialNum) {
		this.serialNum = serialNum;
	}
	public String getSubContentId() {
		return subContentId;
	}
	public void setSubContentId(String subContentId) {
		this.subContentId = subContentId;
	}
	public String getSubDetailalt() {
		return subDetailalt;
	}
	public void setSubDetailalt(String subDetailalt) {
		this.subDetailalt = subDetailalt;
	}
	public String getSubDetailimg() {
		return subDetailimg;
	}
	public void setSubDetailimg(String subDetailimg) {
		this.subDetailimg = subDetailimg;
	}
	public String getSubDetailOverview() {
		return subDetailOverview;
	}
	public void setSubDetailOverview(String subDetailOverview) {
		this.subDetailOverview = subDetailOverview;
	}
	public String getSubName() {
		return subName;
	}
	public void setSubName(String subName) {
		this.subName = subName;
	}
	public String getSubNum() {
		return subNum;
	}
	public void setSubNum(String subNum) {
		this.subNum = subNum;
	}
	
}
