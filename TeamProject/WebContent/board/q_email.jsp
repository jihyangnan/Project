<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">
	$(document).ready(function() {
		$('#summernote').summernote({
			onBlur : function(e) {
				var str = $('#summernote').code();
				console.log(str);
				//str = str.replace("&", "&amp;");
				str = str.replace(/&/g, "&amp;");
	            $('#summercontent').html(str);
	        },
	        height : 450,
	        minHeight: null,
	        maxHeight: null,
	        lang: 'ko-KR'
	    });
		$('span.note-current-fontsize').text(12);
		$('div.note-editable p').css('font-size', '12px');
	});
	$(function(){
	$('#ubtnSub').click(function(){
			$('#writeForm').submit();
		});
	$('#ubtnCancel').click(function(){
		history.back();	
	});
	});
</script>
<div class="about_top inquire">
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
				<div class="jumbotron" style="background-color: #fff">
					<h3 class="m_3" style="margin:0px; padding:0px; font-weight: 600; font-size:35px; 
					text-align:center; padding-bottom:50px;">
					1:1 문의 관리 - 답변</h3>
					
					<form class="form-horizontal" method="post" id="writeForm" action="question_email_send.do">
					    <input type="hidden" name="b_no" value="${dto.q_no}" />
					    <input type="hidden" name="page" value="${requestScope.page}" />
					     
					     <div class="form-group ">
					      <label for="subject" class="control-label col-sm-1">연락처</label>
					      <div class="col-sm-3" >
					      	${dto.q_phone }
					      </div>
					      
					      <label for="subject" class="control-label col-sm-1">이메일</label>
					      <div class="col-sm-3" >
					      	${dto.q_email }
					      </div>
					    </div>
					    
					    <div class="form-group ">
					      <label for="subject" class="control-label col-sm-1">제목</label>
					      <div class="col-sm-11" style="padding-top: 7px;" >
					      	<input type="hidden" name="title" value="안녕하세요 문의하신 니집내집 관련 답변입니다.">안녕하세요 문의하신 니집내집 관련 답변입니다.
					      	<input type="hidden" name="email" value=${dto.q_email }>
					      </div>
					    </div>
						<div class="form-group" style="margin-bottom: 0">
						  
							<div id="summernote">
							${dto.q_content }
							<br>
							=====================================================================================
							<br>
							안녕하세요. 니집내집 관리자입니다.
							</div>
						<textarea name="content" id="summercontent" style="display: none;"></textarea>
						</div>
						<div class="form-group" style="text-align: center;" >
							<button type="button" class="btn btn-primary" id="ubtnSub">E-mail 보내기</button>
							<div style="clear:both;"></div>
						</div>
					</form>

				</div>

			</div>
			
	</div>
</div>
			