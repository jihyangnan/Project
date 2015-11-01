<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<div class="text-center">
	<ul class="pagination">
	    <li>
	      <c:if test="${pageStartNum <= 1}">
	      	<a href="#" onclick="alert('첫 블록입니다.'); return false;" aria-label="Previous">
	      </c:if>
	      <c:if test="${pageStartNum > 1}">
	      	<a href="town_list.do" onclick="movePage(${pageStartNum - 1}); return false;" aria-label="Previous">
	      </c:if>
	        <span aria-hidden="true">&laquo;</span>
	      </a>
	    </li>
	    <c:forEach var="i" begin="${pageStartNum}" end="${(totalPage > pageEndNum) ? pageEndNum : totalPage}">
	    	<c:if test="${i == requestScope.pageNo }">
	    		<li class="active"><a href="#" onclick="return false;">${i}</a></li>
	    	</c:if>
	    	<c:if test="${i != requestScope.pageNo }">
	    		<li><a href="town_list.do" onclick="movePage(${i}); return false;">${i}</a></li>
	    	</c:if>
	    </c:forEach>
	    <li>
	      <c:if test="${pageEndNum >= totalPage}">	
	      	<a href="#" onclick="alert('마지막 블록입니다.'); return false;" aria-label="Next">
	      </c:if>	
	      <c:if test="${pageEndNum < totalPage}">	
	      	<a href="town_list.do" onclick="movePage(${pageEndNum + 1}); return false;" aria-label="Next">
	      </c:if>	
	        <span aria-hidden="true">&raquo;</span>
	      </a>
	    </li>
	 </ul>
	 <form action="">
	 
	 </form>
	 <script>
	 	function movePage(pageNum){
	 		/* $.ajax({
				url: "town_list.do?reqeustType=ajax&contentTypeId=" + $('#typeSelect').val()
					+ "&cat1=" + $('#cat1Select').val()  
					+ "&cat2=" + $('#cat2Select').val()
					+ "&cat3=" + $('#cat3Select').val()
					+ "&areaCode=" + $('#areaSelect').val()
					+ "&sigunguCode=" + $('#sigunguSelect').val()
					+ "&pageNo=" + pageNum, 
				dataType: 'html',
				success: function(result){
					$('#townList').html(result);
				}
			}); */
			$('#searchForm').append('<input type="hidden" name="pageNo" value="' + pageNum + '"/>');
			$('#searchForm').submit();
	 	}
	 </script>
</div>