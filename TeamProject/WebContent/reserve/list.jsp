<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.lang.String"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="js/jquery.form.min.js"></script>
<script>
	$(document).ready(function(){
		//$('.container').attr('class', 'container-fluid');
		
		$('#filterForm').ajaxForm({
			//보내기전 validation check가 필요할경우
			beforeSubmit : function(data, frm, opt) {
				
				return true;
			},
			//submit이후의 처리
			success : function(data, statusText) {
				//console.log(data); //응답받은 데이터 콘솔로 출력
				$('#imagebox > div > div:last-child').html(data);
				$('#photo').val(null);
				setData();
			},
			//ajax error
			error : function(e) {
				alert("필터링 중 에러발생!!");
				console.log(e);
			}
		});
		
		$('#myAffix').affix({
		  offset: {
		    top: 155,
		    bottom: function () {
		    	return (this.bottom = $('.copy').outerHeight(true) + 48)
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
		<script>
		$('.container').attr('class', 'container-fluid');
		</script>
		<div>
			<ul>
				<li class="siteline"><img src="images/homelink.png"
					style="vertical-align: top;"> 니집 예약</li>
				<li class="clearfix"></li>
			</ul>
		</div>

			<!-- <div class="text-right">
				<ol class="breadcrumb" style="background-color: #fff">
				</ol>
			</div> -->
		
			<!-- <div class="row"> -->
			<div>	
				<div id="hl_div" class="col-sm-7" style="padding:10 0; min-height: 1000px">
				  <div>
				  <form action="" method="post" id="filterForm">
					<div class="form-horizontal">
					  <div class="form-group">
					    <label class="col-sm-2 control-label" style="text-align: left">지역</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" name="loc" placeholder="지역 입력">

					    </div>
					  </div>
					  <div class="form-group">
					    <label class="col-sm-2 control-label" style="text-align: left; padding-right: 0">날짜</label>
					    <div class="col-sm-3">
					      <input type="text" class="form-control datepicker" name="startDay" placeholder="체크인">
					    </div>
					    <div class="col-sm-3">
					      <input type="text" class="form-control datepicker" name="endDay" placeholder="체크아웃">
					    </div>
					    <div class="col-sm-4">
					      <select class="form-control" name="peopleNum">
					      	<c:forEach var="i" begin="1" end="16" varStatus="status">
					        	<option value="${i}">인원 ${i}<c:if test="${status.last}">+</c:if></option>
					      	</c:forEach>
					        
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
							<label class="col-sm-2 control-label" style="text-align: left; padding-right: 0">숙소유형
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
									<label title="집전체"> <input type="checkbox" name="roomStyle">집전체
									</label>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="checkbox">
									<label title="개인실"> <input type="checkbox" name="roomStyle">개인실
									</label>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="checkbox">
									<label title="다인실"> <input type="checkbox" name="roomStyle">다인실
									</label>
								</div>
							</div>
						</div>


						<div class="form-group">
							<label class="col-sm-2 control-label" style="text-align: left; padding-right: 0">규모</label>
							<div class="col-sm-3">
								<select class="form-control" name="roomNum">
									<option value="1">침실수</option>
									<c:forEach var="i" begin="1" end="11" varStatus="status">
							        	<option value="${i}">${i}<c:if test="${status.last}">+</c:if></option>
							      	</c:forEach>
								</select>
							</div>
							<div class="col-sm-3">
								<select class="form-control" name="bathNum">
									<option value="1">화장실수</option>
									<c:forEach var="i" begin="1" end="11" varStatus="status">
							        	<option value="${i}">${i}<c:if test="${status.last}">+</c:if></option>
							      	</c:forEach>
								</select>
							</div>
							<div class="col-sm-3">
								<select class="form-control" name="bedNum">
									<option value="1">침대수</option>
									<c:forEach var="i" begin="1" end="16" varStatus="status">
							        	<option value="${i}">${i}<c:if test="${status.last}">+</c:if></option>
							      	</c:forEach>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label"
								style="text-align: left; padding-right: 0">시설</label>
								
								<c:forEach var="fac" items="${homeFacList}" varStatus="status">
									<c:if test="${status.count <= 3}">
										<div class="col-sm-3">
									</c:if>
									<c:if test="${status.count == 4}">
										<div class="detailFacil">
									</c:if>
									<c:if test="${status.count >= 4}">
										<c:if test="${status.count % 3 == 1 }">
											<div class="col-sm-3 col-sm-offset-2" style="margin-top: 10px">
										</c:if>
										<c:if test="${status.count % 3 != 1 }">
											<div class="col-sm-3" style="margin-top: 10px">
										</c:if>
									</c:if>
												<div class="checkbox">
													<label title="${fac.hs_Name}"> <input type="checkbox" name="homeFac" value="${fac.hs_No}">
														${fac.hs_Name}
													</label>
												</div>
											</div>
									
									<c:if test="${status.count == 3}">
										<div id ="detailFacilBtnon" class="col-sm-1" style="cursor: pointer;">
											<i class="fa fa-caret-down" ></i>
										</div>
									</c:if>
									<c:if test="${status.last}">
										</div>
									</c:if>
								</c:forEach>
							

						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label" style="text-align: left; padding-right: 0">집유형</label>
							<c:forEach var="homeCategory" items="${homeCateoryList}" varStatus="status">
								<c:if test="${status.count <= 3}">
									<div class="col-sm-3">
								</c:if>
								<c:if test="${status.count == 4}">
									<div class="detailHouseType">
								</c:if>
								<c:if test="${status.count >= 4}">
									<c:if test="${status.count % 3 == 1 }">
										<div class="col-sm-3 col-sm-offset-2" style="margin-top: 10px">
									</c:if>
									<c:if test="${status.count % 3 != 1 }">
										<div class="col-sm-3" style="margin-top: 10px">
									</c:if>
								</c:if>
											<div class="checkbox">
												<label title="${homeCategory.ht_Name}"> <input type="checkbox" name="homeCategory" value="${homeCategory.ht_No}">
													${homeCategory.ht_Name}
												</label>
											</div>
										</div>
								
								<c:if test="${status.count == 3}">
									<div id ="dHTBtnon" class="col-sm-1" style="cursor: pointer;">
										<i class="fa fa-caret-down" ></i>
									</div>
								</c:if>
								<c:if test="${status.last}">
									</div>
								</c:if>
							</c:forEach>
							
							
							
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
				  <div id="items">
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
								<img class="img-responsive img-rounded" src="upload/${dto.image}" />
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
								<li><span>후기 ${dto.replyCount}개</span></li>
							</ul>
						</div>
					</div>
				</c:forEach>
				</div>
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
						level: 4
					};
					
					var map = new daum.maps.Map(container, options);
					
					var overlays = new Array();
					insertOverlays();
					
					// 지도에 표시할 원을 생성합니다
			        var cir = new daum.maps.Circle({
			           // center :new daum.maps.LatLng(37.553121, 126.937059),  // 원의 중심좌표 입니다 
			            center : map.getCenter(),
			            radius: 500, // 미터 단위의 원의 반지름입니다 
			            strokeWeight: 2, // 선의 두께입니다 
			            strokeColor: '#75B8FA', // 선의 색깔입니다
			            strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
			            strokeStyle: 'dashed', // 선의 스타일 입니다
			            fillColor: '#CFE7FF', // 채우기 색깔입니다
			            fillOpacity: 0.4  // 채우기 불투명도 입니다   
			        }); 
					
			        cir.setMap(map); 
					
					
					daum.maps.event.addListener(map, 'center_changed', function() {        
					    
					    // 지도의  레벨을 얻어옵니다
					    var level = map.getLevel();
					    
					    // 지도의 중심좌표를 얻어옵니다 
					    var latlng = map.getCenter(); 
					    
					    var message = '<p>지도 레벨은 ' + level + ' 이고</p>';
					    message += '<p>중심 좌표는 위도 ' + latlng.getLat() + ', 경도 ' + latlng.getLng() + '입니다</p>'; 
					    
					    //console.log(message);
					    
					});
					
					
					// 드레그가 끝났을때 
			     	daum.maps.event.addListener(map, 'dragend', function() {
			     		var center = map.getCenter();
			     		var lat = center.getLat();
			     		var lng = center.getLng();
			     		$.get(
		     				"reserve_listByMovingMap.do?lat=" + lat + "&lng=" + lng,
		     				function(data){
		     					$('div#items').html(data);
		     					//alert(data);
		     					deleteOverlays();
					     		insertOverlays();
		     				}
		     			);   		
			     		
			     		cir.setPosition(map.getCenter());
			     	});
			     	
			     	// 오버레이 삭제
			     	function deleteOverlays(){
			     		for(var i in overlays){
			     			overlays[i].setMap(null);
			     		}
			     		overlays = new Array();
			     	}
			     	
			     	// 커스텀 오버레이 생성 및 표시
			     	function insertOverlays(){
			     		$("div.list").each(function(index, item){
							// HTML 문자열 또는 Dom Element 입니다 
							// 커스텀 오버레이 엘리먼트를 만들고, 컨텐츠를 추가합니다
							var overcontent = document.createElement('div'); 
							overcontent.className = 'overlay';
							overcontent.style.left = '-31px';
							overcontent.style.top = '-32px';
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
							overlays.push(customOverlay);
							
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
							 
							 function onMouseOver(e){
								 thisval.css('border', '2px solid #F94B4B');
								 thisval.find('img').css('transition', '0.5s').css('transform', 'rotate(2deg)');
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
			     	}
				
				</script>
			</div>
			<div class="clearfix"></div>

	</div>
</div>
