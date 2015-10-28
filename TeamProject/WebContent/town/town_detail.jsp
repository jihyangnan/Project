<%@page import="com.nizipnezip.town.dao.TownDetailIntroFoodDTO"%>
<%@page import="com.nizipnezip.town.dao.TownDetailIntroShoppingDTO"%>
<%@page import="com.nizipnezip.town.dao.TownDetailIntroLeportsDTO"%>
<%@page import="com.nizipnezip.town.dao.TownDetailIntroCourseDTO"%>
<%@page import="com.nizipnezip.town.dao.TownDetailIntroFestivalDTO"%>
<%@page import="com.nizipnezip.town.dao.TownDetailIntroCultureDTO"%>
<%@page import="com.nizipnezip.town.dao.TownDetailIntroTourSpotDTO"%>
<%@page import="com.nizipnezip.town.dao.TownDetailCommonDTO"%>
<%@page import="com.nizipnezip.town.dao.TownDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%
	String contentId = "126508";
	String contentType = "12";
	request.setAttribute("contentId", contentId);
	request.setAttribute("contentType", contentType);
	
	TownDetailCommonDTO common = TownDAO.getTownDetailCommon(contentId, contentType);
	request.setAttribute("common", common);
	
	if(contentType.equals("12")){ 			// 관광지
		TownDetailIntroTourSpotDTO spot = TownDAO.getTownDetailIntroTourSpot(contentId, contentType);
		request.setAttribute("spot", spot);
	} else if(contentType.equals("14")){	// 문화시설
		TownDetailIntroCultureDTO culture = TownDAO.getTownDetailIntroCulture(contentId, contentType);
		request.setAttribute("culture", culture);
	} else if(contentType.equals("15")){	// 행사/공연/축제
		TownDetailIntroFestivalDTO festival = TownDAO.getTownDetailIntroFestival(contentId, contentType);
		request.setAttribute("festival", festival);
	} else if(contentType.equals("25")){	// 여행코스
		TownDetailIntroCourseDTO course = TownDAO.getTownDetailIntroCourse(contentId, contentType);
		request.setAttribute("course", course);
	} else if(contentType.equals("28")){	// 레포츠
		TownDetailIntroLeportsDTO leports = TownDAO.getTownDetailIntroLeports(contentId, contentType);
		request.setAttribute("leports", leports);
	} else if(contentType.equals("38")){	// 쇼핑
		TownDetailIntroShoppingDTO shopping = TownDAO.getTownDetailIntroShopping(contentId, contentType);
		request.setAttribute("shopping", shopping);
	} else if(contentType.equals("39")){	// 음식점
		TownDetailIntroFoodDTO food = TownDAO.getTownDetailIntroFood(contentId, contentType);
		request.setAttribute("food", food);
	}
	
	
%>    
<div class="about_top">
	<div class="container">
		<div style="margin-top: 20px;">
			<div style="float: right; margin-right: 50px;">
				<img src="images/sogae.jpg" style="float: right; width: 80%; margin-right: -10px;">
			</div>

			<div>
				<div   style="border: 1px #CFC7D6; margin-top: 20px;border-radius: 10px;">
					<p style="border-bottom: 2p border-color: gray;">
						<span style="font-size: 35px;padding-right: 5%;">${common.title}</span>
					</p>
					<hr style="margin-top: 30px; margin-bottom: 30px; border: 0; border-top: 1px solid #dce0e0;">

					<div class="col-md-6">
						<!-- <ul style="list-style: none; margin-top: 10px;">

							<li style="padding-bottom: 1%; padding-top: 1%; ">
							       <i class="fa fa-check">
									조회수 30 </i> 작성일 2015-10-12</li>
							<li style="padding-bottom: 1%; padding-top: 1%;"><i class="fa fa-map-marker">경상북도
									경주시 진현동 위치,</i></li>
							<li style="padding-bottom: 1%; padding-top: 1%;">
							대한불교 조계종 제 11교구 본사, 사진 및 영상 제공.</li>
							<input type="submit" id="join" class="btn" value="여기로 놀러가기" style="margin-left: 70%; margin-bottom: 2%;">
							<div>
								<div id="map" style="width: 100%; height: 500px;"></div>

								<script type="text/javascript"
									src="//apis.daum.net/maps/maps3.js?apikey=37aec586afb9fc326be8b882a49c024d&libraries=services"></script>


								<script>
									var mapContainer = document
											.getElementById('map'), // 지도를 표시할 div 
									mapOption = {
										center : new daum.maps.LatLng(
												33.450701, 126.570667), // 지도의 중심좌표
										level : 3
									// 지도의 확대 레벨
									};

									var map = new daum.maps.Map(mapContainer,
											mapOption); // 지도를 생성합니다

									// 마커가 표시될 위치입니다 
									var markerPosition = new daum.maps.LatLng(
											33.450701, 126.570667);

									// 마커를 생성합니다
									var marker = new daum.maps.Marker({
										position : markerPosition
									});

									// 마커가 지도 위에 표시되도록 설정합니다
									marker.setMap(map);

									// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
									// marker.setMap(null);
								</script>
							</div>
						</ul> -->
						<div class="row" id="myTab">


							<ul class="nav nav-tabs nav-justified" role="tablist">
								<li role="presentation" class="active"><a href="#basicInfo"
									aria-controls="basicInfo" role="tab" data-toggle="tab">기본정보</a></li>
								<li role="presentation"><a href="#userInfo"
									aria-controls="userInfo" role="tab" data-toggle="tab">이용안내</a></li>
								<li role="presentation"><a href="#detailInfo"
									aria-controls="detailInfo" role="tab" data-toggle="tab">상세정보</a></li>
							</ul>

							<!-- Tab panes -->
							<div class="tab-content" style="padding: 10px">
								<ul role="tabpanel" class="tab-pane fade in active" id="basicInfo">
								<c:if test="${not empty common.addr1 }">
									<li class="row" style="margin-bottom: 10px">
										<span class="col-sm-3">주소:</span> 
										<span class="col-sm-9">${common.addr1} ${common.addr2}</span>
									</li>
								</c:if>
								<c:if test="${not empty common.zipcode }">
									<li class="row" style="margin-bottom: 10px">
										<span class="col-sm-3">우편번호:</span> 
										<span class="col-sm-9">${common.zipcode}</span>
									</li>
								</c:if>
								<c:if test="${not empty common.telName }">
									<li class="row" style="margin-bottom: 10px">
										<span class="col-sm-3">전화명:</span> 
										<span class="col-sm-9">${common.telName}</span>
									</li>
								</c:if>
								<c:if test="${not empty common.tel }">
									<li class="row" style="margin-bottom: 10px">
										<span class="col-sm-3">전화번호:</span> 
										<span class="col-sm-9">${common.tel}</span>
									</li>
								</c:if>
								<c:if test="${not empty common.homepage }">
									<li class="row" style="margin-bottom: 10px">
										<span class="col-sm-3">홈페이지:</span> 
										<span class="col-sm-9">${common.homepage}</span>
									</li>
								</c:if>
								</ul>
								<ul role="tabpanel" class="tab-pane fade" id="userInfo">
								<c:if test="${contentType == '12' }">
									<jsp:include page="town_detail_spot.jsp"></jsp:include>
								</c:if>	
								<c:if test="${contentType == '14' }">
								
								</c:if>	
								<c:if test="${contentType == '15' }">
								
								</c:if>	
								<c:if test="${contentType == '25' }">
								
								</c:if>	
								<c:if test="${contentType == '28' }">
								
								</c:if>	
								<c:if test="${contentType == '38' }">
								
								</c:if>	
								<c:if test="${contentType == '39' }">
								
								</c:if>	
								</ul>
								<div role="tabpanel" class="tab-pane fade" id="detailInfo">...</div>
							</div>


						</div>
						<script>
							$('#myTab a').click(function (e) {
								e.preventDefault();
								$(this).tab('show');
							}); 
						</script>
						<div class="row">
							
						
						</div>
					</div>

					<div class="col-md-6 service_box" style="padding-left: 9%;">

						<a href="index.jsp?page=town/town.jsp"> <input type="submit"
							id="join" class="btn" value="목록 보기" style="margin-left: 90%;">
						</a>

						<div class="sp-slideshow" style="height: 320px; width: 470px;">

							<input id="button-1" type="radio" name="radio-set"
								class="sp-selector-1" checked="checked"> <label
								for="button-1" class="button-label-1"></label> <input
								id="button-2" type="radio" name="radio-set"
								class="sp-selector-2"> <label for="button-2"
								class="button-label-2"></label> <input id="button-3"
								type="radio" name="radio-set" class="sp-selector-3"> <label
								for="button-3" class="button-label-3"></label> <input
								id="button-4" type="radio" name="radio-set"
								class="sp-selector-4"> <label for="button-4"
								class="button-label-4"></label> <input id="button-5"
								type="radio" name="radio-set" class="sp-selector-5"> <label
								for="button-5" class="button-label-5"></label> <label
								for="button-1" class="sp-arrow sp-a1"></label> <label
								for="button-2" class="sp-arrow sp-a2"></label> <label
								for="button-3" class="sp-arrow sp-a3"></label> <label
								for="button-4" class="sp-arrow sp-a4"></label> <label
								for="button-5" class="sp-arrow sp-a5"></label>

							<div class="sp-content">
								<div class="sp-parallax-bg"></div>
								<ul class="sp-slider clearfix">
									<li style="padding-left: 10px; padding-right: 10px;">
									<img src="images/bool.jpg" alt="image02"
										style="height: 330px; width: 380px;"></li>
									<li style="padding-left: 10px; padding-right: 10px;">
									<img src="images/bool2.jpg" alt="image02"
										style="height: 330px; width: 380px;"></li>
									<li style="padding-left: 10px; padding-right: 10px;">
									<img src="images/bool3.jpg" alt="image02"
										style="height: 330px; width: 380px;"></li>
									<li style="padding-left: 10px; padding-right: 10px;">
									<img src="images/bool4.jpg" alt="image02"
										style="height: 330px; width: 380px;"></li>
									<li style="padding-left: 10px; padding-right: 10px;">
									<img src="images/bool5.jpg" alt="image02"
										style="height: 330px; width: 380px;"></li>
								</ul>
							</div>
							<!-- sp-content -->

						</div>
						<h3 style="color: #999;">경주의 꽃 , 불국사</h3>
						<hr
							style="margin-top: 30px; border: 0; border-top: 1px solid #dce0e0;">

						<p>대한불교조계종 11교구본사의 하나로 그 경내는 2009년 12월 21일에 사적 제502호로 지정되었으며
							1995년 세계문화유산목록에 등록되었다.</p>
						<p>불국사 창건에 대하여는 두 가지 설이 전한다. 그 중 하나는 《불국사고금창기》로, 여기에 보면
							528년(신라 법흥왕 15) 법흥왕의 어머니 영제부인의 발원으로</p>
						<p>불국사를 창건하여 574년 진흥왕의 어머니인 지소부인이 절을 크게 중건하면서 비로자나불과 아미타불을
							주조하게 하여 봉안하였고,</p>

					</div>
					<div class="clearfix"></div>
				</div>
          </div>
	 </div>
	</div>
</div>