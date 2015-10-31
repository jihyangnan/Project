package com.town.dao;

public class TownDetailRepeatInfoDTO {

	private String contentId;		// 컨텐츠id
	private String contentTypeId;	// 컨텐츠타입 id
	
	// 여행 코스가 아닌경우
	private String fldgubun;		// 일련번호
	private String infoName;		// 제목
	private String infoText;		// 내용
	private String serialNum;		// 반복 일련번호
	
	// contentTypeId=25 여행코스 일 경우
	private String subContentId;		// 하위 콘텐트id
	private String subDetailalt;		// 코스이미지 설명
	private String subDetailimg;		// 코스이미지
	private String subDetailOverview;	// 코스개요
	private String subName;				// 코스명
	private String subNum;				// 반복 일련번호
	
	
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
