<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${not empty course.infoCenter }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">문의 및 안내</span>
		<span class="col-sm-9">${course.infoCenter}</span>
	</li>
</c:if>

<c:if test="${not empty course.distance }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">총 거리</span>
		<span class="col-sm-9">${course.distance}</span>
	</li>
</c:if>

<c:if test="${not empty course.takeTime }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">총 소요시간</span>
		<span class="col-sm-9">${course.takeTime}</span>
	</li>
</c:if>

<c:if test="${not empty course.schedule }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">일정</span>
		<span class="col-sm-9">${course.schedule}</span>
	</li>
</c:if>

<c:if test="${not empty course.theme }">
	<li class="row" style="margin-bottom: 10px"><span class="col-sm-3" style="font-weight:700;">테마</span>
		<span class="col-sm-9">${course.theme}</span>
	</li>
</c:if>

