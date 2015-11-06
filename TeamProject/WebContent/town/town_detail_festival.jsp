<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${not empty festival.sponsor1 }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">주최자 정보</span>
		<span class="col-sm-9">${festival.sponsor1}</span>
	</li>
</c:if>

<c:if test="${not empty festival.sponsor1Tel }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">주최자 연락처</span>
		<span class="col-sm-9">${festival.sponsor1Tel}</span>
	</li>
</c:if>

<c:if test="${not empty festival.sponsor2 }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">주관사 정보</span>
		<span class="col-sm-9">${festival.sponsor2}</span>
	</li>
</c:if>

<c:if test="${not empty festival.sponsor2Tel }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">주관사 연락처</span>
		<span class="col-sm-9">${festival.sponsor2Tel}</span>
	</li>
</c:if>

<c:if test="${not empty festival.eventStartDate }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">행사 시작일</span>
		<span class="col-sm-9">${festival.eventStartDate}</span>
	</li>
</c:if>

<c:if test="${not empty festival.eventEndDate }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">행사 종료일</span>
		<span class="col-sm-9">${festival.eventEndDate}</span>
	</li>
</c:if>

<c:if test="${not empty festival.eventHomepage }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">행사 홈페이지</span>
		<span class="col-sm-9">${festival.eventHomepage}</span>
	</li>
</c:if>

<c:if test="${not empty festival.program }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">행사 프로그램</span>
		<span class="col-sm-9">${festival.program}</span>
	</li>
</c:if>

<c:if test="${not empty festival.eventPlace }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">행사장소</span>
		<span class="col-sm-9">${festival.eventPlace}</span>
	</li>
</c:if>

<c:if test="${not empty festival.playtime }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">공연시간</span>
		<span class="col-sm-9">${festival.playtime}</span>
	</li>
</c:if>

<c:if test="${not empty festival.ageLimit}">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">관람 가능연령</span>
		<span class="col-sm-9">${festival.ageLimit}</span>
	</li>
</c:if>
<c:if test="${not empty festival.spendTime }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">관람 소요시간</span>
		<span class="col-sm-9">${festival.spendTime}</span>
	</li>
</c:if>

<c:if test="${not empty festival.subevent }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">부대행사</span>
		<span class="col-sm-9">${festival.subevent}</span>
	</li>
</c:if>

<c:if test="${not empty festival.useTime}">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">이용요금</span>
		<span class="col-sm-9">${festival.useTime}</span>
	</li>
</c:if>
<c:if test="${not empty festival.bookingPlace}">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">예매처</span>
		<span class="col-sm-9">${festival.bookingPlace}</span>
	</li>
</c:if>
<c:if test="${not empty festival.discountInfo}">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">할인정보</span>
		<span class="col-sm-9">${festival.discountInfo}</span>
	</li>
</c:if>
<c:if test="${not empty festival.placeInfo}">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">행사장 위치안내</span>
		<span class="col-sm-9">${festival.placeInfo}</span>
	</li>
</c:if>

