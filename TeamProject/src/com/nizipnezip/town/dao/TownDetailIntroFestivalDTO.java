package com.nizipnezip.town.dao;

public class TownDetailIntroFestivalDTO {
	
	private String sponsor1;		// 주최자 정보
	private String sponsor1Tel;		// 주최자 연락처
	private String sponsor2;		// 주관사 정보
	private String sponsor2Tel;		// 주관사 연락처
	private String eventStartDate;	// 행사 시작일
	private String eventEndDate;	// 행사 종료일
	private String eventHomepage;	// 행사 홈페이지
	private String program;			// 행사 프로그램
	private String eventPlace;		// 행사 장소
	private String playtime;		// 공연시간
	private String ageLimit;		// 관람 가능연령
	private String spendTime;		// 관람 소요시간
	private String subevent;		// 부대행사
	private String useTime;			// 이용요금 (시간에서 요금으로 변경)
	private String bookingPlace;	// 예매처
	private String discountInfo;	// 할인정보
	private String placeInfo;		// 행사장 위치안내
	
	public String getAgeLimit() {
		return ageLimit;
	}
	public void setAgeLimit(String ageLimit) {
		this.ageLimit = ageLimit;
	}
	public String getBookingPlace() {
		return bookingPlace;
	}
	public void setBookingPlace(String bookingPlace) {
		this.bookingPlace = bookingPlace;
	}
	public String getDiscountInfo() {
		return discountInfo;
	}
	public void setDiscountInfo(String discountInfo) {
		this.discountInfo = discountInfo;
	}
	public String getEventEndDate() {
		return eventEndDate;
	}
	public void setEventEndDate(String eventEndDate) {
		this.eventEndDate = eventEndDate;
	}
	public String getEventHomepage() {
		return eventHomepage;
	}
	public void setEventHomepage(String eventHomepage) {
		this.eventHomepage = eventHomepage;
	}
	public String getEventPlace() {
		return eventPlace;
	}
	public void setEventPlace(String eventPlace) {
		this.eventPlace = eventPlace;
	}
	public String getEventStartDate() {
		return eventStartDate;
	}
	public void setEventStartDate(String eventStartDate) {
		this.eventStartDate = eventStartDate;
	}
	public String getPlaceInfo() {
		return placeInfo;
	}
	public void setPlaceInfo(String placeInfo) {
		this.placeInfo = placeInfo;
	}
	public String getPlaytime() {
		return playtime;
	}
	public void setPlaytime(String playtime) {
		this.playtime = playtime;
	}
	public String getProgram() {
		return program;
	}
	public void setProgram(String program) {
		this.program = program;
	}
	public String getSpendTime() {
		return spendTime;
	}
	public void setSpendTime(String spendTime) {
		this.spendTime = spendTime;
	}
	public String getSponsor1() {
		return sponsor1;
	}
	public void setSponsor1(String sponsor1) {
		this.sponsor1 = sponsor1;
	}
	public String getSponsor1Tel() {
		return sponsor1Tel;
	}
	public void setSponsor1Tel(String sponsor1Tel) {
		this.sponsor1Tel = sponsor1Tel;
	}
	public String getSponsor2() {
		return sponsor2;
	}
	public void setSponsor2(String sponsor2) {
		this.sponsor2 = sponsor2;
	}
	public String getSponsor2Tel() {
		return sponsor2Tel;
	}
	public void setSponsor2Tel(String sponsor2Tel) {
		this.sponsor2Tel = sponsor2Tel;
	}
	public String getSubevent() {
		return subevent;
	}
	public void setSubevent(String subevent) {
		this.subevent = subevent;
	}
	public String getUseTime() {
		return useTime;
	}
	public void setUseTime(String useTime) {
		this.useTime = useTime;
	}
	
}
