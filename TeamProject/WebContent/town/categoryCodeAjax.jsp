<%@page import="com.nizipnezip.town.dao.TownCodeDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.nizipnezip.town.dao.TownDAO"%>
<%@ page language="java" contentType="text/plan; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contentTypeId = request.getParameter("contentTypeId");
	String cat1 = request.getParameter("cat1");
	String cat2 = request.getParameter("cat2");
	System.out.println("contentTypeId: " + contentTypeId + ", cat1: " + cat1 + ", cat2: " + cat2);
	List<TownCodeDTO> categoryCodeList = TownDAO.getCategoryCodeList(contentTypeId, cat1, cat2);
	
	for(TownCodeDTO dto : categoryCodeList){
		%>
		<option value="<%=dto.getCode()%>"><%=dto.getName()%></option>
		<%
	}
%>