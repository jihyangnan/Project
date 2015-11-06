<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${not empty leports.infoCenter }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">문의 및 안내</span>
		<span class="col-sm-9">${leports.infoCenter}</span>
	</li>
</c:if>

<c:if test="${not empty leports.openPeriod }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">개장기간</span>
		<span class="col-sm-9">${leports.openPeriod}</span>
	</li>
</c:if>

<c:if test="${not empty leports.restDate }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">쉬는날</span>
		<span class="col-sm-9">${leports.restDate}</span>
	</li>
</c:if>

<c:if test="${not empty leports.scale }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">규모</span>
		<span class="col-sm-9">${leports.scale}</span>
	</li>
</c:if>

<c:if test="${not empty leports.expAgeRange }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">체험가능 연령</span>
		<span class="col-sm-9">${leports.expAgeRange}</span>
	</li>
</c:if>
<c:if test="${not empty leports.accoumCount }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">수용인원</span>
		<span class="col-sm-9">${leports.accoumCount}</span>
	</li>
</c:if>
<c:if test="${not empty leports.useTime }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">이용시간</span>
		<span class="col-sm-9">${leports.useTime}</span>
	</li>
</c:if>
<c:if test="${not empty leports.useFee }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">입장료</span>
		<span class="col-sm-9">${leports.useFee}</span>
	</li>
</c:if>
<c:if test="${not empty leports.reservation }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">예약안내</span>
		<span class="col-sm-9">${leports.reservation}</span>
	</li>
</c:if>
<c:if test="${not empty leports.parkingFee }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">주차요금</span>
		<span class="col-sm-9">${leports.parkingFee}</span>
	</li>
</c:if>
<c:if test="${not empty leports.parking }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">주차시설</span>
		<span class="col-sm-9">${leports.parking}</span>
	</li>
</c:if>
<c:if test="${not empty leports.chkBabyCarriage }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">유모차 대여 여부</span>
		<span class="col-sm-9">${leports.chkBabyCarriage}</span>
	</li>
</c:if>
<c:if test="${not empty leports.chkPet }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">애완동물 대여 여부</span>
		<span class="col-sm-9">${leports.chkPet}</span>
	</li>
</c:if>
<c:if test="${not empty leports.chkCreditCard }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">신용카드 가능 여부</span>
		<span class="col-sm-9">${leports.chkCreditCard}</span>
	</li>
</c:if>

