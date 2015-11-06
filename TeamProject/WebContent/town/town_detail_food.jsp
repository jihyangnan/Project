<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${not empty food.infoCenter }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">문의 및 안내</span>
		<span class="col-sm-9">${food.infoCenter}</span>
	</li>
</c:if>

<c:if test="${not empty food.scale }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">규모</span>
		<span class="col-sm-9">${food.scale}</span>
	</li>
</c:if>

<c:if test="${not empty food.seat }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">좌석수</span>
		<span class="col-sm-9">${food.seat}</span>
	</li>
</c:if>

<c:if test="${not empty food.parking }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">주차시설</span>
		<span class="col-sm-9">${food.parking}</span>
	</li>
</c:if>

<c:if test="${not empty food.openTime }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">영업시간</span>
		<span class="col-sm-9">${food.openTime}</span>
	</li>
</c:if>
<c:if test="${not empty food.restDate }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">쉬는날</span>
		<span class="col-sm-9">${food.restDate}</span>
	</li>
</c:if>
<c:if test="${not empty food.reservation }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">예약안내</span>
		<span class="col-sm-9">${food.reservation}</span>
	</li>
</c:if>
<c:if test="${not empty food.discountInfo }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">할인정보</span>
		<span class="col-sm-9">${food.discountInfo}</span>
	</li>
</c:if>
<c:if test="${not empty food.firstmenu }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">대표 메뉴</span>
		<span class="col-sm-9">${food.firstmenu}</span>
	</li>
</c:if>
<c:if test="${not empty food.treatmenu }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">취급 메뉴</span>
		<span class="col-sm-9">${food.treatmenu}</span>
	</li>
</c:if>
<c:if test="${not empty food.smoking }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">금연/흡연</span>
		<span class="col-sm-9">${food.smoking}</span>
	</li>
</c:if>
<c:if test="${not empty food.chkCreditCard }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">신용카드</span>
		<span class="col-sm-9">${food.chkCreditCard}</span>
	</li>
</c:if>
<c:if test="${not empty food.packing }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">포장</span>
		<span class="col-sm-9">${food.packing}</span>
	</li>
</c:if>
<c:if test="${not empty food.kidsfacility }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">어린이 놀이방</span>
		<span class="col-sm-9">${food.kidsfacility}</span>
	</li>
</c:if>
<c:if test="${not empty food.openDate }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">개업일</span>
		<span class="col-sm-9">${food.openDate}</span>
	</li>
</c:if>

