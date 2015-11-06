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
					style="vertical-align: top;"> 고객의 소리 / 자유게시판</li>
			</ul>
			</div>
			<div style="border-top: 1px solid #E2E2E2; border-bottom: 1px solid #E2E2E2;">
				<div class="text-right">
					<ol class="breadcrumb" style="background-color: #fff">
					</ol>
				</div>
				<div class="jumbotron" style="background-color: #fff">
					<h3 style="padding-bottom:20px; font-size: 23px; font-weight: 600; color:#f94b4b;">
					자유게시판 글수정하기</h3>
					
					<form class="form-horizontal" method="post" id="writeForm" action="board_update_ok.do">
					    <input type="hidden" name="b_no" value="${dto.b_no}" />
					    <input type="hidden" name="page" value="${requestScope.page}" />
					    <div class="form-group ">
					      <label for="subject" class="control-label col-sm-1">제목</label>
					      <div class="col-sm-11" >
					      	<input type="text" name="b_title" class="form-control" id="subject" value=${dto.b_title }>
					      </div>
					    </div>
						<div class="form-group" style="margin-bottom: 0">
						  
							<div id="summernote">
							${dto.b_content }
							</div>
						<textarea name="b_content" id="summercontent" style="display: none;"></textarea>
						</div>
						<div class="form-group" style="text-align: center;" >
							<button type="button" class="btn btn-primary" id="ubtnSub">확인</button>
							<button type="button" class="btn btn-default" id="ubenCancel">취소</button>
							<div style="clear:both;"></div>
						</div>
					</form>

				</div>

			</div>
			
	</div>
</div>
			