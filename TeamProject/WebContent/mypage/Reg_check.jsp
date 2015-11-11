<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="about_top">
    <div class="container">
    	<div>
			<ul>
				<li class="siteline"><img src="images/homelink.png" style="vertical-align:top;"> 
                  	마이페이지 -> 내집 등록내역</li>
			</ul>
		</div>
        <div class="about">
			<div>
				<h4 class="blog_head" align="left">
					<b>내집 등록내역</b>
				</h4>
				<hr style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;">
			</div>

			<c:forEach var="reg" items="${list}" varStatus="status">
				<c:if test="${status.count % 2 == 1}">
					<div style=" margin-bottom: 3%;">
				</c:if>
					<div class="col-sm-6">
					<div class="col-sm-6">	
							<img src="upload/${reg.image}" class="" alt="" style="width: 200px; height: 140px;">
					</div>
					<div class="col-sm-6">
						<h3 style="font-size: 18px; font-weight: bold;">
							 ${reg.h_nHome } 
						</h3>
						<p style="margin-top: 8px; font-size: 13px;">
						  <i class="fa fa-shield"></i>&nbsp;위치 : ${reg.h_Addr1 }</p>
						<p style="margin-top: 8px; font-size: 13px;">
							<i class="fa fa-pencil"></i>&nbsp;집유형: 
							<c:if test="${reg.h_rType == 1 }">
								집전체
							</c:if> 
							<c:if test="${reg.h_rType == 2 }">
							      개인실
							</c:if>
							<c:if test="${reg.h_rType == 3 }">
							      다인실
							</c:if>
						</p>
						<p style="margin-top: 8px; font-size: 13px;">
							<i class="fa fa-star"></i>&nbsp;가격: ${reg.h_Money }
						</p>
						<p style="margin-top: 8px; font-size: 13px;">
							<i class="fa fa-pencil"></i>&nbsp;인원: ${reg.h_nPerson}
						</p>
						<!-- <input type="button" value="수정하기" id="join" class="btn" 
						style=" width: 90px; padding-left: 10px; padding-right: 10px;"> -->
						<input type="button" value="예약내역보기" data-toggle="modal" data-target="#myModal${status.count}" id="join" class="btn" 
						style=" width: 120px; padding-left: 10px; padding-right: 10px;">
						<!-- Modal -->
						<div class="modal fade" id="myModal${status.count}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						  <div class="modal-dialog" style="margin-top: 100px">
						    <div class="modal-content">
						      <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						        <h4 class="modal-title" id="myModalLabel">예약 내역</h4>
						      </div>
						      <div class="modal-body">
						      	<c:forEach var="myreg" items="${list2}">
						      		<c:if test="${myreg.r_addr == reg.h_No}">
						      			<div class="com-sm-12" style="border:1px solid #adadad; margin-bottom: 20px">
										<ul style="list-style:none; padding:0px; margin:0px;">
										<li style="border-bottom:1px solid #adadad; color: #fff; text-align:center; background-color:#f94b4b;
											font-size: 16px; padding-bottom:3px; padding-top:3px;">
											<b>예약정보</b>
										</li>
										<li style="padding-bottom:3px; padding-top:3px;">
										&nbsp;&nbsp;<b>예약한 사람</b> &nbsp;&nbsp; 
										<font style="font-size: 13px;">${myreg.r_member}</font>
										</li>
										<li style="padding-bottom:3px; padding-top:3px;">
										&nbsp;&nbsp;<b>연락처</b> &nbsp;&nbsp; 
										<font style="font-size: 13px;">${myreg.tel}</font>
										</li>
										<li style="padding-bottom:3px; padding-top:3px;">
										&nbsp;&nbsp;<b>체크인 날짜</b> &nbsp;&nbsp; 
										<fmt:formatDate var="date" value="${myreg.r_start }" pattern="yy-MM-dd" />
										<font style="font-size: 13px;">${date }</font>
										</li>
										<li style="padding-bottom:3px; padding-top:3px;">
										&nbsp;&nbsp;<b>체크아웃 날짜</b> &nbsp;&nbsp; 
										<fmt:formatDate var="date1" value="${myreg.r_end }" pattern="yy-MM-dd" />
										<font style="font-size: 13px;">${date1}</font>
										</li>
										<li style="padding-bottom:3px; padding-top:3px;">
										&nbsp;&nbsp;<b>가격</b> &nbsp;&nbsp; 
										<font style="font-size: 13px;">${myreg.r_money }</font>
										</li>
										<li style="padding-bottom:3px; padding-top:3px;">
										&nbsp;&nbsp;<b>인원</b> &nbsp;&nbsp; 
										<font style="font-size: 13px;">${myreg.r_person}</font>
										</li>
										</ul>
									</div>
						      		</c:if>
						      	</c:forEach>
						      	
								
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						      </div>
						    </div>
						  </div>
						</div>
					</div>
					</div>
				<c:if test="${status.count % 2 == 0 || status.last}">
					<div class="clearfix"></div>
					</div>
				</c:if>
			</c:forEach> 

   			<hr style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;" />
              <div>
				<h4 class="blog_head" align="left">
					<b>게시판 등록내역</b>
				</h4>
				<hr style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;">
			</div> 
			
			<!-- 게시판 등록 내역 -->

	<div class="list-group panel panel-default" style="border: 0">	
				<div class="row mhide panel-heading" style="margin:0px;">
					
					<div class="col-sm-1" style="font-weight: 600">번호</div>
					<div class="col-sm-8 col-xs-10" style="font-weight: 600">제목</div>
					<div class="col-sm-2" style="font-weight: 600">작성일</div>
				
				</div>
								
				 <!-- 회원목록 -->
				<c:forEach var="dto" items="${mlist }" varStatus="status">
				<div class="row list-group-item" style="margin:0px;">
					<!-- <img src="images/ico-list-notice.gif"> -->
					<span class="col-sm-1">${dto.num }</span>
					<span class="col-sm-8 col-xs-10" style="text-align:left;">
					  <i></i>
					  <a href="board_content.do?b_no=${dto.b_no}&page=-1">
					  ${dto.b_title }</a>
					  <c:if test="${today==dto.dbday }">
					  <sup><img src="images/neo_new.gif"></sup>
					  </c:if>
					</span>
									
					<span class="col-sm-2 mhide date">${dto.dbday }</span>
			
				</div>
				</c:forEach> 
				
			</div>	
		<hr style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;" />
			<%-- <div>
				<h4 class="blog_head" align="left">
					<b>예약목록</b>
					<input type=hidden name="raddr" id="raddr" value="${dto2.h_No }">
				</h4>
				<hr style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;">
			</div>
				<hr style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;">
			</div>
			
			<c:forEach var="myreg" items="${list2}" varStatus="status">
				<c:if test="${status.count % 2 == 1}">
					<div style=" margin-bottom: 3%;">
				</c:if>
					<div class="col-sm-6">
					<div class="col-sm-6">	
							<img src="upload/${myreg.image}" class="" alt="" style="width: 200px; height: 140px;">
					</div>
					<div class="col-sm-6">
						<h3 style="font-size: 18px; font-weight: bold;">
							 ${myreg.h_nHome } 
						</h3>
						<p style="margin-top: 8px; font-size: 13px;">
						  <i class="fa fa-shield"></i>&nbsp;예약번호 : ${myreg.r_addr }</p>
						<p style="margin-top: 8px; font-size: 13px;">
							<i class="fa fa-pencil"></i>&nbsp;예약시작: ${myreg.r_start }							
						</p>
						<p style="margin-top: 8px; font-size: 13px;">
							<i class="fa fa-pencil"></i>&nbsp;예약마감: ${myreg.r_end }							
						</p>
						<p style="margin-top: 8px; font-size: 13px;">
							<i class="fa fa-star"></i>&nbsp;가격: ${myreg.r_money }
						</p>
						<p style="margin-top: 8px; font-size: 13px;">
							<i class="fa fa-pencil"></i>&nbsp;인원: ${myreg.r_person }
						</p>
						<input type="button" value="수정하기" id="join" class="btn" 
						style=" width: 74px; padding-left: 10px; padding-right: 10px;">
						<input type="button" value="삭제기하" id="join" class="btn" 
						style=" width: 74px; padding-left: 10px; padding-right: 10px;">
					</div>
					</div>
				<c:if test="${status.count % 2 == 0}">
					<div class="clearfix"></div>
					</div>
				</c:if>
			</c:forEach>  --%>
<!--이전 주석 -->

			<!-- <div style=" margin-bottom: 3%;">
			<div class="col-sm-6">
				<div class="row">
					<div class="col-sm-6">	
							<img src="images/90.jpg" class="" alt="" style="width: 200px; height: 140px;">
					</div>
					<div class="col-sm-6">
						<h3 style="font-size: 18px; font-weight: bold;">
							헬로
						</h3>
						<p style="margin-top: 8px; font-size: 13px;">
						  <i class="fa fa-shield"></i>&nbsp;위치 : 광주광역시 광산구</p>
						<p style="margin-top: 8px; font-size: 13px;">
							<i class="fa fa-pencil"></i>&nbsp;집유형: 개인실
						</p>
						<p style="margin-top: 8px; font-size: 13px;">
							<i class="fa fa-star"></i>&nbsp;가격: 61500
						</p>
						<p style="margin-top: 8px; font-size: 13px;">
							<i class="fa fa-pencil"></i>&nbsp;인원: 1
						</p>
						<input type="button" value="수정하기" id="join" class="btn" 
						style=" width: 74px; padding-left: 10px; padding-right: 10px;">
						<input type="button" value="삭제하기" id="join" class="btn" 
						style=" width: 74px; padding-left: 10px; padding-right: 10px;">
						
					</div>
				</div> 
			</div>
			<div class="col-sm-6">
				<div class="row">
					<div class="col-sm-6">	
							<img src="images/91.jpg" class="" alt="" style="width: 200px; height: 140px;">
					</div>
					<div class="col-sm-6">
						<h3 style="font-size: 18px; font-weight: bold;">
							순이네집
						</h3>
						<p style="margin-top: 8px; font-size: 13px;">
						   <i class="fa fa-shield"></i>&nbsp;위치 : 인천광역시 연수구 송도동</p>
						<p style="margin-top: 8px; font-size: 13px;">
							<i class="fa fa-pencil"></i>&nbsp;집유형: 통나무집
						</p>
						<p style="margin-top: 8px; font-size: 13px;">
							<i class="fa fa-star"></i>&nbsp;가격: 84000
						</p>
						<p style="margin-top: 8px; font-size: 13px;">
							<i class="fa fa-pencil"></i>&nbsp;인원: 3
						</p>
						<input type="button" value="수정하기" id="join" class="btn" 
						style=" width: 74px; padding-left: 10px; padding-right: 10px;">
						<input type="button" value="삭제하기" id="join" class="btn" 
						style=" width: 74px; padding-left: 10px; padding-right: 10px;">
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
			</div> -->
			
			<!-- <div style=" margin-bottom: 3%;">
			<div class="col-sm-6">
				<div class="row">
					<div class="col-sm-6">	
							<img src="images/92.jpg" class="" alt="" style="width: 200px; height: 140px;">
					</div>
					<div class="col-sm-6">
						<h3 style="font-size: 18px; font-weight: bold;">
							재민이네
						</h3>
						<p style="margin-top: 8px; font-size: 13px;">
						    <i class="fa fa-shield"></i>&nbsp;위치 : 부산광역시 해운대</p>
						<p style="margin-top: 8px; font-size: 13px;">
							<i class="fa fa-pencil"></i>&nbsp;집유형: 다목적실
						</p>
						<p style="margin-top: 8px; font-size: 13px;">
							<i class="fa fa-star"></i>&nbsp;가격: 90040
						</p>
						<p style="margin-top: 8px; font-size: 13px;">
							<i class="fa fa-pencil"></i>&nbsp;인원: 4
						</p>
						<input type="button" value="수정하기" id="join" class="btn" 
						style=" width: 74px; padding-left: 10px; padding-right: 10px;">
						<input type="button" value="삭제하기" id="join" class="btn" 
						style=" width: 74px; padding-left: 10px; padding-right: 10px;">
					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="row">
					<div class="col-sm-6">	
							<img src="images/93.jpg" class="" alt="" style="width: 200px; height: 140px;">
					</div>
					<div class="col-sm-6">
						<h3 style="font-size: 18px; font-weight: bold;">
							향랄이네
						</h3>
						<p style="margin-top: 8px; font-size: 13px;">
						    <i class="fa fa-shield"></i>&nbsp;위치 : 경기도 김포시 장어</p>
						<p style="margin-top: 8px; font-size: 13px;">
							<i class="fa fa-tint"></i>&nbsp;집유형: 단독주택
						</p>
						<p style="margin-top: 8px; font-size: 13px;">
							<i class="fa fa-star"></i>&nbsp;가격: 345900
						</p>
						<p style="margin-top: 8px; font-size: 13px;">
							<i class="fa fa-pencil"></i>&nbsp;인원: 8
						</p>
						<input type="button" value="수정하기" id="join" class="btn" 
						style=" width: 74px; padding-left: 10px; padding-right: 10px;">
						<input type="button" value="삭제하기" id="join" class="btn" 
						style=" width: 74px; padding-left: 10px; padding-right: 10px;">
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
			</div> -->
			
		</div>
		
     </div>
      
	</div>