package com.nizipnezip.town.dao;

public class TownDetailCommonDTO {

	public String title;		// 컨텐트 제목
	public String addr1;		// 기본 주소
	public String addr2;		// 상세 주소
	public String image;		// 대표 이미지
	public String contentId;	// 컨텐트 ID
	public String tel;			// 전화번호
	public String telName;
	public String modDay;		// 최근수정일
	public String zipcode;		// 우편번호
	public String mapX;
	public String mapY;
	public String mlevel;
	public String overview;
	public String homepage;
	
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
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getTelName() {
		return telName;
	}
	public void setTelName(String telName) {
		this.telName = telName;
	}
	public String getModDay() {
		return modDay;
	}
	public void setModDay(String modDay) {
		this.modDay = modDay;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getMapX() {
		return mapX;
	}
	public void setMapX(String mapX) {
		this.mapX = mapX;
	}
	public String getMapY() {
		return mapY;
	}
	public void setMapY(String mapY) {
		this.mapY = mapY;
	}
	public String getMlevel() {
		return mlevel;
	}
	public void setMlevel(String mlevel) {
		this.mlevel = mlevel;
	}
	public String getOverview() {
		return overview;
	}
	public void setOverview(String overview) {
		this.overview = overview;
	}
	public String getHomepage() {
		return homepage;
	}
	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}
	
}
