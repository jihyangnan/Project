<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>    
function resizeBoard(){
		$("span.content").html(function(){
			var msg = "";
			var icon = "";
			if($(window).width() <= 768){
				var span = $(this).parent();
				var writer = span.siblings(".writer").text();
				var date = span.siblings(".date").text();
				var hit = "조회 " + span.siblings(".hit").text();
				msg = [writer, date, hit].join(" | ");
				
				if(span.prev().find("img").length > 0){
					icon = "<img src='images/ico-list-notice.gif'>";
				}
				
			} 
			$(this).siblings('i').html(icon);
			return msg;
		}); 
	}
	 
	$(document).ready(function(){
		resizeBoard();
		
		$(window).resize(function(){
			resizeBoard();
		});
		
		$('#writeModal').on('shown.bs.modal', function (e) {
			$('#summernote').summernote({
				onBlur : function(e) {
		            $('#summercontent').html($('#summernote').code());
		        },
		        height : 450,
		        minHeight: null,
		        maxHeight: null,
		        lang: 'ko-KR'
		    });
			$('span.note-current-fontsize').text(12);
			$('div.note-editable p').css('font-size', '12px');
		})
		
		$('#btnSub').click(function(){
			var sub=$('#inputSubject').val();
			if(sub=="")
			{
				alert('제목을 입력해주세요');
				$('#inputSubject').focus();
				return;
			}
			var cont=$('#summercontent').val();
			if(cont=="")
			{
				alert('내용을 입력해주세요');
				$('#summercontent').focus();

				return;
			} 
			$('writeForm').submit();
		});
	});
</script>
<div class="about_top">
    <div class="container">
		<div>
			<ul>
				<li class="siteline"><img src="images/homelink.png"
					style="vertical-align: top;"> 고객의 소리 / 1:1문의 관리</li>
			</ul>
		</div>
		<div style="border-top: 1px solid #E2E2E2; border-bottom: 1px solid #E2E2E2;">
			<div class="text-right">
				<ol class="breadcrumb" style="background-color: #fff">
				</ol>
			</div>
			<div class="jumbotron" style="background-color: #fff; padding:50px 0px 0px 0px;">
			<h3 class="m_3" style="margin-bottom: 30px; font-weight: 600; font-size:24px;">1:1 문의 관리</h3>
			</div>
			<!--h3 class="m_3" style="margin-top: 50px; margin-bottom:50px; text-align: center; font-weight: bold;">자유 게시판</h3-->
			<div class="list-group panel panel-default" style="border: 0">	
				<div class="row mhide panel-heading" style="margin:0px;">
					
					<div class="col-sm-1" style="font-weight: 600">번호</div>
					<div class="col-sm-5" style="font-weight: 600">제목</div>
					<div class="col-sm-2" style="font-weight: 600">문의유형</div>
					<div class="col-sm-2" style="font-weight: 600">작성자</div>
					<div class="col-sm-2" style="font-weight: 600">작성일</div>
					
				</div>				
				<!-- 회원목록 -->
				<c:forEach var="qdto" items="${qlist }" varStatus="status">
				<div class="row list-group-item" style="margin:0px;">
					<!-- <img src="images/ico-list-notice.gif"> -->
					<span class="col-sm-1">${qdto.num }</span>
					<span class="col-sm-5 col-xs-10" style="text-align:left;">
					  <i></i>
					  <a href="question_content.do?q_no=${qdto.q_no}&page=${qcurpage}">
					  ${qdto.q_title }</a>
					  <c:if test="${today==qdto.dbday }">
					  <sup><img src="images/neo_new.gif"></sup>
					  </c:if>
					</span>
					<span class="col-sm-2 mhide writer">${qdto.qt_name }</span>
					<span class="col-sm-2 mhide writer">${qdto.q_id }</span>
					<span class="col-sm-2 mhide date">${qdto.dbday }</span>
				</div>
				</c:forEach>
				
			</div>		
						
			<div class=text-center>
			<!--span>
			<img src="images/back.jpg">&nbsp;1  2  3  4  5&nbsp;<img src="images/daum.jpg">
			</span-->
			   <ul class="pagination">
			    <li>
			      <a href="question_list.do?page=${qcurpage>1?qcurpage-1:qcurpage }" aria-label="Previous">
			        <span aria-hidden="true">&laquo;</span>
			      </a>
			    </li>
			    <li class="active"><a href="question_list.do">처음으로</a></li>
			    <li>
			      <a href="question_list.do?page=${qcurpage<qtotalpage?qcurpage+1:qcurpage }" aria-label="Next">
			        <span aria-hidden="true">&raquo;</span>
			      </a>
			    </li>
			  </ul>
			  <ul class="pagination" style="font-size: 12px;">
			  	<li style="float:right;">${qcurpage } / ${qtotalpage }</li>
			  </ul>
			</div>
       </div>
       
	</div>
</div>
