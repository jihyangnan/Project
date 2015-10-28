<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${not empty spot.infoCenter }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3">문의 및 안내:</span>
		<span class="col-sm-9">${spot.infoCenter}</span>
	</li>
</c:if>

<c:if test="${not empty spot.openDate }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3">개장일:</span>
		<span class="col-sm-9">${spot.openDate}</span>
	</li>
</c:if>

<c:if test="${not empty spot.restDate }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3">쉬는날:</span>
		<span class="col-sm-9">${spot.restDate}</span>
	</li>
</c:if>

<c:if test="${not empty spot.useSeason }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3">이용시기:</span>
		<span class="col-sm-9">${spot.useSeason}</span>
	</li>
</c:if>

<c:if test="${not empty spot.useTime }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3">이용시간:</span>
		<span class="col-sm-9">${spot.useTime}</span>
	</li>
</c:if>

<c:if test="${not empty spot.expAgeRange }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3">체험가능 연령:</span>
		<span class="col-sm-9">${spot.expAgeRange}</span>
	</li>
</c:if>

<c:if test="${not empty spot.expGuide }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3">체험안내:</span>
		<span class="col-sm-9">${spot.expGuide}</span>
	</li>
</c:if>

<c:if test="${not empty spot.accoumCount }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3">수용인원:</span>
		<span class="col-sm-9">${spot.accoumCount}</span>
	</li>
</c:if>

<c:if test="${not empty spot.chkBabyCarriage }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3">유모차 대여 여부:</span>
		<span class="col-sm-9">${spot.chkBabyCarriage}</span>
	</li>
</c:if>

<c:if test="${not empty spot.chkCreditCard }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3">신용카드 가능 여부:</span>
		<span class="col-sm-9">${spot.chkCreditCard}</span>
	</li>
</c:if>

<c:if test="${not empty spot.chkPet }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3">애완동물 가능 여부:</span>
		<span class="col-sm-9">${spot.chkPet}</span>
	</li>
</c:if>

<c:if test="${not empty spot.heritage1 && spot.heritage1 ne '0'}">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3">세계 문화유산 유무:</span>
		<span class="col-sm-9">${spot.heritage1}</span>
	</li>
</c:if>
<c:if test="${not empty spot.heritage2 && spot.heritage2 ne '0'}">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3">세계 자연유산 유무:</span>
		<span class="col-sm-9">${spot.heritage2}</span>
	</li>
</c:if>
<c:if test="${not empty spot.heritage3 && spot.heritage3 ne '0'}">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3">세계 기록유산 유무:</span>
		<span class="col-sm-9">${spot.heritage3}</span>
	</li>
</c:if>