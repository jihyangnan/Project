<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
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
					style="vertical-align: top;"> 고객의 소리 / 1:1 문의</li>
			</ul>
			</div>
			<div style="border-top: 1px solid #E2E2E2; border-bottom: 1px solid #E2E2E2;">
				<div class="text-right">
					<ol class="breadcrumb" style="background-color: #fff">
					</ol>
				</div>
				<div class="jumbotron" style="background-color: #fff">
					<h3 class="m_3" style="margin-bottom: 30px; font-weight: 600; font-size:24px;">1:1 문의하기</h3>
					
					<!-- 글쓰기 -->
					<form class="form-horizontal"  method="post" action="question_insert_ok.do" id="writeForm" >
					<!-- 	<div class="form-group ">
					      <label for="inputName" class="control-label col-sm-1" style="font-size: 14px;font-weight:700;">이름</label>
					      <div class="col-sm-4">
					      	<input type="text" class="form-control" id="inputName" placeholder="이름">
					      </div>
					    </div> -->
						<div class="form-group">
					      <label for="inputPhone" class="control-label col-sm-1 " style="font-size: 14px;font-weight:700;">휴대전화</label>
					      <div class="col-sm-4">
					      	<input type="text" class="form-control" id="inputPhone" placeholder="휴대전화" name="q_phone">
					      </div>
					      <label for="inputEmail" class="control-label col-sm-1" style="margin-left:30px; text-align: center; font-size: 14px;font-weight:700;">이메일</label>
					      <div class="col-sm-4" >
					      	<input type="text" class="form-control" id="inputEmail" placeholder="이메일" name="q_email">
					      </div>
					      <div class="col-sm-12" style="margin-top: 20px; font-size:13px;">
        					# 문의에 대한 빠른 답변을 위해 회원가입시 입력하신 연락처를 확인해 주세요
        				  </div>
					    </div>
					    <div class="form-group ">
					      <label for="qType" class="control-label col-sm-1" style="font-size: 14px;font-weight:700;">문의유형</label>
					      <div class="col-sm-10">
					      	<label class="radio-inline">
							  <input type="radio"  id="qType" value="1" checked name="q_qtno"> 문의
							</label>
							<label class="radio-inline">
							  <input type="radio" id="qType" value="2" name="q_qtno"> 불만
							</label>
							<label class="radio-inline">
							  <input type="radio" id="qType" value="3" name="q_qtno"> 칭찬
							</label>
							<label class="radio-inline">
							  <input type="radio"  id="qType" value="4" name="q_qtno"> 제안
							</label>
							<label class="radio-inline">
							  <input type="radio" id="qType" value="5" name="q_qtno"> 수정
							</label>
					      </div>
					    </div>
					    <div class="form-group ">
					      <label for="subject" class="control-label col-sm-1" style="font-size: 14px;font-weight:700;">제목</label>
					      <div class="col-sm-11">
					      	<input type="text" class="form-control" id="subject" placeholder="제목을 입력하세요" name="q_title">
					      </div>
					    </div>
						<div class="form-group" style="margin-bottom: 0">
						  
							<div id="summernote">
							</div>
							<textarea name="q_content" id="summercontent" style="display: none;"></textarea>
							
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