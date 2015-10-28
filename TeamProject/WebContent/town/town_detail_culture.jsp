<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${not empty culture.infoCenter }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3">문의 및 안내:</span>
		<span class="col-sm-9">${culture.infoCenter}</span>
	</li>
</c:if>

<c:if test="${not empty culture.useTime }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3">이용시간:</span>
		<span class="col-sm-9">${culture.useTime}</span>
	</li>
</c:if>

<c:if test="${not empty culture.useFee }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3">이용요금:</span>
		<span class="col-sm-9">${culture.useFee}</span>
	</li>
</c:if>

<c:if test="${not empty culture.scale }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3">규모:</span>
		<span class="col-sm-9">${culture.scale}</span>
	</li>
</c:if>

<c:if test="${not empty culture.useTime }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3">관람 소요시간:</span>
		<span class="col-sm-9">${culture.useTime}</span>
	</li>
</c:if>

<c:if test="${not empty culture.spendTime }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3">주차시설:</span>
		<span class="col-sm-9">${culture.spendTime}</span>
	</li>
</c:if>

<c:if test="${not empty culture.parkingFee }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3">주차요금:</span>
		<span class="col-sm-9">${culture.parkingFee}</span>
	</li>
</c:if>

<c:if test="${not empty culture.accoumCount }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3">수용인원:</span>
		<span class="col-sm-9">${culture.accoumCount}</span>
	</li>
</c:if>

<c:if test="${not empty culture.discountInfo }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3">할인정보:</span>
		<span class="col-sm-9">${culture.discountInfo}</span>
	</li>
</c:if>

<c:if test="${not empty culture.restDate}">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3">쉬는날:</span>
		<span class="col-sm-9">${culture.restDate}</span>
	</li>
</c:if>
<c:if test="${not empty culture.chkCreditCard }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3">신용카드 가능 여부:</span>
		<span class="col-sm-9">${culture.chkCreditCard}</span>
	</li>
</c:if>

<c:if test="${not empty culture.chkPet }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3">애완동물 가능 여부:</span>
		<span class="col-sm-9">${culture.chkPet}</span>
	</li>
</c:if>

<c:if test="${not empty culture.chkBabyCarriage}">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3">유모차 대여 여부:</span>
		<span class="col-sm-9">${culture.chkBabyCarriage}</span>
	</li>
</c:if>
