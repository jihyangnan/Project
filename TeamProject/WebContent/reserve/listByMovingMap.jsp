<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach var="dto" items="${zipRegList}">
	<c:forTokens items="${dto.h_Loc }" delims="," var="loc" varStatus="status" >
		<c:if test="${status.first}">
			<c:set var="lat" value="${loc}"></c:set>
		</c:if>
		<c:if test="${status.last}">
			<c:set var="lng" value="${loc}"></c:set>
		</c:if>
	</c:forTokens>
	<div class="row list" data-price="${dto.h_Money }" data-lat="${lat}" data-lng="${lng}">
		<div class="col-sm-8">
			<a href="reserve_detail.do?no=${dto.h_No}&page=${curpage}">
				<img class="img-responsive img-rounded" src="upload/${dto.image}" />
			</a>
		</div>
		<div class="col-sm-4 desc">
			<ul>
				<li><a href="reserve_detail.do?no=${dto.h_No }&page=${curpage}"><span>${dto.h_nHome }</span></a></li>
				<li><span style="color: #3B9DD6; font-weight: bold;">${dto.h_Money }원</span></li>
							<c:if test="${dto.h_rType==1}">
							<li><span>집전체</span></li>
							</c:if>
							<c:if test="${dto.h_rType==2}">
							<li><span>개인실</span></li>
							</c:if>
							<c:if test="${dto.h_rType==3}">
							<li><span>다인실</span></li>
							</c:if>
				<li><span>${dto.h_Addr1 }</span></li>
				<li><span>후기 ${dto.replyCount}개</span></li>
			</ul>
		</div>
	</div>
</c:forEach>