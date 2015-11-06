<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${count==0 }">
  NOID
</c:if>
<c:if test="${count!=0 }">
  ID
</c:if>