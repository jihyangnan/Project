package com.town.dao;

public class TownDetailIntroCourseDTO {
	
	private String infoCenter;	// ���� �� �ȳ�
	private String distance;	// �ڽ� �ѰŸ�
	private String takeTime;	// �ڽ� �� �ҿ�ð�
	private String schedule;	// �ڽ� ����
	private String theme;		// �ڽ� �׸�
	
	public String getDistance() {
		return distance;
	}
	public void setDistance(String distance) {
		this.distance = distance;
	}
	public String getInfoCenter() {
		return infoCenter;
	}
	public void setInfoCenter(String infoCenter) {
		this.infoCenter = infoCenter;
	}
	public String getSchedule() {
		return schedule;
	}
	public void setSchedule(String schedule) {
		this.schedule = schedule;
	}
	public String getTakeTime() {
		return takeTime;
	}
	public void setTakeTime(String takeTime) {
		this.takeTime = takeTime;
	}
	public String getTheme() {
		return theme;
	}
	public void setTheme(String theme) {
		this.theme = theme;
	}
	
}
