<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.lang.String"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
	$(document).ready(function(){
		$('#myAffix').affix({
		  offset: {
		    top: 155,
		    bottom: function () {
		    	return (this.bottom = $('.grid_7').outerHeight(true)+$('.copy').outerHeight(true))
		    }
		  }
		});
		
		$('[data-toggle="tooltip"]').tooltip({
			html: true,
			container: $('[data-toggle="tooltip"]').parent().parent()
	  	});
	});
	
	$(document).on("click", "#detailbtnon", function(){
		$('#detailSearch').slideDown(500);
		//$('#detailbtnon').text('필터끄기');
		//$('#detailbtnon').attr('id', 'detailbtnoff');
		$('#detailbtnon').hide(500);
	});
	
	$(document).on("click", "#detailbtnoff", function(){
		$('#detailSearch').slideUp(500);
		//$('#detailbtnoff').text('상세검색필터');
		//$('#detailbtnoff').attr('id', 'detailbtnon');
		$('#detailbtnon').show(500);
	});
	
	/* 시설 자세히 보이기 */
	$(document).on("click", '#detailFacilBtnon', function(){
		$('div.detailFacil').show();
		$('#detailFacilBtnon i').attr('class', 'fa fa-caret-up');
		$('#detailFacilBtnon').attr('id', 'detailFacilBtnoff');
	}); 
	
	$(document).on("click", '#detailFacilBtnoff', function(){
		$('div.detailFacil').hide();
		$('#detailFacilBtnoff i').attr('class', 'fa fa-caret-down');
		$('#detailFacilBtnoff').attr('id', 'detailFacilBtnon');
	}); 
	
	/* 집유형 자세히 보기 */
	$(document).on("click", '#dHTBtnon', function(){
		$('div.detailHouseType').show();
		$('#dHTBtnon i').attr('class', 'fa fa-caret-up');
		$('#dHTBtnon').attr('id', 'dHTBtnoff');
	}); 
	
	$(document).on("click", '#dHTBtnoff', function(){
		$('div.detailHouseType').hide();
		$('#dHTBtnoff i').attr('class', 'fa fa-caret-down');
		$('#dHTBtnoff').attr('id', 'dHTBtnon');
	}); 
	
</script>
<div class="about_top">
    <div class="container" style="border-top: 1px solid #E2E2E2; ">
		
		<div>
			<ul>
				<li class="siteline"><img src="images/homelink.png"
					style="vertical-align: top;"> 니집 예약</li>
			</ul>
		</div>

			<div class="text-right">
				<ol class="breadcrumb" style="background-color: #fff">
				</ol>
			</div>
		
			<!-- <div class="row"> -->
			<div>	
				<div id="hl_div" class="col-sm-7" style="padding:10 0;">
				  <div>
				  	<form>
					<div class="form-horizontal">
					  <div class="form-group">
					    <label class="col-sm-2 control-label" style="text-align: left">지역</label>
					    <div class="col-sm-5">
					      <input type="text" class="form-control" placeholder="시/도">
					    </div>
					    <div class="col-sm-5">
					      <input type="text" class="form-control" placeholder="시/군/구">
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="col-sm-2 control-label" style="text-align: left">날짜</label>
					    <div class="col-sm-3">
					      <input type="text" class="form-control datepicker" placeholder="체크인">
					    </div>
					    <div class="col-sm-3">
					      <input type="text" class="form-control datepicker" placeholder="체크아웃">
					    </div>
					    <div class="col-sm-4">
					      <select class="form-control">
					        <option value="1">인원 1</option>
					        <option value="2">인원 2</option>
					        <option value="3">인원 3</option>
					        <option value="4">인원 4</option>
					        <option value="5">인원 5</option>
					        <option value="6">인원 6</option>
					        <option value="7">인원 7</option>
					      </select>
					    </div>
					  </div>
					  <div class="form-group">
					    <div class="col-sm-4 col-sm-offset-8">
					      <button id="detailbtnon" type="button" class="btn btn-info btn-block">상세검색필터</button>
					    </div>
					  </div>

					<div id="detailSearch">
						<div class="form-group">
							<label class="col-sm-2 control-label" style="text-align: left">숙소유형
								<i class="fa fa-question-circle" data-toggle="tooltip" data-placement="right" 
								title="<dl class='panel-body text-left'>
					   			<dt style='color:#B99FCE'>집 전체</dt>
					            <dd style='margin-bottom:10px'>집 혹은 아파트 전체를 사용하는 숙소</dd>
					            <dt style='color:#B99FCE'>개인실</dt>
					            <dd style='margin-bottom:10px'>단독 침실을 사용하지만 기타 공간을 공유하는 숙소</dd>
					            <dt style='color:#B99FCE'>다인실</dt>
					  			<dd>회원님의 방을 같이 쓰거나 회원님의 방이 공동 공간으로 사용되는 숙소</dd>
					          </dl>"></i>
							</label>
							<div class="col-sm-3">
								<div class="checkbox">
									<label title="집전체"> <input type="checkbox">집전체
									</label>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="checkbox">
									<label title="개인실"> <input type="checkbox">개인실
									</label>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="checkbox">
									<label title="다인실"> <input type="checkbox">다인실
									</label>
								</div>
							</div>
						</div>


						<div class="form-group">
							<label class="col-sm-2 control-label" style="text-align: left">규모</label>
							<div class="col-sm-3">
								<select class="form-control">
									<option value="1">침실수</option>
									<option value="2">1</option>
									<option value="3">2</option>
									<option value="4">3</option>
								</select>
							</div>
							<div class="col-sm-3">
								<select class="form-control">
									<option value="1">화장실수</option>
									<option value="2">1</option>
									<option value="3">2</option>
									<option value="4">3</option>
								</select>
							</div>
							<div class="col-sm-3">
								<select class="form-control">
									<option value="1">침대수</option>
									<option value="2">1</option>
									<option value="3">2</option>
									<option value="4">3</option>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label"
								style="text-align: left;">시설</label>
							<div class="col-sm-3">
								<div class="checkbox">
									<label title="무선 인터넷"> <input type="checkbox">무선 인터넷
									</label>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="checkbox">
									<label title="TV"> <input type="checkbox">TV
									</label>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="checkbox">
									<label title="부엌"> <input type="checkbox">부엌
									</label>
								</div>
							</div>
							<div id ="detailFacilBtnon" class="col-sm-1" style="cursor: pointer;">
								<i class="fa fa-caret-down" ></i>
							</div>

			
							<div class="detailFacil">
								<div class="col-sm-3 col-sm-offset-2" style="margin-top: 10px">
									<div class="checkbox">
										<label title="가족/어린이환영"> <input type="checkbox">가족/어린이환영
										</label>
									</div>
								</div>
								<div class="col-sm-3" style="margin-top: 10px">
									<div class="checkbox">
										<label title="건조기"> <input type="checkbox">건조기
										</label>
									</div>
								</div>
								<div class="col-sm-3" style="margin-top: 10px">
									<div class="checkbox">
										<label title="구급 상자"> <input type="checkbox">구급 상자
										</label>
									</div>
								</div>

								<div class="col-sm-3 col-sm-offset-2">
									<div class="checkbox">
										<label title="난방"> <input type="checkbox">난방
										</label>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="checkbox">
										<label title="도어맨"> <input type="checkbox">도어맨
										</label>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="checkbox">
										<label title="무료주차"> <input type="checkbox">무료주차
										</label>
									</div>
								</div>

								<div class="col-sm-3 col-sm-offset-2">
									<div class="checkbox">
										<label title="소화기"> <input type="checkbox">소화기
										</label>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="checkbox">
										<label title="수영장"> <input type="checkbox">수영장
										</label>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="checkbox">
										<label title="실내 벽난로"> <input type="checkbox">실내 벽난로
										</label>
									</div>
								</div>

								<div class="col-sm-3 col-sm-offset-2">
									<div class="checkbox">
										<label title="아침식사"> <input type="checkbox">아침식사
										</label>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="checkbox">
										<label title="안전 카드"> <input type="checkbox">안전 카드
										</label>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="checkbox">
										<label title="애완동물입실가능"> <input type="checkbox">애완동물입실가능
										</label>
									</div>
								</div>

								<div class="col-sm-3 col-sm-offset-2">
									<div class="checkbox">
										<label title="에어콘"> <input type="checkbox">에어콘
										</label>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="checkbox">
										<label title="엘리베이터"> <input type="checkbox">엘리베이터
										</label>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="checkbox">
										<label title="욕조"> <input type="checkbox">욕조
										</label>
									</div>
								</div>


								<div class="col-sm-3 col-sm-offset-2">
									<div class="checkbox">
										<label title="이벤트/행사 가능"> <input type="checkbox">이벤트/행사 가능
										</label>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="checkbox">
										<label title="인터넷"> <input type="checkbox">인터넷
										</label>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="checkbox">
										<label title="흡연가능"> <input type="checkbox">흡연가능
										</label>
									</div>
								</div>


								<div class="col-sm-3 col-sm-offset-2">
									<div class="checkbox">
										<label title="초인종/인터폰"> <input type="checkbox">초인종/인터폰
										</label>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="checkbox">
										<label title="침실문 잠금장치"> <input type="checkbox">침실문 잠금장치
										</label>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="checkbox">
										<label title="케이블 TV"> <input type="checkbox">케이블 TV
										</label>
									</div>
								</div>


								<div class="col-sm-3 col-sm-offset-2">
									<div class="checkbox">
										<label title="필수 품목"> <input type="checkbox">필수 품목
										</label>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="checkbox">
										<label title="화재 감지기"> <input type="checkbox">화재 감지기
										</label>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="checkbox">
										<label title="휠체어 사용가능"> <input type="checkbox">휠체어 사용가능
										</label>
									</div>
								</div>
							</div>

						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label" style="text-align: left">집유형</label>
							<div class="col-sm-3">
								<div class="checkbox">
									<label title="아파트"> <input type="checkbox">아파트
									</label>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="checkbox">
									<label title="단독주택"> <input type="checkbox">단독주택
									</label>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="checkbox">
									<label title="게스트하우스"> <input type="checkbox">게스트하우스
									</label>
								</div>
							</div>
							<div id ="dHTBtnon" class="col-sm-1" style="cursor: pointer;">
								<i class="fa fa-caret-down" ></i>
							</div>
							
							
							
							<div class="detailHouseType">
								<div class="col-sm-3 col-sm-offset-2" style="margin-top: 10px">
									<div class="checkbox">
										<label title="기숙사"> <input type="checkbox">기숙사
										</label>
									</div>
								</div>
								<div class="col-sm-3" style="margin-top: 10px">
									<div class="checkbox">
										<label title="로프트"> <input type="checkbox">로프트
										</label>
									</div>
								</div>
								<div class="col-sm-3" style="margin-top: 10px">
									<div class="checkbox">
										<label title="기타"> <input type="checkbox">기타
										</label>
									</div>
								</div>

								<div class="col-sm-3 col-sm-offset-2">
									<div class="checkbox">
										<label title="배"> <input type="checkbox">배
										</label>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="checkbox">
										<label title="별장"> <input type="checkbox">별장
										</label>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="checkbox">
										<label title="타운하우스"> <input type="checkbox">타운하우스
										</label>
									</div>
								</div>

								<div class="col-sm-3 col-sm-offset-2">
									<div class="checkbox">
										<label title="캠핑카"> <input type="checkbox">캠핑카
										</label>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="checkbox">
										<label title="텐트"> <input type="checkbox">텐트
										</label>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="checkbox">
										<label title="통나무집"> <input type="checkbox">통나무집
										</label>
									</div>
								</div>
							</div>		
						</div>
							<div class="form-group">
						    <div class="col-sm-3 col-sm-offset-6">
						      <button id="detailbtnoff" type="button" class="btn btn-default btn-block">취소</button>
						    </div>
						    <div class="col-sm-3">
						      <button id="" type="button" class="btn btn-info btn-block">필터적용</button>
						    </div>
					  	</div>						
					</div>
					</div>
					</form>					
				  </div>
				<c:forEach var="dto" items="${list }">
					<c:forTokens items="${dto.h_Loc }" delims="," var="loc" varStatus="status" >
						<c:if test="${status.first }">
							<c:set var="lat" value="${loc}"></c:set>
						</c:if>
						<c:if test="${status.last }">
							<c:set var="lng" value="${loc}"></c:set>
						</c:if>
					</c:forTokens>
					<div class="row list" data-price="${dto.h_Money }" data-lat="${lat }" data-lng="${lng }">
						<div class="col-sm-8">
							<a href="reserve_detail.do?no=${dto.h_No }&page=${curpage}">
								<img class="img-responsive" src="houseimage/${dto.h_No }.jpg" />
							</a>
						</div>
						<div class="col-sm-4 desc">
							<ul>
								<li><a href="reserve_detail.do?no=${dto.h_No }&page=${curpage}"><span>${dto.h_nHome }</span></a></li>
								<li><span style="color: #3B9DD6; font-weight: bold;">${dto.h_Money }원</span></li>
											<c:if test="${dto.h_rType==1}">
											<li><span>집전체</span></li>
											</c:if>
											<c:if test="${dto.h_rType==2}">
											<li><span>개인실</span></li>
											</c:if>
											<c:if test="${dto.h_rType==3}">
											<li><span>다인실</span></li>
											</c:if>
								<li><span>${dto.h_Addr1 }</span></li>
								<li><span>후기 10 개</span></li>
							</ul>
						</div>
					</div>
				</c:forEach>

				<%-- <div class="row list" data-price="60,000" data-lat="33.450705" data-lng="126.570677">
					<div class="col-sm-8">
						<a href="reserve_detail.do"><img class="img-responsive" src="images/a001.jpg" /></a>		
					</div>
					<div class="col-sm-4 desc">
					  <ul>
					    <li><a href="reserve_detail.do?no=${list.h_no }&page=${curpage}">
					    <span>${list[0].h_nHome }</span></a></li>
					    <li><span style="color: #3B9DD6; font-weight: bold;" >60,000원</span></li>
					    <li><span>개인실</span></li>
					    <li><span>중구, 서울</span></li>
					    <li><span>후기 10개</span></li>
					  </ul>
					</div>
				  </div>
				  
				  <div class="row list" data-price="100,000" data-lat="33.450936" data-lng="126.569477">
					<div class="col-sm-8">
						<a href="index.jsp?page=reserve/detail.jsp"><img class="img-responsive" src="images/a002.jpg" /></a>		
					</div>
					<div class="col-sm-4 desc">
					  <ul>
					    <li><a href="index.jsp?page=reserve/detail.jsp"><span>도심속 한옥 호텔</span></a></li>
					    <li><span style="color: #3B9DD6; font-weight: bold;" >100,000원</span></li>
					    <li><span>집전체</span></li>
					    <li><span>종로구, 서울</span></li>
					    <li><span>후기 20개</span></li>
					  </ul>
					</div>
				  </div>
				  
				  <div class="row list" data-price="60,000" data-lat="33.450879" data-lng="126.569940">
					<div class="col-sm-8">
						<a href="index.jsp?page=reserve/detail.jsp"><img class="img-responsive" src="images/a003.jpg" /></a>		
					</div>
					<div class="col-sm-4 desc">
					  <ul>
					    <li><a href="index.jsp?page=reserve/detail.jsp"><span>한강 옆 게스트 하우스</span></a></li>
					    <li><span style="color: #3B9DD6; font-weight: bold;" >60,000원</span></li>
					    <li><span>개인실</span></li>
					    <li><span>중구, 서울</span></li>
					    <li><span>후기 10개</span></li>
					  </ul>
					</div>
				  </div>
				  
				  <div class="row list" data-price="100,000" data-lat="33.451393" data-lng="126.570738">
					<div class="col-sm-8">
						<a href="index.jsp?page=reserve/detail.jsp"><img class="img-responsive" src="images/a004.jpg" /></a>		
					</div>
					<div class="col-sm-4 desc">
					  <ul>
					    <li><a href="index.jsp?page=reserve/detail.jsp"><span>도심속 한옥 호텔</span></a></li>
					    <li><span style="color: #3B9DD6; font-weight: bold;" >100,000원</span></li>
					    <li><span>집전체</span></li>
					    <li><span>종로구, 서울</span></li>
					    <li><span>후기 20개</span></li>
					  </ul>
					</div>
				  </div> --%>
				  
				  
				  
				  
				  <div class=text-center>
					<!--span>
					<img src="images/back.jpg">&nbsp;1  2  3  4  5&nbsp;<img src="images/daum.jpg">
					</span-->
					   <ul class="pagination">
					    <li>
					      <a href="reserve_list.do?page=${curpage>1?curpage-1:curpage }" aria-label="Previous">
					        <span aria-hidden="true">&laquo;</span>
					      </a>
					    </li>
					    <li class="active"><a href="reserve_list.do?page=1">1</a></li>
					    <li><a href="reserve_list.do?page=2">2</a></li>
					    <li><a href="reserve_list.do?page=3">3</a></li>
					    <li><a href="reserve_list.do?page=4">4</a></li>
					    <li><a href="reserve_list.do?page=5">5</a></li>
					    <li>
					      <a href="reserve_list.do?page=${curpage<totalpage?curpage+1:curpage }" aria-label="Next">
					        <span aria-hidden="true">&raquo;</span>
					      </a>
					    </li>
					  </ul>
				 </div>
				</div>
				<div class="col-sm-5 hidden-xs">
					<div id="myAffix">
						<div id="map" style="width: 100%; height: 900px" ></div>
					</div>
				</div>
				<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=7f21a870bb940ba4566d23ff69b9820d"></script>
				<script>
					var container = document.getElementById('map');
					var options = {
						center: new daum.maps.LatLng(37.553121, 126.937059),
						level: 3
					};
					
					var map = new daum.maps.Map(container, options);
					
					
					
					$("div.list").each(function(index, item){
						 /* var marker = new daum.maps.Marker({
					        map: map, // 마커를 표시할 지도
					        position: new daum.maps.LatLng($(this).attr('data-lat'), $(this).attr('data-lng')), // 마커를 표시할 위치
					        title: '요기?'
						 });
						 marker.setMap(map); */
						 
						// HTML 문자열 또는 Dom Element 입니다 
						// 커스텀 오버레이 엘리먼트를 만들고, 컨텐츠를 추가합니다
						var overcontent = document.createElement('div'); 
						overcontent.className = 'overlay';
						overcontent.innerHTML = '<p>￦' + $(this).attr('data-price') + '</p><span></span>';

						// 커스텀 오버레이가 표시될 위치입니다 
						var position = new daum.maps.LatLng($(this).attr('data-lat'), $(this).attr('data-lng'));  

						
						// 커스텀 오버레이를 생성합니다
						var customOverlay = new daum.maps.CustomOverlay({
							map: map,
						    //position: new daum.maps.LatLng($(this).attr('data-lat'), $(this).attr('data-lng')),
						    position: position,
						    //content: overlaycon   
						    content: overcontent  
						});

						// 커스텀 오버레이를 지도에 표시합니다
						//customOverlay.setMap(map);
						
						// 커스텀 오버레이에 mousedown이벤트를 등록합니다 
						addEventHandle(overcontent, 'mouseover', onMouseOver);
						addEventHandle(overcontent, 'mouseout', onMouseOut);
						addEventHandle(overcontent, 'click', onClick);
						 
						var imgsrc = $(this).find('img').attr('src'); 
						var sub = $(this).find('li:first-child a span').text();
						var sub2 = $(this).find('li:nth-child(2) span').text() + ' | ' + $(this).find('li:nth-child(3) span').text()
						         + ' | ' + $(this).find('li:last-child span').text();
						var iwContent = '<div style="padding:10px; width:240px">'
						              + '<a href="reserve_detail.do"><img class="img-responsive" src="' + imgsrc + '"/></a>'
						              + '<p style="font-size: .9em; font-weight: bold;"><a href="reserve_detail.do">' + sub + '</a></p>'	
						              + '<p style="font-size: .7em; font-weight: bold; color: #B7B1B1;">' + sub2 + '</p>'	
									  +	'</div>'; 

						// 인포윈도우를 생성합니다
						var infowindow = new daum.maps.InfoWindow({
						    content : iwContent,
						    clickable: true,
						    removable : true,
						    position: position
						});
						
						 var thisval = $(this);
						 /* daum.maps.event.addListener(marker, 'mouseover', function() {
							 thisval.css('border', '2px solid #F94B4B');
							 thisval.find('img').css('transition', '0.5s').css('transform', 'rotate(3deg)');
							 //infowindow.open(map, marker);
						 });
						 daum.maps.event.addListener(marker, 'mouseout', function() {
							 thisval.css('border', '');
							 thisval.find('img').css('transform', '');
							 //infowindow.close();
						 }); 
						 
						 daum.maps.event.addListener(marker, 'click', function() {
						      infowindow.open(map, marker);  
						 }); */
						 
						 function onMouseOver(e){
							 thisval.css('border', '2px solid #F94B4B');
							 thisval.find('img').css('transition', '0.5s').css('transform', 'rotate(3deg)');
						 }
						 
						 function onMouseOut(e){
							 thisval.css('border', '');
							 thisval.find('img').css('transform', '');
						 }
						 
						 function onClick(e){
							 infowindow.open(map);  
						 }
						 
						// target node에 이벤트 핸들러를 등록하는 함수힙니다  
						 function addEventHandle(target, type, callback) {
						     if (target.addEventListener) {
						         target.addEventListener(type, callback);
						     } else {
						         target.attachEvent('on' + type, callback);
						     }
						 }
						
						thisval.hover(function(){
							overcontent.style.backgroundColor = '#87d54d';
							overcontent.style.borderColor = '#87d54d';
							overcontent.parentElement.style.zIndex = '1';
							overcontent.lastChild.style.borderTopColor = '#87d54d';
						}, function(){
							overcontent.style.backgroundColor = '#ff5555';
							overcontent.style.borderColor = '#BB3333';
							overcontent.parentElement.style.zIndex = '0';
							overcontent.lastChild.style.borderTopColor = '#ff5555';
						});
					});
					
					
					daum.maps.event.addListener(map, 'center_changed', function() {        
					    
					    // 지도의  레벨을 얻어옵니다
					    var level = map.getLevel();
					    
					    // 지도의 중심좌표를 얻어옵니다 
					    var latlng = map.getCenter(); 
					    
					    var message = '<p>지도 레벨은 ' + level + ' 이고</p>';
					    message += '<p>중심 좌표는 위도 ' + latlng.getLat() + ', 경도 ' + latlng.getLng() + '입니다</p>'; 
					    
					    //console.log(message);
					    
					});
					
				
				</script>
			</div>
			<div class="clearfix"></div>

	</div>
</div>
