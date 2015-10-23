<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	$(document).ready(function() {
	    $('#summernote').summernote({
	        height : 350,
	        minHeight: null,
	        maxHeight: null,
	        lang: 'ko-KR'
	    });
	});
</script>
<div class="about_top inquire">
    <div class="container">

			<div style="border-top: 1px solid #E2E2E2; border-bottom: 1px solid #E2E2E2;">
				<div class="row text-right">
					<ol class="breadcrumb" style="background-color: #fff">
					  <li><a href="#">Home</a></li>
					  <li><a href="#">고객의 소리</a></li>
					  <li class="active">자유게시판</li>
					</ol>
				</div>
				<div class="jumbotron" style="background-color: #fff">
					<h3 class="m_3" style="margin-bottom: 50px;">1:1 문의하기</h3>
					<form class="form-horizontal">
						<div class="form-group ">
					      <label for="inputName" class="control-label col-sm-2">이름</label>
					      <div class="col-sm-4">
					      	<input type="text" class="form-control" id="inputName" placeholder="이름">
					      </div>
					    </div>
						<div class="form-group">
					      <label for="inputPhone" class="control-label col-sm-2 ">휴대전화</label>
					      <div class="col-sm-4">
					      	<input type="text" class="form-control" id="inputPhone" placeholder="휴대전화">
					      </div>
					      <label for="inputEmail" class="control-label col-sm-2" style="text-align: center;">이메일</label>
					      <div class="col-sm-4">
					      	<input type="text" class="form-control" id="inputEmail" placeholder="이메일">
					      </div>
					      <div class="col-sm-12" style="margin-top: 20px;">
        					# 문의에 대한 빠른 답변을 위해 회원가입시 입력하신 연락처를 확인해 주세요
        				  </div>
					    </div>
					    <div class="form-group ">
					      <label for="qType" class="control-label col-sm-2">문의유형</label>
					      <div class="col-sm-10">
					      	<label class="radio-inline">
							  <input type="radio" name="qType" id="qType" value="문의" checked> 문의
							</label>
							<label class="radio-inline">
							  <input type="radio" name="qType" id="qType" value="불만"> 불만
							</label>
							<label class="radio-inline">
							  <input type="radio" name="qType" id="qType" value="칭찬"> 칭찬
							</label>
							<label class="radio-inline">
							  <input type="radio" name="qType" id="qType" value="제안"> 제안
							</label>
							<label class="radio-inline">
							  <input type="radio" name="qType" id="qType" value="수정"> 수정
							</label>
					      </div>
					    </div>
					    <div class="form-group ">
					      <label for="subject" class="control-label col-sm-2">제목</label>
					      <div class="col-sm-10">
					      	<input type="text" class="form-control" id="subject" placeholder="제목을 입력하세요">
					      </div>
					    </div>
						<div class="form-group" style="margin-bottom: 0">
						  
							<div id="summernote">
							</div>
						</div>
						<div class="form-group ">
					      <label for="file" class="control-label col-sm-2">첨부파일</label>
					      <div class="col-sm-4">
					      	<input type="file" id="file" style="padding: 6px 0;" />
					      </div>
					    </div>
						<div class="form-group" style="text-align: center;" >
							<button type="button" class="btn btn-info">확인</button>
							<button type="button" class="btn btn-success">취소</button>
							<div style="clear:both;"></div>
						</div>
					</form>

				</div>

			</div>
			
	</div>
</div>