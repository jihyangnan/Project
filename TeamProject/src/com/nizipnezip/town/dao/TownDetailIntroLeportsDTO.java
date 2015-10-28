package com.nizipnezip.town.dao;

public class TownDetailIntroLeportsDTO {
	
	private String infoCenter;		// 문의 및 안내
	private String openPeriod;		// 개장기간
	private String restDate;		// 쉬는날
	private String scale;			// 규모
	private String expAgeRange;		// 체험가능 연령
	private String accoumCount;		// 수용인원
	private String useTime;			// 이용시간
	private String useFee;			// 입장료
	private String reservation;		// 예약안내
	private String parkingFee;		// 주차요금
	private String parking;			// 주차시설
	private String chkBabyCarriage;	// 유모차 대여 여부
	private String chkPet;			// 애완동물 가능 여부
	private String chkCreditCard;	// 신용카드 가능 여부
	
	public String getAccoumCount() {
		return accoumCount;
	}
	public void setAccoumCount(String accoumCount) {
		this.accoumCount = accoumCount;
	}
	public String getChkBabyCarriage() {
		return chkBabyCarriage;
	}
	public void setChkBabyCarriage(String chkBabyCarriage) {
		this.chkBabyCarriage = chkBabyCarriage;
	}
	public String getChkCreditCard() {
		return chkCreditCard;
	}
	public void setChkCreditCard(String chkCreditCard) {
		this.chkCreditCard = chkCreditCard;
	}
	public String getChkPet() {
		return chkPet;
	}
	public void setChkPet(String chkPet) {
		this.chkPet = chkPet;
	}
	public String getExpAgeRange() {
		return expAgeRange;
	}
	public void setExpAgeRange(String expAgeRange) {
		this.expAgeRange = expAgeRange;
	}
	public String getInfoCenter() {
		return infoCenter;
	}
	public void setInfoCenter(String infoCenter) {
		this.infoCenter = infoCenter;
	}
	public String getOpenPeriod() {
		return openPeriod;
	}
	public void setOpenPeriod(String openPeriod) {
		this.openPeriod = openPeriod;
	}
	public String getParkingFee() {
		return parkingFee;
	}
	public void setParkingFee(String parkingFee) {
		this.parkingFee = parkingFee;
	}
	public String getParking() {
		return parking;
	}
	public void setParking(String parking) {
		this.parking = parking;
	}
	public String getReservation() {
		return reservation;
	}
	public void setReservation(String reservation) {
		this.reservation = reservation;
	}
	public String getRestDate() {
		return restDate;
	}
	public void setRestDate(String restDate) {
		this.restDate = restDate;
	}
	public String getScale() {
		return scale;
	}
	public void setScale(String scale) {
		this.scale = scale;
	}
	public String getUseFee() {
		return useFee;
	}
	public void setUseFee(String useFee) {
		this.useFee = useFee;
	}
	public String getUseTime() {
		return useTime;
	}
	public void setUseTime(String useTime) {
		this.useTime = useTime;
	}
	
}
