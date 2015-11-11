<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:forEach var="rp" items="${list}" varStatus="status">
	<div id="review" class="row review">
		<div class="col-md-3">
			<c:if test="${status.first}">
				<span style="color: #82888a; font-weight: bold;">후기</span>
			</c:if>
		</div>
		<div class="col-md-1" style="font-weight: bold; padding-left: 5px; padding-right: 0px">
			<span>${rp.re_Id }</span>
		</div>
		<div class="col-md-8">
			<div class="row">
				<div class="col-md-10">
					<div>
						<div class="review-text" style="padding-left: 10px">${rp.re_Content }</div>
					</div>
				</div>
				<div class="col-md-2">
					<div style="font-size: .9em; font-weight: bold">
						<fmt:formatDate var="date" value="${rp.re_date}"
							pattern="yyyy-MM-dd" />
						${date }
					</div>
				</div>
			</div>
			<hr
				style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;" />
		</div>
	</div>
</c:forEach>