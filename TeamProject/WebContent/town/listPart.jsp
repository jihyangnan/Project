<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<ul style="border-top: 2px solid; border-color: gray; padding-top: 50px;">
	<c:forEach var="town" items="${list}">

	<li class="row"
		style="padding-left: 10px; padding-right: 10px; margin-bottom: 10px;">
		<div class="col-sm-4">
			<c:if test="${empty town.image }">
				<img src="images/noImage.gif" style="width: 100%"
					class="img-responsive">
			</c:if>
			<c:if test="${not empty town.image }">
				<img src="${town.image}" class="img-responsive"
					style="max-height: 236px" />
			</c:if>
		</div>
		<div class="col-sm-8">
			<h3 style="margin-top: 25px; margin-bottom: 10px;">${town.title}</h3>
			<p style="margin-top: 8px;">${town.addr1} ${town.addr2}</p>
			<div class="row" style="margin-top: 8px;">
				<div class="col-sm-5">
					<i class="fa fa-star"></i>&nbsp;조회수: ${town.readCount}
				</div>
				<div class="col-sm-5">
					<i class="fa fa-pencil"></i>&nbsp;&nbsp;최종수정일: ${town.modDay}
				</div>
			</div>
			<div class="row" style="margin-top: 8px;">
				<div class="col-sm-5">
					<c:if test="${not empty town.tel}">
						<i class="fa fa-phone"></i>&nbsp;전화번호: ${town.tel}
				</c:if>
				</div>
				<div class="col-sm-5">
					<input type="button" value="상세보기" class="btn btn-success btn-sm"
						style="background-color: #87d54d; border-color: #87d54d"
						onclick="location.href='town_detail.do?contentId=${town.contentId}&contentTypeId=${town.contentTypeId}' ">
				</div>
			</div>
		</div>
	</li>

	</c:forEach>
</ul>
