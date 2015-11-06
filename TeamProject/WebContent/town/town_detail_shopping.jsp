<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${not empty shopping.infoCenter }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight: 700;">문의 및 안내</span>
		<span class="col-sm-9">${shopping.infoCenter}</span>
	</li>
</c:if>

<c:if test="${not empty shopping.scale }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight: 700;">규모</span>
		<span class="col-sm-9">${shopping.scale}</span>
	</li>
</c:if>

<c:if test="${not empty shopping.saleItem }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight: 700;">판매 품목</span>
		<span class="col-sm-9">${shopping.saleItem}</span>
	</li>
</c:if>

<c:if test="${not empty shopping.saleItemcost }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight: 700;">판매 품목별 가격</span>
		<span class="col-sm-9">${shopping.saleItemcost}</span>
	</li>
</c:if>

<c:if test="${not empty shopping.fairday }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight: 700;">장서는날</span>
		<span class="col-sm-9">${shopping.fairday}</span>
	</li>
</c:if>
<c:if test="${not empty shopping.openDate }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight: 700;">개장일</span>
		<span class="col-sm-9">${shopping.openDate}</span>
	</li>
</c:if>
<c:if test="${not empty shopping.openTime }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight: 700;">영업시간</span>
		<span class="col-sm-9">${shopping.openTime}</span>
	</li>
</c:if>
<c:if test="${not empty shopping.restDate }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight: 700;">쉬는날</span>
		<span class="col-sm-9">${shopping.restDate}</span>
	</li>
</c:if>
<c:if test="${not empty shopping.shopguide }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight: 700;">매장안내</span>
		<span class="col-sm-9">${shopping.shopguide}</span>
	</li>
</c:if>
<c:if test="${not empty shopping.parking }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight: 700;">주차시설</span>
		<span class="col-sm-9">${shopping.parking}</span>
	</li>
</c:if>
<c:if test="${not empty shopping.restroom }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight: 700;">화장실</span>
		<span class="col-sm-9">${shopping.restroom}</span>
	</li>
</c:if>
<c:if test="${not empty shopping.chkBabyCarriage }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight: 700;">유모차 대여 여부</span>
		<span class="col-sm-9">${shopping.chkBabyCarriage}</span>
	</li>
</c:if>
<c:if test="${not empty shopping.chkCreditCard }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight: 700;">신용카드 대여 여부</span>
		<span class="col-sm-9">${shopping.chkCreditCard}</span>
	</li>
</c:if>
<c:if test="${not empty shopping.chkPet }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight: 700;">애완동물 가능 여부</span>
		<span class="col-sm-9">${shopping.chkPet}</span>
	</li>
</c:if>
<c:if test="${not empty shopping.cultureCenter }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight: 700;">문화센터 바로가기</span>
		<span class="col-sm-9">${shopping.cultureCenter}</span>
	</li>
</c:if>

