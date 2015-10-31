package com.town.dao;

public class TownDetailIntroCourseDTO {
	
	private String infoCenter;	// 문의 및 안내
	private String distance;	// 코스 총거리
	private String takeTime;	// 코스 총 소요시간
	private String schedule;	// 코스 일정
	private String theme;		// 코스 테마
	
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
