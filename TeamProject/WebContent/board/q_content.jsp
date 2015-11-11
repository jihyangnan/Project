<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="frm" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>

<div class="about_top" >
	<div class="container" style="margin: 400;">
		<div class="jumbotron">
			<div class="row">
				<div class="jumbotron" style="background-color: #fff; border:2px solid #000000;">
				<h3 class="m_3" style="margin:0px; padding:0px; font-weight: 600; font-size:35px; text-align:center;">
				1:1 문의 관리 - 답변</h3>
				</div>
				<span class="col-md-2"
					style="text-align:center;padding:2px;font-size:13pt;font-weight:600">
					제목</span> 
				<span class="col-md-7" style="padding:2px; font-size:13pt;">
					${dto.q_title }
				</span> 
				<span class="col-md-1"
					style="text-align:center;padding:5px;font-size:10pt; color:#f08080;font-weight:600;">
					등록일</span> 
				<span class="col-md-2"
					style="text-align:left; padding:5px;font-size:10pt; color:#f08080;font-weight:600;">
					<frm:formatDate value="${dto.q_date }" pattern="yyyy-MM-dd" />
				</span>
			</div>
			<div class="row">
				<span class="col-md-2"
					style="text-align:center;padding:2px;font-size:13pt;font-weight:600;">
					작성자 </span> 
				<span class="col-md-3" style="padding:2px; font-size:13pt;">
				${dto.q_id }</span> 
				<span class="col-md-2"
					style="text-align:center;padding:2px;font-size:13pt;font-weight:600;">
					문의 유형 </span> 
				<span class="col-md-3" style="padding:2px; font-size:13pt;">
				${dto.qt_name }</span> 
			</div>
			<div class="row">
				
				<span class="col-md-2"
					style="text-align:center;padding:2px;font-size:13pt;font-weight:600;">
					연락처 </span> 
				<span class="col-md-3" style="padding:2px; font-size:13pt;">
				${dto.q_phone }</span> 
				
				<span class="col-md-2"
					style="text-align:center;padding:2px;font-size:13pt;font-weight:600;">
					이메일 </span> 
				<span class="col-md-2" style="padding:2px; font-size:13pt;">
				${dto.q_email }</span> 
			</div>
			<div
				style="padding: 20px; ">
				<pre style="background-color:#ffffff;">${dto.q_content }</pre>
			</div>
			
			<div style="text-align: right; list-style: none; padding-left:20px; padding-right:20px;">
				<ul>
				<li style="float: left;margin: 0 auto;list-style: none;display: block;">
				<!-- <div style=" text-align: left;">
				<span style="padding: 7px; font-size: 9pt; ">이전글</span>
				<span style="padding: 7px; font-size: 9pt; ">다음글</span>
				</div> -->
				</li>
				<li>
				<div style=" text-align: right;" >		
				
				<a href="question_email.do?q_no=${dto.q_no }&page=${page}">
				<button type="button" class="btn search-btn" style=" padding: 2px 6px; font-size: 12px;">
				답변하기</button>
				<!-- <span style="padding: 7px; font-size: 9pt; ">삭제</span> -->
				</a>
				
				<a href="question_list.do?page=${page }">
				<button type="button" class="btn search-btn" style=" padding: 2px 6px; font-size: 12px;">
				목록</button>
				<!-- <span
					style="padding: 7px; font-size: 9pt; ">목록</span> -->
					</a>
				</div>
				</li>
				</ul>
			</div>
			
			
			<div>
				<hr style="border:1px solid #d8d8d8;"></hr>
			</div>
		
		</div>
	</div>
</div>