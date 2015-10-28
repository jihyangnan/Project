<%@page import="com.nizipnezip.town.dao.TownCodeDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.nizipnezip.town.dao.TownDAO"%>
<%@ page language="java" contentType="text/plan; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String areaCode = request.getParameter("areaCode");
	List<TownCodeDTO> areaCodeList = TownDAO.getAreaCodeList(areaCode);
	for(TownCodeDTO dto : areaCodeList){
		%>
		<option value="<%=dto.getCode()%>"><%=dto.getName()%></option>
		<%
	}
%>