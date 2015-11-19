<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="about_top">
    <div class="container">
    	<div>
			<ul>
				<li class="siteline"><img src="images/homelink.png"
					style="vertical-align: top;"> 예약 내역</li>
			</ul>
		</div>
        <div class="about">
			<div>
				<h4 class="blog_head" align="left">
					<b>예약한 목록</b>
				</h4>
				<hr style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;">
			</div>
			
			<c:forEach var="res" items="${list}" varStatus="status">
				<c:if test="${status.count % 2 == 1}">
					<div style=" margin-bottom: 3%;">
				</c:if>
				
				
					<div class="col-sm-6">
					<div class="col-sm-6">	
					
							 <img src="upload/${res.image}" class="" alt="" style="width: 200px; height: 140px;">
							 
					</div>
					<div class="col-sm-6">
						<h3 style="font-size: 18px; font-weight: bold;">
							 ${res.houseName} 
						</h3>
						<p style="margin-top: 8px; font-size: 13px;">
						  <i class="fa fa-shield"></i>&nbsp;위치 : ${res.houseAddr}</p>
						<p style="margin-top: 8px; font-size: 13px;">
							<i class="fa fa-pencil"></i>&nbsp;예약자: ${res.r_member} 
							<%-- <c:if test="${res.h_rType == 1 }">
								집전체
							</c:if> 
							<c:if test="${reg.h_rType == 2 }">
							      개인실
							</c:if>
							<c:if test="${reg.h_rType == 3 }">
							      다인실
							</c:if> --%>
						</p>
						<p style="margin-top: 8px; font-size: 13px;">
							<i class="fa fa-star"></i>&nbsp;체크인: 
							<fmt:formatDate var="date" value="${res.r_start}"
										pattern="yy-MM-dd" />${date}
						</p>
						<p style="margin-top: 8px; font-size: 13px;">
							<i class="fa fa-star"></i>&nbsp;체크아웃: 
							<fmt:formatDate var="date1" value="${res.r_end}"
										pattern="yy-MM-dd" />${date1}
						</p>
						<p style="margin-top: 8px; font-size: 13px;">
							<i class="fa fa-star"></i>&nbsp;가격: ${res.r_money }
						</p>
						<p style="margin-top: 8px; font-size: 13px;">
							<i class="fa fa-pencil"></i>&nbsp;인원: ${res.r_person }
						</p>
						<!-- <input type="button" value="수정하기" id="join" class="btn" 
						style=" width: 74px; padding-left: 10px; padding-right: 10px;"> -->
						<!-- <input type="button" value="예약취소" id="join" class="btn" 
						style=" width: 74px; padding-left: 10px; padding-right: 10px;"> -->
					</div>
					</div>
				<c:if test="${status.count % 2 == 0}">
					<div class="clearfix"></div>
					</div>
				</c:if>
				
			</c:forEach> 
			
			
			
			
			<!-- 
			<div style=" margin-bottom: 3%;">
			
			
			</div>
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
			</div>
			 -->
		</div>
		
     </div>
      
	</div>