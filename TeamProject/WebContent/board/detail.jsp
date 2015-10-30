<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="frm" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="about_top">
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
				style="padding: 30px; ">
				<pre>${dto.b_content }</pre>
			</div>
			
			<div style="text-align: right; list-style: none; padding-left:30px; padding-right:30px;">
				<ul>
				<li style="float: left;margin: 0 auto;list-style: none;display: block;">
				<div style=" text-align: left;">
				<span style="padding: 7px; font-size: 9pt; color: #f08080;">이전글</span>
				<span style="padding: 7px; font-size: 9pt; color: #f08080; ">다음글</span>
				</div>
				</li>
				<li>
				<div style=" text-align: right;">
				<span style="padding: 7px; font-size: 9pt; color: #f08080">수정</span>
				<span style="padding: 7px; font-size: 9pt; color: #f08080">삭제</span>
				<a href="list.do?page=${page }"><span
					style="padding: 7px; font-size: 9pt; color: #f08080">목록</span></a>
				</div>
				</li>
				</ul>
			</div>
			
			
			<div>
				<hr style="border:1px solid #d8d8d8;"></hr>
			</div>
			<div class="row">
				<div style="padding-left:30px; padding-right:30px;">
					<span class="col-md-11"> <textarea
							name="reply"
							onclick="if(this.value==this.defaultValue){this.value=''}"
							onblur="if (this.value == '') { this.value = this.defaultValue; }"
							style="width: 880px; height: 50px; font-size: 10pt">내용 입력</textarea>
					</span> 
					<span class="col-md-2"> 
					<input type="button" value="댓글 입력"
						style="width: 80px; height: 50px; font-size: 9pt; color: #f08080">
					</span> <span class="col-md-2"></span>
				</div>
			</div>
			<p></p>
			<div>
				<div class="row"
					style="border-color: #c0c0c0; border: 1pt; border-style: ridge;">
					<span class="col-md-1"></span> <span class="col-md-1"
						style="font-size: 10pt; color: #000000;">피유비</span> <span
						class="col-md-5" style="font-size: 10pt; color: #a9a9a9;">엘아이씨</span>
					<span class="col-md-1" style="font-size: 8pt; color: #b0c4de;">10.14
						11:51</span> <span class="col-md-1"
						style="font-size: 8pt; color: #b0c4de;">댓글</span> <span
						class="col-md-3"></span>
				</div>
				<div class="row"
					style="border-color: #c0c0c0; border: 1pt; border-style: ridge;">
					<span class="col-md-1"></span> <span class="col-md-1"
						style="font-size: 10pt; color: #000000;">에스티</span> <span
						class="col-md-5" style="font-size: 10pt; color: #a9a9a9;">알아이엔지</span>
					<span class="col-md-1" style="font-size: 8pt; color: #b0c4de;">10.14
						11:52</span> <span class="col-md-1"
						style="font-size: 8pt; color: #b0c4de;">댓글</span> <span
						class="col-md-3"></span>
				</div>
				<div class="row"
					style="border-color: #c0c0c0; border: 1pt; border-style: ridge;">
					<span class="col-md-1"></span> <span class="col-md-1"
						style="font-size: 10pt; color: #000000;">컴쩜</span> <span
						class="col-md-5" style="font-size: 10pt; color: #a9a9a9;">시스트</span>
					<span class="col-md-1" style="font-size: 8pt; color: #b0c4de;">10.14
						11:54</span> <span class="col-md-1"
						style="font-size: 8pt; color: #b0c4de;">댓글</span> <span
						class="col-md-3"></span>
				</div>
				<div class="row"
					style="border-color: #c0c0c0; border: 1pt; border-style: ridge;">
					<span class="col-md-1"></span> <span class="col-md-1"
						style="font-size: 10pt; color: #000000;">비오에이</span> <span
						class="col-md-5" style="font-size: 10pt; color: #a9a9a9;">알디
						엘아이에스티</span> <span class="col-md-1"
						style="font-size: 8pt; color: #b0c4de;">10.14 11:54</span> <span
						class="col-md-1" style="font-size: 8pt; color: #b0c4de;">댓글</span>
					<span class="col-md-3"></span>
				</div>
			</div>
			
		</div>

	</div>
</div>