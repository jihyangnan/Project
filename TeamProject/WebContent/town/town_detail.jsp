<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
									<jsp:include page="town_detail_culture.jsp"></jsp:include>
								</c:if>	
								<c:if test="${contentType == '15' }">
									<jsp:include page="town_detail_festival.jsp"></jsp:include>
								</c:if>	
								<c:if test="${contentType == '25' }">
									<jsp:include page="town_detail_course.jsp"></jsp:include>
								</c:if>	
								<c:if test="${contentType == '28' }">
									<jsp:include page="town_detail_leports.jsp"></jsp:include>
								</c:if>	
								<c:if test="${contentType == '38' }">
									<jsp:include page="town_detail_shopping.jsp"></jsp:include>
								</c:if>	
								<c:if test="${contentType == '39' }">
									<jsp:include page="town_detail_food.jsp"></jsp:include>
								</c:if>	
								</ul>
								<ul role="tabpanel" class="tab-pane fade" id="detailInfo">
								<c:forEach var="repeat" items="${repeatList}">
									<c:if test="${contentType ne '25' }">
										<li class="row" style="margin-bottom: 10px">
											<span class="col-sm-3">${repeat.infoName }</span> 
											<span class="col-sm-9">${repeat.infoText}</span>
										</li>
									</c:if>
									<c:if test="${contentType == '25' }">
										<li class="row" style="margin-bottom: 10px">
											<h3>${repeat.subName}</h3>
											<p>
												<img src="${repeat.subDetailimg}" style="width:100%" class="img-responsive">
											</p>
											<p>
												${repeat.subDetailOverview}
											</p> 
										</li>
									</c:if>
								</c:forEach>	
								</ul>
							</div>

						</div>
						<script>
							$('#myTab a').click(function (e) {
								e.preventDefault();
								$(this).tab('show');
							}); 
						</script>
						<div class="row">
							<c:if test="${not empty common.mapX}">

							<div id="map" style="width: 100%; height: 500px;"></div>

							<script type="text/javascript"
								src="//apis.daum.net/maps/maps3.js?apikey=37aec586afb9fc326be8b882a49c024d&libraries=services"></script>


							<script>
								var mapContainer = document
										.getElementById('map'), // 지도를 표시할 div 
								mapOption = {
									//center : new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
									center : new daum.maps.LatLng("${common.mapY}", "${common.mapX}"), // 지도의 중심좌표
									//level : 3
									level : "${common.mlevel}"
								// 지도의 확대 레벨
								};

								var map = new daum.maps.Map(mapContainer,mapOption); // 지도를 생성합니다

								// 마커가 표시될 위치입니다 
								//var markerPosition = new daum.maps.LatLng(33.450701, 126.570667);
								var markerPosition = new daum.maps.LatLng("${common.mapY}", "${common.mapX}");

								// 마커를 생성합니다
								var marker = new daum.maps.Marker({
									position : markerPosition,
								});

								// 마커가 지도 위에 표시되도록 설정합니다
								marker.setMap(map);

							</script>
							
							</c:if>
						</div>
					</div>

					<div class="col-md-6 service_box" style="padding-left: 9%;">

						<c:if test="${not empty common.image && not empty imageList}">
						<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
						  <!-- Indicators -->
						  <ol class="carousel-indicators">
						  	<c:forEach var="image1" items="${imageList }" varStatus="status">
							  	<c:if test="${not empty common.image }">
							  		<c:if test="${status.first }">
							    		<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
							  		</c:if>
							    	<li data-target="#carousel-example-generic" data-slide-to="${status.index + 1}"></li>
							  	</c:if>
							  	<c:if test="${empty common.image }">
							  		<c:if test="${status.first }">
							    		<li data-target="#carousel-example-generic" data-slide-to="${status.index}" class="active"></li>
							  		</c:if>
							  		<c:if test="${not status.first }">
								    <li data-target="#carousel-example-generic" data-slide-to="${status.index}"></li>
								    </c:if>
							    </c:if>
						  	</c:forEach>
						  </ol>
						
						  <!-- Wrapper for slides -->
						  <div class="carousel-inner" role="listbox">
						  
						  	<c:forEach var="image" items="${imageList }" varStatus="status">
							  	<c:if test="${not empty common.image }">
							  		<c:if test="${status.first }">
							    		<div class="item active">
									      <img class="img-responsive" src="${common.image}" alt="${common.title}">
									    </div>
							  		</c:if>
						    		<div class="item">
								      <img class="img-responsive" src="${image.originalURL}" alt="${image.imageName}">
								    </div>
							  	</c:if>
							  	<c:if test="${empty common.image }">
							  		<c:if test="${status.first }">
										<div class="item active">
									      <img class="img-responsive" src="${image.originalURL}" alt="${image.imageName}">
									    </div>
							  		</c:if>
							  		<c:if test="${not status.first }">
										<div class="item">
									      <img class="img-responsive" src="${image.originalURL}" alt="${image.imageName}">
									    </div>
								    </c:if>
							    </c:if>
					  		</c:forEach>
						    
						  </div>
						
						  <!-- Controls -->
						  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
						    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						    <span class="sr-only">Previous</span>
						  </a>
						  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
						    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						    <span class="sr-only">Next</span>
						  </a>
						</div>
						</c:if>
						
						<h3 style="color: #999;">${common.title}</h3>
						<hr style="margin-top: 30px; border: 0; border-top: 1px solid #dce0e0;">
						
						<p>${common.overview }</p>

						<input type="button" id="join" class="btn" value="목록 보기" onclick="location.href='index.jsp?page=town/town.jsp'">
					</div>
					<div class="clearfix"></div>
				</div>
          </div>
	 </div>
	</div>
</div>