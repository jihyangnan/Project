package com.town.dao;

public class TownListDTO {

	public String title;		// 컨텐트 제목
	public String addr1;		// 기본 주소
	public String addr2;		// 상세 주소
	public String image;		// 대표 이미지
	public String contentId;	// 컨텐트 ID
	public String contentTypeId;// 컨텐트타입 ID
	public String readCount;	// 조회수 
	public String tel;			// 전화번호
	public String modDay;		// 최근수정일
	
	public String getContentTypeId() {
		return contentTypeId;
	}
	public void setContentTypeId(String contentTypeId) {
		this.contentTypeId = contentTypeId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getContentId() {
		return contentId;
	}
	public void setContentId(String contentId) {
		this.contentId = contentId;
	}
	public String getReadCount() {
		return readCount;
	}
	public void setReadCount(String readCount) {
		this.readCount = readCount;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getModDay() {
		return modDay;
	}
	public void setModDay(String modDay) {
		this.modDay = modDay;
	}
	
}
