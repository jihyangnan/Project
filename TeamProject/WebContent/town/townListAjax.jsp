<%@page import="com.nizipnezip.town.dao.TownDAO"%>
<%@page import="com.nizipnezip.town.dao.TownListDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.nizipnezip.town.dao.TownListSearchValues"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%
String areaCode = request.getParameter("areaCode");
String sigunguCode = request.getParameter("sigunguCode");
String currPage = request.getParameter("currPage");
String contentTypeId = request.getParameter("contentTypeId");
String cat1 = request.getParameter("cat1");
String cat2 = request.getParameter("cat2");
String cat3 = request.getParameter("cat3");

TownListSearchValues values = new TownListSearchValues();
if(areaCode != null && !(areaCode.equals("0"))){
	values.setAreaCode(areaCode);
}
if(sigunguCode != null){
	values.setSigunguCode(sigunguCode);
}
if(currPage != null){
	values.setCurrPage(currPage);
}
if(contentTypeId != null){
	values.setContentTypeId(contentTypeId);
}
if(cat1 != null){
	values.setCat1(cat1);
}
if(cat2 != null){
	values.setCat2(cat2);
}
if(cat3 != null){
	values.setCat3(cat3);
}
List<TownListDTO> list = TownDAO.getTownList(values);
request.setAttribute("list", list);

%>  
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
						onclick="location.href='index.jsp?page=town/town_detail.jsp&contentId=${town.contentId}&contentTypeId=${town.contentTypeId}' ">
				</div>
			</div>
		</div>
	</li>

</c:forEach>