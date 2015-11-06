<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
 <script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
var i=0;
$(function(){
	$('#reviewBtn').click(function(){
		var msg=$('#review_content').val();
		if(msg=="")
		{
			alert("후기를 입력하세요");
			$('#review_content').focus();
			return;
		}
		$('#re_new_frm').submit();
});
</script> 
<div class="about_top">
		<div class="container" style="margin: 400;">
			<div class="jumbotron">
				<div class="row">
					<div class="sp-slideshow">
						<input id="button-1" type="radio" name="radio-set"
							class="sp-selector-1" checked="checked"> <label
							for="button-1" class="button-label-1"></label> <input
							id="button-2" type="radio" name="radio-set" class="sp-selector-2">
						<label for="button-2" class="button-label-2"></label> <input
							id="button-3" type="radio" name="radio-set" class="sp-selector-3">
						<label for="button-3" class="button-label-3"></label> <input
							id="button-4" type="radio" name="radio-set" class="sp-selector-4">
						<label for="button-4" class="button-label-4"></label> <input
							id="button-5" type="radio" name="radio-set" class="sp-selector-5">
						<label for="button-5" class="button-label-5"></label> <label
							for="button-1" class="sp-arrow sp-a1"></label> <label
							for="button-2" class="sp-arrow sp-a2"></label> <label
							for="button-3" class="sp-arrow sp-a3"></label> <label
							for="button-4" class="sp-arrow sp-a4"></label> <label
							for="button-5" class="sp-arrow sp-a5"></label>

						<div class="sp-content">
							<div class="sp-parallax-bg"></div>
							<ul class="sp-slider clearfix">
							<c:forEach var="pDto" items="${plist }">
								<li><img src="${pdto.p_file }" alt="image01"></li> 
							</c:forEach>
							</ul>
						</div>
						<!-- sp-content -->

					</div>

					<h3 class="col-md-4"
						style="text-align: center; padpadding: 2px; font-size: 13pt; padding-left: 100px;">
						${dto.h_nHome}</h3>
					<span class="col-md-5"
						style="padding: 2px; font-size: 10pt; color: #f08080;">
						${dto.h_Addr1}</span> <span class="col-md-2"
						style="text-align: center; padding: 7px; font-size: 9pt; color: #778899"></span>
				</div>
				<br> <br>
				<div class="row">
					<span class="col-md-3"
						style="text-align: center; padding: 2px; font-size: 15pt; color: #778899;">
						상세설명</span>
				</div>
				<br> <br> <pre style="padding: 100px; font-size: 10pt;">
					${dto.h_hContent}</pre>
				<div>
					<hr
						style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;" />
				</div>
				<div class="row">
					<div>
						<div class="row">
							<div class="col-md-3 text-muted">
								<span
									style="position: relative; min-height: 1px; padding-left: 12.5px; padding-right: 12.5px;">숙소</span>
							</div>
							<div class="col-md-9">
								<div class="row">
									<div class="col-md-6">
										<div>
											<span data-tooltip-text="보고 계신 숙소의 집 유형입니다">집 유형 :</span> 
											<c:if test="${dto.h_Type==1}">
											<span> </span> <strong>아파트</strong>
											</c:if>
											<c:if test="${dto.h_Type==2}">
											<span> </span> <strong>단독주택</strong>
											</c:if>
											<c:if test="${dto.h_Type==3}">
											<span> </span> <strong>게스트하우스</strong>
											</c:if>
											<c:if test="${dto.h_Type==4}">
											<span> </span> <strong>통나무집</strong>
											</c:if>
											<c:if test="${dto.h_Type==5}">
											<span> </span> <strong>별장/타운하우스</strong>
											</c:if>
											<c:if test="${dto.h_Type==6}">
											<span> </span> <strong>기숙사</strong>
											</c:if>
											<c:if test="${dto.h_Type==7}">
											<span> </span> <strong>캠핑카</strong>
											</c:if>
											<c:if test="${dto.h_Type==8}">
											<span> </span> <strong>텐트</strong>
											</c:if>
											<c:if test="${dto.h_Type==9}">
											<span> </span> <strong>오두막</strong>
											</c:if>											
										</div>
										<div>
											<span data-tooltip-text="숙박 유형입니다">숙박 유형:</span> 
											<c:if test="${dto.h_rType==1}">
											<span> </span> <strong>집전체</strong>
											</c:if>
											<c:if test="${dto.h_rType==2}">
											<span> </span> <strong>개인실</strong>
											</c:if>
											<c:if test="${dto.h_rType==3}">
											<span> </span> <strong>다인실</strong>
											</c:if>
										</div>
										<div>
											<span data-tooltip-text="숙박이 가능한 인원입니다 ">숙박가능 인원:</span> 
											<span> </span> <strong>${dto.h_nPerson}명</strong>
										</div>
										<div>
											<span data-tooltip-text="침실의 갯수 입니다">침실:</span> 
											<span> </span> <strong>${dto.h_nRoom}개</strong>
										</div>
									</div>
									<div class="col-md-6">
										<div>
											<span data-tooltip-text="화장실의 갯수입니다">화장실:</span> 
											<span> </span> <strong>${dto.h_nBath}개</strong>
										</div>
										<div>
											<span data-tooltip-text="침대의 갯수입니다">침대:</span> 
											<span> </span> <strong>${dto.h_nBed}개</strong>
										</div>
										<div><!-- 체크인,체크아웃시간은 집주인과 상의해서 유동적으로 할 수 있게 -->
											<span data-tooltip-text="예약시작 날짜입니다">예약시작일:</span> 
											<span> </span> <strong>${dto.h_Startday}</strong>
										</div>
										<div>
											<span data-tooltip-text="예약마감 날짜입니다">예약마감일:</span> <span>
											</span> <strong>${dto.h_Endday}</strong>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div>
					<hr
						style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;" />
				</div>
				<div class="row">
					<div>
						<div class="row">
							<div class="col-md-3">
								<span
									style="position: relative; min-height: 1px; padding-left: 12.5px; padding-right: 12.5px;">시설</span>
							</div>							
							<div class="col-md-9">
								<div class="row">
								<div class="col-md-6">
								<c:forEach var="flist" items="${ flist}">
								<div>
								<c:if test="${flist.c_hsNo==1 }">
									<span data-tooltip-text="수건, 침대시트, 비누, 화장지">필수품목</span>
								</c:if>
								<c:if test="${flist.c_hsNo==2 }">
									<span>TV</span>
								</c:if>
								<c:if test="${flist.c_hsNo==3 }">
									<span>케이블 TV</span>
								</c:if>
								<c:if test="${flist.c_hsNo==4 }">
									<span>에어콘</span>
								</c:if>
								<c:if test="${flist.c_hsNo==5 }">
									<span data-tooltip-text="숙소 안의 중앙 난방 또는 히터">난방</span>
								</c:if>
								<c:if test="${flist.c_hsNo==6 }">
									<span data-tooltip-text="게스트가 이용 가능한 부엌">부엌</span>
								</c:if>
								<c:if test="${flist.c_hsNo==7 }">
									<span>인터넷</span>
								</c:if>
								<c:if test="${flist.c_hsNo==8 }">
									<span data-tooltip-text="숙소 내 인터넷 이용">무선 인터넷</span>
								</c:if>
								<c:if test="${flist.c_hsNo==9 }">
									<span>욕조</span>
								</c:if>
								<c:if test="${flist.c_hsNo==10 }">
									<span data-tooltip-text="빌딩 내 유/무료">세탁기</span>
								</c:if>
								<c:if test="${flist.c_hsNo==11 }">
									<span data-tooltip-text="전용 또는 공용">수영장</span>
								</c:if>
								<c:if test="${flist.c_hsNo==12 }">
									<span data-tooltip-text="빌딩 내 유/무료">건조기</span>
								</c:if>
								<c:if test="${flist.c_hsNo==13 }">
									<span data-tooltip-text="아침식사 제공">아침식사</span>
								</c:if>
								<c:if test="${flist.c_hsNo==14 }">
									<span data-tooltip-text="무료, 건물 안이나 주변">무료주차포함</span>
								</c:if>
								<c:if test="${flist.c_hsNo==15 }">
									<span>무료 헬스장</span>
								</c:if>
								<c:if test="${flist.c_hsNo==16 }">
									<span>엘리베이터</span>
								</c:if>
								<c:if test="${flist.c_hsNo==17 }">
									<span>실내 벽난로</span>
								</c:if>
								<c:if test="${flist.c_hsNo==18 }">
									<span>초인종/인터폰</span>
								</c:if>
								<c:if test="${flist.c_hsNo==19 }">
									<span>도어맨</span>
								</c:if>								
								<c:if test="${flist.c_hsNo==20 }">
									<span>샴푸</span>
								</c:if>
								<c:if test="${flist.c_hsNo==21 }">
									<span>가족/어린이 환영</span>
								</c:if>
								<c:if test="${flist.c_hsNo==22 }">
									<span>흡연가능</span>
								</c:if>
								<c:if test="${flist.c_hsNo==23 }">
									<span data-tooltip-text="25명 이상의 그룹을 수용할 수 있는 숙소입니다.">이벤트/행사 가능</span>
								</c:if>
								<c:if test="${flist.c_hsNo==24 }">
									<span>애완동물 입실 가능</span>
								</c:if>
								<c:if test="${flist.c_hsNo==25 }">
									<span>애완/반려동물 키우고 있음</span>
								</c:if>
								<c:if test="${flist.c_hsNo==26 }">
									<span data-tooltip-text="휠체어 접근이 용이한 숙소입니다. 기타 개인적인 필요사항은 게스트와 호스트가 서로 협의해야 합니다.">휠체어 사용가능</span>
								</c:if>
								<c:if test="${flist.c_hsNo==27 }">
									<span>화재 감지기</span>
								</c:if>
								<c:if test="${flist.c_hsNo==28 }">
									<span>소화기</span>
								</c:if>
								<c:if test="${flist.c_hsNo==28 }">
									<span>일산화탄소 탐지기</span>
								</c:if>
								<c:if test="${flist.c_hsNo==28 }">
									<span>구급 상자</span>
								</c:if>
								<c:if test="${flist.c_hsNo==28 }">
									<span>침실문 잠금장치</span>
								</c:if>
								</div>
								</c:forEach>
								</div>
							</div>
							</div>
						</div>
					</div>
				</div>
				<hr style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;" />
				<div class="row react-house-rules" id="house-rules">
					<div class="col-md-3 text-muted">
						<div class="text-muted">
							<span>숙소 이용규칙</span>
						</div>
					</div>
					<div class="col-md-9">
						<div class="react-expandable expanded">
							<div class="expandable-content">
								<div>
									<span>숙소내에서는 담배를 피우거나 소란스럽게 해도 됩니다.</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<hr style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;" />
				<div style="text-align: center; font-size: 15pt;font-style: oblique;"> 후기 </div>
				<hr style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;" />
				
				
				<c:forEach var="rp" items="${list }">
					<div id="review" class="row review">			
				<div class="col-md-3" style="padding-top: 50px;">
						<span></span>
				</div>
				<div class="col-md-9">
							<div class="row">
								<div class="col-md-3">
									<div class="name">
										<span>${rp.re_id }</span>
									</div>
								</div>
								<div class="col-md-9" style="padding-top: 35px;">
									<div>
										<div class="review-text">${rp.re_content }</div>
									</div>
								</div>
							</div>
							<hr style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;" />
				</div>		
				</div>
				
				
				<div id="review" class="row review">			
				<div class="col-md-3" style="padding-top: 50px;">
				</div>		
				<div class="review insert col-md-9">
					<form method=post action="review_new_insert.do" id="re_new_frm">
						<div class="col-md-3">
								<span>아이디</span>
						</div>
						<div class="col-md-9" style="padding-top: 35px;"> 
						<textarea id="review_content"name="review_content" onclick="if(this.value==this.defaultValue){this.value=''}"
								onblur="if (this.value == '') { this.value = this.defaultValue; }"
								style="width: 430px; height: 50px; font-size: 10pt;">후기를 작성해주세요</textarea>
						<input type=hidden name=re_hno value="${dto.h_No }">
         				<input type=hidden name=page value="${page }">				
						<input id="reviewBtn" type="button" value="후기 입력" style="width: 80px; height: 50px; font-size: 9pt; color: #f08080;">
						</div>		
						</form>				
				</div>	
				
			</div>
			</c:forEach>
				<hr style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;" />
				<p></p>
				<hr style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;" />
				<p></p>
				<div class="row"
					style="width: 1020px; margin-left: 4px; border-color: #98fb98; border: 1pt; border-style: ridge; height: 40px; background-color: #98fb98; color: black; line-height: 35px;">
					<span class="col-md-3" style="font-size: 12pt; text-align: right;">가격  : </span>
					<span class="col-md-7" style="padding-left:-30px; font-size: 12pt; text-align: left;">${dto.h_Money }원</span>
					<span class="col-md-2" style="font-size: 12pt;">1박</span>
				</div>
				<hr style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;" />
				<p></p>
				<div class="row">
					<div class="col-md-4">
					<input type="text" class="form-control datepicker" placeholder="체크인">
					</div> 
					<div class="col-md-4">
					<input type="text" class="form-control datepicker" placeholder="체크아웃">
					</div>
					 <div class="col-md-4">
					 <select class="form-control">
					        <option>1</option>
					        <option>2</option>
					        <option>3</option>
					        <option>4</option>
					        <option>5</option>
					        <option>6</option>
					        <option>7</option>
					      </select></div>
				</div>
				<hr style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;" />
				<div id="aaa"
					style="border-color: #98fb98; text-align: center; border: 1pt; border-style: ridge; height: 40px; background-color: #98fb98; color: white; line-height: 35px;">
					<a href="reserve.html">예약요청</a>
				</div>
				<hr style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;" />
				<div id="jjj"
					style="border-color: #98fb98; text-align: center; border: 1pt; border-style: ridge; height: 40px; background-color: #98fb98; color: white; line-height: 35px;">
					<a href="jjim.html">찜하기</a>
				</div>
				<hr style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;" />
			</div>
			<div class="row text-right">
				<a href="reserve_list.do"><button type="button" class="btn search-btn" >목록보기</button></a>
			</div>	
		</div>
		</div>