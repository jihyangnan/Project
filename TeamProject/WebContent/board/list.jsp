<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		        height : 450,
		        minHeight: null,
		        maxHeight: null,
		        lang: 'ko-KR'
		    });
		})
	});
</script>
<div class="about_top">
    <div class="container">

		<div style="border-top: 1px solid #E2E2E2; border-bottom: 1px solid #E2E2E2;">
			<div class="row text-right">
				<ol class="breadcrumb" style="background-color: #fff">
				  <li><a href="#">Home</a></li>
				  <li><a href="#">고객의 소리</a></li>
				  <li class="active">자유게시판</li>
				</ol>
			</div>
			<img class="img-responsive" src="images/freeboard.jpg">
			<!--h3 class="m_3" style="margin-top: 50px; margin-bottom:50px; text-align: center; font-weight: bold;">자유 게시판</h3-->
			<div class="list-group panel panel-default" style="border: 0">	
				<div class="row mhide panel-heading">
					<div class="col-sm-1">번호</div>
					<div class="col-sm-6">제목</div>
					<div class="col-sm-2">작성자</div>
					<div class="col-sm-2">작성일</div>
					<div class="col-sm-1">조회</div>
				</div>
				
				<div class="row list-group-item">
					<span class="col-sm-1 mhide"><img src="images/ico-list-notice.gif"></span>
					<span class="col-sm-6 col-xs-12">
					  <i></i>
					  <a href="index.jsp?page=board/detail.jsp">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a>
					  <sup><img src="images/neo_new.gif"></sup>
					  <span class="content col-xs-12"></span>
					</span>
					<span class="col-sm-2 mhide writer">홍길동</span>
					<span class="col-sm-2 mhide date">2015-09-22</span>
					<span class="col-sm-1 mhide hit">3</span>
				</div>
				<div class="row list-group-item">
					<span class="col-sm-1 mhide"><img src="images/ico-list-notice.gif"></span>
					<span class="col-sm-6 col-xs-12">
					  <i></i>	
					  <a href="index.jsp?page=board/detail.jsp">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a>
					  <sup><img src="images/neo_new.gif"></sup>
					  <span class="content col-xs-12"></span>
					</span>
					<span class="col-sm-2 mhide writer">가나다</span>
					<span class="col-sm-2 mhide date">2015-09-22</span>
					<span class="col-sm-1 mhide hit">10</span>
				</div>
				<div class="row list-group-item">
					<span class="col-sm-1 mhide">8</span>
					<span class="col-sm-6 col-xs-12">
					  <i></i>
					  <a href="index.jsp?page=board/detail.jsp">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a>
					  <sup><img src="images/neo_new.gif"></sup>
					  <span class="content col-xs-12"></span>
					</span>
					<span class="col-sm-2 mhide writer">홍길동</span>
					<span class="col-sm-2 mhide date">2015-09-22</span>
					<span class="col-sm-1 mhide hit">3</span>
				</div>
				<div class="row list-group-item">
					<span class="col-sm-1 mhide">7</span>
					<span class="col-sm-6 col-xs-12">
					  <i></i>
					  <a href="index.jsp?page=board/detail.jspl">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a>
					  <span class="content col-xs-12"></span>
					</span>
					<span class="col-sm-2 mhide writer">홍길동</span>
					<span class="col-sm-2 mhide date">2015-09-22</span>
					<span class="col-sm-1 mhide hit">3</span>
				</div>
				<div class="row list-group-item">
					<span class="col-sm-1 mhide">6</span>
					<span class="col-sm-6 col-xs-12">
					  <i></i>
					  <a href="index.jsp?page=board/detail.jsp">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a>
					  <span class="content col-xs-12"></span>
					</span>
					<span class="col-sm-2 mhide writer">홍길동</span>
					<span class="col-sm-2 mhide date">2015-09-22</span>
					<span class="col-sm-1 mhide hit">3</span>
				</div>
				<div class="row list-group-item">
					<span class="col-sm-1 mhide">5</span>
					<span class="col-sm-6 col-xs-12">
					  <i></i>
					  <a href="index.jsp?page=board/detail.jsp">Lorem ipsum dolor sit amet, consectetur adipiscing elit.
					  <span style="color: #ff4e00; font-weight: bold; font-size: .8em">[5]</span>
					  </a>
					  <span class="content col-xs-12"></span>
					</span>
					<span class="col-sm-2 mhide writer">홍길동</span>
					<span class="col-sm-2 mhide date">2015-09-22</span>
					<span class="col-sm-1 mhide hit">3</span>
				</div>
				<div class="row list-group-item">
					<span class="col-sm-1 mhide">4</span>
					<span class="col-sm-6 col-xs-12">
					  <i></i>
					  <a href="index.jsp?page=board/detail.jsp">Lorem ipsum dolor sit amet, consectetur adipiscing elit.
					  <span style="color: #ff4e00; font-weight: bold; font-size: .8em">[8]</span>
					  </a>
					  <span class="content col-xs-12"></span>
					</span>
					<span class="col-sm-2 mhide writer">홍길동</span>
					<span class="col-sm-2 mhide date">2015-09-22</span>
					<span class="col-sm-1 mhide hit">3</span>
				</div>
				<div class="row list-group-item">
					<span class="col-sm-1 mhide">3</span>
					<span class="col-sm-6 col-xs-12">
					  <i></i>
					  <a href="index.jsp?page=board/detail.jsp">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a>
					  <span class="content col-xs-12"></span>
					</span>
					<span class="col-sm-2 mhide writer">홍길동</span>
					<span class="col-sm-2 mhide date">2015-09-22</span>
					<span class="col-sm-1 mhide hit">3</span>
				</div>
				<div class="row list-group-item">
					<span class="col-sm-1 mhide">2</span>
					<span class="col-sm-6 col-xs-12">
					  <i></i>
					  <a href="index.jsp?page=board/detail.jsp">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a>
					  <span class="content col-xs-12"></span>
					</span>
					<span class="col-sm-2 mhide writer">홍길동</span>
					<span class="col-sm-2 mhide date">2015-09-22</span>
					<span class="col-sm-1 mhide hit">3</span>
				</div>
				<div class="row list-group-item">
					<span class="col-sm-1 mhide">1</span>
					<span class="col-sm-6 col-xs-12">
					  <i></i>
					  <a href="index.jsp?page=board/detail.jsp">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a>
					  <span class="content col-xs-12"></span>
					</span>
					<span class="col-sm-2 mhide writer">홍두깨</span>
					<span class="col-sm-2 mhide date">2015-09-10</span>
					<span class="col-sm-1 mhide hit">1</span>
				</div>
				
			</div>		
			
			<div class="row text-right">
				<button type="button" class="btn search-btn" data-toggle="modal" data-target="#writeModal">글쓰기</button>
			</div>	
			
			
			<div id="writeModal" class="modal fade" role="dialog" aria-labelledby="gridSystemModalLabel" aria-hidden="true">
			    <div class="modal-dialog modal-lg">
			      <div class="modal-content">
			        <div class="modal-header">
			          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			          <h4 class="modal-title" id="gridSystemModalLabel" style="color: #F94B4B; font-weight: bold;">자유게시판 글쓰기</h4>
			        </div>
			        <div class="modal-body">
			          <div class="container-fluid">
			            
			            <form class="form-horizontal">
							<div class="form-group">
								<!-- label for="inputSubject" class="col-sm-2 control-label" style="text-align: left">제목</label-->
								<div class="col-sm-12" style="padding-left: 0; padding-right: 0">
									<input type="password" class="form-control" id="inputSubject"
										placeholder="제목을 입력하세요.">
								</div>
							</div>
							<div class="form-group">
								<div id="summernote">
								</div>
							</div>
						</form>
			            
			            
			          </div>
			        </div>
			        <div class="modal-footer">
			          <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
			          <button type="button" class="btn btn-primary">확인</button>
			        </div>
			      </div><!-- /.modal-content -->
			    </div><!-- /.modal-dialog -->
			  </div><!-- /.modal -->
			
			
			<div class=text-center>
			<!--span>
			<img src="images/back.jpg">&nbsp;1  2  3  4  5&nbsp;<img src="images/daum.jpg">
			</span-->
			   <ul class="pagination">
			    <li>
			      <a href="#" aria-label="Previous">
			        <span aria-hidden="true">&laquo;</span>
			      </a>
			    </li>
			    <li class="active"><a href="#">1</a></li>
			    <li><a href="#">2</a></li>
			    <li><a href="#">3</a></li>
			    <li><a href="#">4</a></li>
			    <li><a href="#">5</a></li>
			    <li>
			      <a href="#" aria-label="Next">
			        <span aria-hidden="true">&raquo;</span>
			      </a>
			    </li>
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
