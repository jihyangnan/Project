package com.town.dao;

public class TownListDTO {

	public String title;		// ����Ʈ ����
	public String addr1;		// �⺻ �ּ�
	public String addr2;		// �� �ּ�
	public String image;		// ��ǥ �̹���
	public String contentId;	// ����Ʈ ID
	public String contentTypeId;// ����ƮŸ�� ID
	public String readCount;	// ��ȸ�� 
	public String tel;			// ��ȭ��ȣ
	public String modDay;		// �ֱټ�����
	
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
