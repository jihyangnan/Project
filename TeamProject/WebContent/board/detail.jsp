<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="frm" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="about_top" >
	<div class="container" style="margin: 400;">
		<div class="jumbotron">
			<div class="row">
				<div align=center style="margin-bottom:30px;">
					<img src="images/freeboard.jpg"	class="img-responsive" style="border:2px solid;">
				</div>
				<span class="col-md-2"
					style="text-align:center;padding:2px;font-size:13pt;font-weight:600">
					제목</span> 
				<span class="col-md-7" style="padding:2px; font-size:13pt;">
					${dto.b_title }
				</span> 
				<span class="col-md-1"
					style="text-align:center;padding:5px;font-size:10pt; color:#f08080;font-weight:600;">
					등록일</span> 
				<span class="col-md-2"
					style="text-align:left; padding:5px;font-size:10pt; color:#f08080;font-weight:600;">
					<frm:formatDate value="${dto.b_date }" pattern="yyyy_MM-dd" />
				</span>
			</div>
			<div class="row">
				<span class="col-md-2"
					style="text-align:center;padding:2px;font-size:13pt;font-weight:600;">
					작성자 </span> 
				<span class="col-md-7" style="padding:2px; font-size:13pt;">
				${dto.b_id }</span> 
				<span class="col-md-1"
					style="text-align:center;padding:5px;font-size:10pt; color:#f08080;font-weight:600;">
					조회수</span> 
				<span class="col-md-1"
					style="text-align:center;padding:5px;font-size:10pt; color:#f08080;font-weight:600;">
					${dto.b_hit} </span>
			</div>
			<div
				style="padding: 20px; ">
				<pre style="background-color:#ffffff;">${dto.b_content }</pre>
			</div>
			
			<div style="text-align: right; list-style: none; padding-left:20px; padding-right:20px;">
				<ul>
				<li style="float: left;margin: 0 auto;list-style: none;display: block;">
				<div style=" text-align: left;">
				<span style="padding: 7px; font-size: 9pt; ">이전글</span>
				<span style="padding: 7px; font-size: 9pt; ">다음글</span>
				</div>
				</li>
				<li>
				<div style=" text-align: right;" >
				<a href="board_update.do?b_no=${dto.b_no }&page=${page}">
				<button type="button" class="btn search-btn" style=" padding: 2px 6px; font-size: 12px;">
				수정</button>
				<!-- <span style="padding: 7px; font-size: 9pt;" >수정</span> -->
				</a>
				
				<a href="board_delete.do?b_no=${dto.b_no }&page=${page}">
				<button type="button" class="btn search-btn" style=" padding: 2px 6px; font-size: 12px;">
				삭제</button>
				<!-- <span style="padding: 7px; font-size: 9pt; ">삭제</span> -->
				</a>
				
				<a href="board_list.do?page=${page }">
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
			<div >
				<div class="row" style="padding-left:20px; padding-right:20px;">
					<span class="col-md-11" style="padding-left:20px;"> 
					<textarea
							name="reply"
							onclick="if(this.value==this.defaultValue){this.value=''}"
							onblur="if (this.value == '') { this.value = this.defaultValue; }"
							style="width: 100%; height: 50px; font-size: 10pt; color:#a9a9a9;"> 댓글을 입력해 주세요</textarea>
					</span> 
					<span class="col-md-1"> 
					<input type="button" value="댓글 입력"
						style="float:right; width: 85px; height: 50px; font-size: 9pt;
						 color: #f08080; font-weight: 500">
					</span>
				</div>
			</div>
			<p></p>
			<div style="padding-left: 40px;padding-right: 40px;">
			<c:forEach var="rDto" items="${rlist }">
				<div class="row" style="border: 1px solid #e6e6e6; border-style: ridge; 
						padding-top:5px; padding-bottom:5px;">
					<span class="col-md-1"
						style="font-size: 10pt; color: #000000;">${rDto.rw_id }</span> 
						<span
						class="col-md-8" style="font-size: 10pt; color: #a9a9a9;">${rDto.rw_content }</span>
					<span class="col-md-1" style="font-size: 8pt; color: #b0c4de; padding:0px; text-align: right;">
					${rDto.dbday }</span> 
						<span class="col-xs-1"
						style="font-size: 8pt; color: #b0c4de; text-align: right; float:none;">수정</span> 
						<span class="col-xs-1"
						style="font-size: 8pt; color: #b0c4de; text-align: right; float:none;">삭제</span>  
						<span class="col-xs-1"
						style="font-size: 8pt; color: #b0c4de; text-align: right; float:none;">댓글</span>
				</div>
				</c:forEach>
			</div>
			
		</div>

	</div>
</div>