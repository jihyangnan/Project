package com.town.dao;

public class TownDetailImageDTO {

	private String imageName;		// �̹�����
	private String originalURL;		// ���� �̹���
	private String serialNum;		// �̹��� �Ϸù�ȣ
	private String smallImageURL;	// ����� �̹���
	
	public String getImageName() {
		return imageName;
	}
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
	public String getOriginalURL() {
		return originalURL;
	}
	public void setOriginalURL(String originalURL) {
		this.originalURL = originalURL;
	}
	public String getSerialNum() {
		return serialNum;
	}
	public void setSerialNum(String serialNum) {
		this.serialNum = serialNum;
	}
	public String getSmallImageURL() {
		return smallImageURL;
	}
	public void setSmallImageURL(String smallImageURL) {
		this.smallImageURL = smallImageURL;
	}

}
