<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="frm" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
var i=0;
$(function(){
	$('#replyBtn').click(function(){
		var msg=$('#rw_content').val();
		if(msg=="")
		{
			alert("댓글 내용을 입력하세요");
			$('#rw_content').focus();
			return;
		}
		$('#re_new_frm').submit();
		// action수행
	});
	var k=0;
	$('.reRe').click(function(){
		var rw_no=$(this).attr('name')
		if(k==0)
		{
			$('#re_re_tr'+rw_no).show();
			k=1;
		}
		else
		{
			$('#re_re_tr'+rw_no).hide();
			k=0;
		}
	});
	
	var p=0;
	$('.reUpdate').click(function(){
		var rw_no=$(this).attr('name');
		if(p==0)
		{
			$('#re_update_tr'+rw_no).show();
			p=1;
		}
		else
		{
			$('#re_update_tr'+rw_no).hide();
			p=0;
		}
	});
});
function replyBtnClick(rw_no)
{
	var msg=$('#rw_content'+rw_no).val();
	if(msg=="")
	{
		alert("댓글 내용 입력하세요");
		$('#rw_content'+rw_no).focus();
		return;
	}
	$('#re_re_frm'+rw_no).submit();
}
function replyUpdateClick(rw_no)
{
	var msg=$('#urw_content'+rw_no).val();
	if(msg=="")
	{
		alert("댓글 내용 입력하세요");
		$('#urw_content'+rw_no).focus();
		return;
	}
	$('#re_update_frm'+rw_no).submit();
}
</script>
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
					<frm:formatDate value="${dto.b_date }" pattern="yyyy-MM-dd" />
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
				<!-- <div style=" text-align: left;">
				<span style="padding: 7px; font-size: 9pt; ">이전글</span>
				<span style="padding: 7px; font-size: 9pt; ">다음글</span>
				</div> -->
				</li>
				<li>
				<div style=" text-align: right;" >
				
				<c:if test="${sessionScope.id==dto.b_id ||sessionScope.id=='admin' }">	
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
				</c:if>
				
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
			<!-- 아이디있을시 -->
			<c:if test="${dto.b_id!='admin' }">
			<c:if test="${sessionScope.id!=null}">
				<form method="post" action="reboard_new_insert.do" id="re_new_frm">
				<div class="row" style="padding-left:20px; padding-right:20px;">
					<span class="col-md-11" style="padding-left:20px;"> 
					<input type="hidden" name=rw_bno value="${dto.b_no }">
					<input type="hidden" name=page value="${page }">
					<textarea
							name="rw_content"
							onclick="if(this.value==this.defaultValue){this.value=''}"
							onblur="if (this.value == '') { this.value = this.defaultValue; }"
							style="width: 100%; height: 50px; font-size: 10pt; color:#a9a9a9;"> 댓글을 입력해 주세요</textarea>
					</span> 
					<span class="col-md-1"> 
					<input type="button" value="댓글 입력" id="replyBtn"
						style="float:right; width: 85px; height: 50px; font-size: 9pt;
						 color: #f08080; font-weight: 500">
					</span>
				</div>
				</form>
			</c:if>
			</c:if>
			</div>
			<p></p>
			<div style="padding-left: 40px;padding-right: 40px;">
			<c:forEach var="rDto" items="${rlist }">
				<div class="row" style="border: 1px solid #e6e6e6; border-style: ridge; 
						padding-top:5px; padding-bottom:5px;">
					<c:if test="${rDto.group_tab!=0 }">
					<span class="col-sm-1"
						style="font-size: 10pt; color:#f08080; font-weight:700; width:13%">
						&nbsp;&nbsp;&nbsp;<img src="images/re_icon.gif">					
						${rDto.rw_id }
					</span> 
					</c:if>
					<c:if test="${rDto.group_tab==0 }">
					<span class="col-sm-1"
						style="font-size: 10pt; color:#f08080; font-weight:700;">				
						${rDto.rw_id }
					</span>
					</c:if> 
						<%-- <c:if test="${rDto.group_tab!=0 }">
							<c:forEach var="i" begin="1" end="${rDto.group_tab }" step="1">
							&nbsp;&nbsp;
							</c:forEach>
						</c:if> --%>
						<c:if test="${rDto.group_tab!=0 }">
						<span
						class="col-sm-8" style="width:61.9%; font-size: 10pt; color: #a9a9a9;">${rDto.rw_content }
						
						</span>
						</c:if>
						
						<c:if test="${rDto.group_tab==0 }">
						<span
						class="col-sm-8" style="font-size: 10pt; color: #a9a9a9;">${rDto.rw_content }
						</span>
						</c:if>
					<span class="col-sm-1" style="font-size: 8pt; color: #337ab7; padding:0px; text-align: right;">
						${rDto.dbday }
					</span> 
						<c:if test="${sessionScope.id==rDto.rw_id ||sessionScope.id=='admin' }">
						<a href="#" name="${rDto.rw_no }" class="reUpdate">
						<span class="col-xs-1"
						style="font-size: 8pt; color: #337ab7; text-align: right; float:none; padding-right:0px;"><b>수정</b></span> 
						</a>
						<a href="reboard_delete.do?rw_no=${rDto.rw_no }&b_no=${dto.b_no }&page=${page}">
						<span class="col-xs-1"
						style="font-size: 8pt; color: #337ab7; text-align: right; float:none; padding-right:0px;"><b>삭제</b></span>  
						</a>
						</c:if>
						
						<c:if test="${sessionScope.id!=null }">
							<c:if test="${rDto.group_tab==0 }">
							<div style="float:right;">
							<a class="reRe" href="#" onclick="return false;" name="${rDto.rw_no }">
							<span class="col-xs-1"
							style="font-size: 8pt; color: #337ab7; text-align: right; float:none;"><b>댓글</b></span>
							</a>
							</div>
							</c:if>
						</c:if>
				</div>
				<!-- 댓글의 댓글 -->
			<c:if test="${rDto.group_step==0 }">
			<div id="re_re_tr${rDto.rw_no }" style="display:none; margin-top:10px; margin-bottom:10px;">
			<!-- 아이디있을시 -->
				<form method="post" action="reboard_re_insert.do" id="re_re_frm${rDto.rw_no }">
				<div class="row" >
					<span class="col-md-11" style="padding:0px;"> 
					<input type="hidden" name=rw_bno value="${dto.b_no }">
					<input type="hidden" name=page value="${page }">
					<input type=hidden name=rw_no value="${rDto.rw_no }">
					<textarea
							name="rw_content" id="rw_content${rDto.rw_no }"
							onclick="if(this.value==this.defaultValue){this.value=''}"
							onblur="if (this.value == '') { this.value = this.defaultValue; }"
							style="width: 100%; height: 50px; font-size: 10pt; color:#a9a9a9;"> 댓글을 입력해 주세요</textarea>
					</span> 
					<span class="col-md-1" style="padding:0px;"> 
					<input type="button" value="댓글 댓글" id="replyBtn"
						style="float:right; width: 85px; height: 50px; font-size: 9pt;
						 color: #f08080; font-weight: 500"  onclick="replyBtnClick(${rDto.rw_no })">
					</span>
				</div>
				</form>
			</div>
			</c:if>
			
			<div id="re_update_tr${rDto.rw_no }" style="display:none; margin-top:10px; margin-bottom:10px;">
			<!-- 아이디있을시 -->
				<form method="post" action="reboard_re_update.do" id="re_update_frm${rDto.rw_no }">
				<div class="row">
					<span class="col-md-11" style="padding:0px;"> 
					<input type="hidden" name=rw_bno value="${dto.b_no }">
					<input type="hidden" name=page value="${page }">
					<input type=hidden name=rw_no value="${rDto.rw_no }">
					<textarea
							name="rw_content" id="urw_content${rDto.rw_no }"
							style="width: 100%; height: 50px; font-size: 10pt; color:#a9a9a9;">${rDto.rw_content }</textarea>
					</span> 
					<span class="col-md-1" style="padding:0px;"> 
					<input type="button" value="수정하기" id="replyBtn"
						style="float:right; width: 80px; height: 50px; font-size: 9pt;
						 color: #f08080; font-weight: 500"  onclick="replyUpdateClick(${rDto.rw_no })">
					</span>
				</div>
				</form>
			</div>
				</c:forEach>
			</div>
			
			<!-- 댓글의 게시판 -->
			<div style="text-align: center; padding:20px;">
			<c:if test="${dto.b_id!='admin' }">
				<a href="board_content.do?b_no=${dto.b_no }&page=${page}&rPage=${rcurpage>1?rcurpage-1:rcurpage}">
				<button type="button" class="btn search-btn" style=" padding: 2px 6px; font-size: 12px;">
				이전</button>
				</a>
				&nbsp;
				<a href="board_content.do?b_no=${dto.b_no }&page=${page}&rPage=${rcurpage<rtotal?rcurpage+1:rcurpage}">
				<button type="button" class="btn search-btn" style=" padding: 2px 6px; font-size: 12px;">
				다음</button>
				</a>
				<font style="font-size: 12px;">${rcurpage } / ${rtotal }</font>
			</c:if>
			</div>
		</div>

	</div>
</div>