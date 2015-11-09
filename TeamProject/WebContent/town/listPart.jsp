<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<ul style="border-top: 2px solid; border-color: gray; padding-top: 50px;">
	<c:forEach var="town" items="${list}" varStatus="status">
	  <c:if test="${status.count % 2 == 1 }">
		<li style="margin-bottom: 20px;">
	  </c:if>
	  	<div class="col-sm-6">
	  	  <div>
			<div class="col-sm-6">
			  <a href="town_detail.do?contentId=${town.contentId}&contentTypeId=${town.contentTypeId}">
			  <c:if test="${empty town.image }">
				<img src="images/noImage.gif" style="width: 100%" class="img-responsive">
			  </c:if>
			  <c:if test="${not empty town.image }">
				<img src="${town.image}" class="img-responsive townListImg" style="border-radius:5px; border: 3px solid;"/>
			  </c:if>
			  </a>
		   </div>
		   <div class="col-sm-6">
			  <h3 style="font-size: 18px; font-weight: bold;">
				<a href="town_detail.do?contentId=${town.contentId}&contentTypeId=${town.contentTypeId}">${town.title}</a>
			  </h3>
			  <p style="margin-top: 8px; font-size: 13px;">${town.addr1} ${town.addr2}</p>
			  <p style="margin-top: 8px; font-size: 13px;">
				<i class="fa fa-star"></i>&nbsp;<b>조회수</b>&nbsp; ${town.readCount}
			  </p>
			  <p style="margin-top: 8px; font-size: 13px;">
				<i class="fa fa-pencil"></i>&nbsp;<b>최종수정일</b>&nbsp; ${town.modDay}
			  </p>
		   </div>
		  </div>
		</div>
	  <c:if test="${status.count % 2 == 0 }">
	  	<div class="clearfix"></div>
		</li>
	  </c:if>

	</c:forEach>
</ul>
