<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<div class="text-center">
	<ul class="pagination">
	    <li>
	      <a href="#" aria-label="Previous">
	        <span aria-hidden="true">&laquo;</span>
	      </a>
	    </li>
	    <c:forEach var="i" begin="${pageStartNum}" end="${(totalPage > pageEndNum) ? pageEndNum : totalPage}">
	    	<c:if test="${i == requestScope.pageNo }">
	    		<li class="active"><a href="#">${i}</a></li>
	    	</c:if>
	    	<c:if test="${i != requestScope.pageNo }">
	    		<li><a href="#">${i}</a></li>
	    	</c:if>
	    </c:forEach>
	    <li>
	      <a href="#" aria-label="Next">
	        <span aria-hidden="true">&raquo;</span>
	      </a>
	    </li>
	 </ul>
</div>