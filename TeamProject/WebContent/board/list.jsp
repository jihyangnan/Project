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
					style="vertical-align: top;"> 고객의 소리 / 자유게시판</li>
			</ul>
		</div>
		<div style="border-top: 1px solid #E2E2E2; border-bottom: 1px solid #E2E2E2;">
			<div class="row text-right">
				<ol class="breadcrumb" style="background-color: #fff">
				</ol>
			</div>
			<div align=center style="padding-bottom:30px">
			<img class="img-responsive" src="images/freeboard.jpg" style="border:2px solid;">
			</div>
			<!--h3 class="m_3" style="margin-top: 50px; margin-bottom:50px; text-align: center; font-weight: bold;">자유 게시판</h3-->
			<div class="list-group panel panel-default" style="border: 0">	
				<div class="row mhide panel-heading">
					
					<div class="col-sm-1" style="font-weight: 600">번호</div>
					<div class="col-sm-1" style="font-weight: 600">말머리</div>
					<div class="col-sm-5" style="font-weight: 600">제목</div>
					<div class="col-sm-2" style="font-weight: 600">작성자</div>
					<div class="col-sm-2" style="font-weight: 600">작성일</div>
					<div class="col-sm-1" style="font-weight: 600">조회</div>
				</div>
				
				<c:forEach var="dto" items="${list }" varStatus="status">
				<div class="row list-group-item">
					<!-- <img src="images/ico-list-notice.gif"> -->
					<span class="col-sm-1">${dto.b_no }</span>
					<span class="col-sm-1 mhide">
						<c:if test="${not empty dto.sa_img}">
						<img src="images/${dto.sa_img }" /> 
						</c:if>
					</span>
					<span class="col-sm-5 col-xs-10" style="text-align:left;">
					  <i></i>
					  <a href="board_content.do?b_no=${dto.b_no}&page=${curpage}">
					  ${dto.b_title }</a>
					  <c:if test="${dto.replyCount!=0 }">
					  	<font style="color:#f94b4b;font-size:13px; font-weight:500">
					  	[${dto.replyCount }]</font>
					  </c:if>
					  <c:if test="${today==dto.dbday }">
					  <sup><img src="images/neo_new.gif"></sup>
					  </c:if>
					</span>
					
					<span class="col-sm-2 mhide writer">${dto.b_id }</span>
					<span class="col-sm-2 mhide date">${dto.dbday }</span>
					<span class="col-sm-1 mhide hit">${dto.b_hit }</span>
				
				</div>
				</c:forEach>
			</div>		
			
			
			<div class="row text-right">
			 <!-- <a href="board_insert.do"> -->
				<button type="button" class="btn search-btn" data-toggle="modal" data-target="#writeModal">글쓰기</button>
			<!--  </a> -->
			</div>	
			
			
			<div id="writeModal" class="modal fade" role="dialog" aria-labelledby="gridSystemModalLabel" aria-hidden="true">
			    <div class="modal-dialog modal-lg" style="margin:120px auto;">
			      <div class="modal-content">
			        <div class="modal-header">
			          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			          <h4 class="modal-title" id="gridSystemModalLabel" style="color: #F94B4B; font-weight: bold;">자유게시판 글쓰기</h4>
			        </div>
			        <div class="modal-body">
			          <div class="container-fluid">
			            
			            <form class="form-horizontal" method="post" action="board_insert.do" id="writeForm">
							<div class="form-group">
								<c:if test="${sessionScope.id == 'admin'}" >
									<div >
									<font style="font-weight: 700";>말머리</font>&nbsp;&nbsp;&nbsp;
									<label style="font-size:14px;">
										<input type="radio" name=word value=1>&nbsp; 공지 &nbsp; &nbsp; &nbsp;
										<input type="radio" name=word value=2>&nbsp; 이벤트 &nbsp; &nbsp; &nbsp;
										<input type="radio" name=word value=3>&nbsp; 기타
									</label>
									</div>
								</c:if>
								
								<!-- label for="inputSubject" class="col-sm-2 control-label" style="text-align: left">제목</label-->
								<div class="col-sm-12" style="padding-left: 0; padding-right: 0">
									<input type="text" class="form-control" id="inputSubject" name="b_title"
										placeholder="제목을 입력하세요.">
								</div>
							</div>
							<div class="form-group">
								<div id="summernote"></div>
								<textarea name="b_content" id="summercontent" style="display: none;"></textarea>
							</div>
						
			            
			            
			          </div>
			        </div>
			        <div class="modal-footer">
			          <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
			          <button type="submit" class="btn btn-primary" id="btnSub">확인</button>
			        </div>
			        </form>
			      </div><!-- /.modal-content -->
			    </div><!-- /.modal-dialog -->
			  </div><!-- /.modal -->
			
			
			<div class=text-center>
			<!--span>
			<img src="images/back.jpg">&nbsp;1  2  3  4  5&nbsp;<img src="images/daum.jpg">
			</span-->
			   <ul class="pagination">
			    <li>
			      <a href="board_list.do?page=${curpage>1?curpage-1:curpage }" aria-label="Previous">
			        <span aria-hidden="true">&laquo;</span>
			      </a>
			    </li>
			   <!--  <li class="active"><a href="#">1</a></li>
			    <li><a href="#">2</a></li>
			    <li><a href="#">3</a></li>
			    <li><a href="#">4</a></li>
			    <li><a href="#">5</a></li> -->
			    <li class="active"><a href="board_list.do">처음으로</a></li>
			    <li>
			      <a href="board_list.do?page=${curpage<totalpage?curpage+1:curpage }" aria-label="Next">
			        <span aria-hidden="true">&raquo;</span>
			      </a>
			    </li>
			  </ul>
			  <ul class="pagination" style="font-size: 12px;">
			  	<li style="float:right;">${curpage } / ${totalpage }</li>
			  </ul>
			</div>
			<div class="row" style="margin-bottom: 30px">
				<div class="col-sm-2" style="margin-bottom: 10px">
				  <select class="form-control">
				    <option>제목</option>
					<option>작성자</option>
					<option>제목+작성자</option>
				  </select>
				</div>
				<div class="col-sm-3">
					<div class="input-group">
				      <input type="text" class="form-control" placeholder="Search for...">
				      <span class="input-group-btn">
				        <button class="btn btn-default search-btn" type="button">검색</button>
				      </span>
				    </div>
			    </div>
			</div>
       </div>
       
	</div>
</div>
