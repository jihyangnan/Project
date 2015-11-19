<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<script src="js/jquery.form.min.js"></script>
<script>
$(document).ready(function(){
	var t = new Date();
	var yy = t.getFullYear();
	var mm = t.getMonth()+1;
	var dd = t.getDate();
	$('.startDt').datepicker({
		format: 'yy/mm/dd',
		startDate: yy + "/" + mm + "/" + dd,
		autoclose: true,
		language: 'kr'
	}).on('changeDate', function(e){
		var start = $('.startDt').datepicker('getDate');
		var end = $('.endDt').datepicker('getDate');
		$('.endDt').datepicker('setStartDate', start);
		if(start > end){
			$('.endDt').datepicker('setDate', $('.startDt').datepicker('getDate'));
		}
		$('.endDt').removeAttr('disabled'); 
	});
	
	$('.endDt').datepicker({
		format: 'yy/mm/dd',
		autoclose: true,
		language: 'kr'
	}).on('changeDate', function(e){
	});
});
</script>
<script type="text/javascript">
var i=0;

	$(function() {
		/* $('#reviewBtn').click(function() {
			var re_Content = $('#review_content').val();
			if (re_Content == "") {
				alert("후기를 입력하세요");
				$('#review_content').focus();
				return;
			}
			$('#re_new_frm').submit();
		}); */
		
		
		 $('#re_new_frm').ajaxForm({
 			//보내기전 validation check가 필요할경우
 			beforeSubmit : function(data, frm, opt) {
 				var re_Content = $('#review_content').val().trim();
 				if (re_Content == "") {
 					alert("후기를 입력하세요");
 					$('#review_content').focus();
 					return false;
 				}
 				return true;
 			}, 
 			//submit이후의 처리
 			success : function(data, statusText) {
 				//console.log(data);
 				$('#reviewList').html(data);
 				$('#review_content').val(null);
 			},
 			//ajax error
 			error : function(e) {
 				alert("댓글입력 중 에러발생!!");
 				console.log(e);
 			}
 		}); 
		
		
	});
</script>
<!-- <script>
$(function(){
	$('#reser').click(function(){
		if('${rd.r_addr}'=='#raddr')
			{
			alert("예약이 마감된 날짜입니다");
			return false;
			}		
	});
});
</script>  -->
<!-- <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script> -->
<div class="about_top detail">
		<div class="container" style="margin: 400;">
			<div class="jumbotron">
				<div class="row">
					<%-- <div class="sp-slideshow">
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
								<li><img src="upload/${dto.image}" alt="image01"></li> 
							</ul>
						</div>
						<!-- sp-content -->

					</div> --%>


				<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
					<c:forEach items="${photoList}" varStatus="status">
						<c:if test="${status.first}">
							<ol class="carousel-indicators">
						</c:if>
							<li data-target="#carousel-example-generic" data-slide-to="${status.index}"></li>
						<c:if test="${status.last}">
							</ol>
						</c:if>
					</c:forEach>
					
					<c:forEach var="photo" items="${photoList}" varStatus="status">
						<c:if test="${status.first}">
							<div class="carousel-inner" role="listbox">
							<div class="item active">
							<img src="upload/${photo}" alt="" class="img-responsive" style="width: 100%; max-height: 500px" />
								<div class="carousel-caption"></div>
							</div>
						</c:if>
						<c:if test="${not status.first}">
							<div class="item ">
							<img src="upload/${photo}" alt="" class="img-responsive" style="width: 100%; max-height: 500px"/>
								<div class="carousel-caption"></div>
							</div>
						</c:if>
						<c:if test="${status.last}">
							</div>
						</c:if>
					</c:forEach>
				

					<!-- Controls -->
					<a class="left carousel-control" href="#carousel-example-generic"
						role="button" data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#carousel-example-generic"
						role="button" data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>



				<h2 class="col-sm-8 col-sm-offset-1" style="color: #82888a; margin-top:20px; font-weight: bold">${dto.h_nHome}</h2><div class="col-sm-2"></div><div class="clearfix"></div>
						<div class="col-sm-8 col-sm-offset-1" style="font-size: 10pt; color: #f08080;padding-top: 10px">${dto.h_Addr1}</div>
				</div>
				<br> <br>
				<div class="row">
					<span class="col-md-3"
						style="padding-left:20px; font-size: 15pt; color: #82888a; font-weight:bold; margin-bottom: 10px">
						상세설명</span>
				</div>
				<pre style="padding: 30px; font-size: 10pt;">${dto.h_hContent}</pre>
				<div>
					<hr
						style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;" />
				</div>
				<div class="row">
					<div>
						<div class="row">
							<div class="col-md-3 text-muted">
								<span
									style="position: relative; min-height: 1px; padding-left:15px; padding-right: 12.5px; font-weight: bold">숙소</span>
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
										<div>
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
									style="position: relative; min-height: 1px; padding-left:15px; padding-right: 12.5px; font-weight: bold">시설</span>
							</div>							
							<div class="col-md-9">
								<div class="row">
								<c:forEach var="flist" items="${flist}">
								<div class="col-md-6">
								<c:if test="${flist.c_hsNo==1 }">
									<span>TV</span>
								</c:if>
								<c:if test="${flist.c_hsNo==2 }">
									<span>인터넷</span>
								</c:if>
								<c:if test="${flist.c_hsNo==3 }">
									<span data-tooltip-text="숙소 안의 중앙 난방 또는 히터">난방</span>
								</c:if>
								<c:if test="${flist.c_hsNo==4 }">
									<span data-tooltip-text="수건, 침대시트, 비누, 화장지">필수품목</span>
								</c:if>
								<c:if test="${flist.c_hsNo==5 }">
									<span>케이블 TV</span>
								</c:if>
								<c:if test="${flist.c_hsNo==6 }">
									<span>에어콘</span>
								</c:if>
								<c:if test="${flist.c_hsNo==7 }">
									<span data-tooltip-text="게스트가 이용 가능한 부엌">부엌</span>
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
								<c:if test="${flist.c_hsNo==29 }">
									<span>일산화탄소 탐지기</span>
								</c:if>
								<c:if test="${flist.c_hsNo==30 }">
									<span>구급 상자</span>
								</c:if>
								<c:if test="${flist.c_hsNo==31 }">
									<span>침실문 잠금장치</span>
								</c:if>
								</div>
								</c:forEach>
							</div>
							</div>
						</div>
					</div>
				</div>
				<hr style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;" />
				<div class="row react-house-rules" id="house-rules">
					<div class="col-md-3 text-muted">
						<div class="text-muted">
							<span style="font-weight: bold">숙소 이용규칙</span>
						</div>
					</div>
					<div class="col-md-9" style="padding-left: 4px">
						<div class="react-expandable expanded">
							<div class="expandable-content">
								<div>
									<span>${dto.h_Rule }</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<hr style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;" />
				
				<div id="reviewList">
			<c:forEach var="rp" items="${list}" varStatus="status">
				<div id="review" class="row review">
					<div class="col-md-3">
						<c:if test="${status.first}">
							<span style="color: #82888a; font-weight: bold;">후기</span>
						</c:if>
					</div>
					<div class="col-md-1" style="font-weight: bold; padding-left: 5px; padding-right: 0px">
						<span>${rp.re_Id }</span>
					</div>
					<div class="col-md-8">
						<div class="row">
							<div class="col-md-10">
								<div>
									<div class="review-text" style="padding-left: 10px">${rp.re_Content }</div>
								</div>
							</div>
							<div class="col-md-2">
								<div style="font-size: .9em; font-weight: bold">
									<fmt:formatDate var="date" value="${rp.re_date}"
										pattern="yyyy-MM-dd" />
									${date }
								</div>
							</div>
						</div>
						<hr
							style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;" />
					</div>
				</div>
			</c:forEach>
				</div>
			<div id="review" class="row review" style="margin-top: 20px">
				<div class="col-md-3"></div>
				<div class="review insert col-md-9" style="padding-left: 0px">
					<form method=post action="review_new_insert.do" id="re_new_frm">
						<div class="col-md-10" style="padding-left: 0px">
							<textarea class="form-control" id="review_content"
								name="review_content" style="font-size: 10pt;" placeholder="후기를 작성해주세요" rows="4"></textarea>
							<input type=hidden name=re_hNo value="${dto.h_No }"> <input
								type=hidden name=page value="${page }">
						</div>
						<div class="col-md-2">
							<input id="reviewBtn" class="btn btn-success btn-lg btn-block"
								style="height: 80px;" type="submit" value="입력" />
						</div>
					</form>
				</div>
			</div>

			<hr style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;" />
				<p></p>
				<p></p>
				<div class="row">
					<div class="col-md-3" style="color: #82888a; font-weight: bold;">가격(1박)  : </div>
					<div class="col-md-3" style="padding-left: 5px; font-weight: bold; font-size: 1.3em" >
						${dto.h_Money}원
					</div>
				</div>
				<hr style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;" />
				<p></p>

			<form method=post action="reserve_doit.do" id="re_do_frm">
				<div class="row">
					<div class="col-md-4">
						<input type="text" id="startDt" class="form-control startDt" name="resst"
							 placeholder="체크인">
					</div>
					<div class="col-md-4">
						<input type="text" id="endDt" class="form-control endDt" name="resed"
							 placeholder="체크아웃">
					</div>
					<div class="col-md-4">
						<input type=hidden name="rperson" value="${dto.h_nPerson }">
						<input type=hidden name="rmoney" value="${dto.h_Money }">
						<input type=hidden name="raddr" value="${dto.h_No }"> <input
							type=hidden name=page value="${page }"> 
							<select class="form-control" name="person" id="per">
							<c:forEach var="asd" begin="1" end="${dto.h_nPerson}">
								<option value="${asd}">${asd}명</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<hr style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;" />
				<div id="aaa">
					<input type=submit id="reser" value="예약하기" class="btn btn-success btn-lg btn-block" />
				</div>
			</form>

			<hr style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;" />
				<!-- <div id="jjj"
					style="border-color: #98fb98; text-align: center; border: 1pt; 
					border-style: ridge; height: 40px; background-color: #98fb98; color: white; line-height: 35px;">
					<a href="jjim.html">찜하기</a>
				</div> -->
			</div>
			<div class="text-right">
				<a href="reserve_list.do"><button type="button" class="btn search-btn" >목록보기</button></a>
			</div>	
		</div>
		</div>