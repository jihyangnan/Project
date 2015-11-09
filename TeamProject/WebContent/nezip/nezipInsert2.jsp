<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div>
	<div>	 
    	<h2 class="blog_head" style="margin-left: 40px"><b>내집 등록 - 2단계</b></h2>
       	 <!-- 작업 시작  -->
       	<div style="padding-left:40px;">
       		<ul>
       	 		<li style="padding-top:15px; font-size:25px; font-weight:bold; color:#565a5c;">
       	 			게스트가 숙소를 찾을 수 있도록 위치 정보를 제공하세요.
       	 		</li>
       	 		<li style="color:#82888a; font-size:13px; margin-top: 5px">&nbsp;게스트는 이 정보를 활용하여 숙소를 찾습니다.</li>
       	 		<li style="padding-top:20px; font-size:14px; font-weight:600;">
       	 			<div class="row">
	       	 			<div class="col-sm-3">
	       					<input type="text" name="postcode" id="postcode" placeholder="우편번호" class="form-control" value="${postcode}" readonly>
	       				</div>
	       				<div class="col-sm-2">
							<input type="button" class="btn btn-danger" onclick="sample4_execDaumPostcode()" value="우편번호 찾기">
	       				</div>
					</div>
					<div class="row" style="margin-top: 20px">
						<div class="col-sm-6">
							<input type="text" class="form-control" id="addr1" name="addr1" readonly placeholder="기본주소" value="${addr1}">
						</div>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="addr2" name="addr2" placeholder="상세주소" value="${addr2}">
						</div>
					</div>
					<input type="hidden" id="lat" name="lat" value="${lat}" />
					<input type="hidden" id="lng" name="lng" value="${lng}" />
				</li>
		 
		 <li style="padding-top:20px;">
		 	<div class="col-sm-7" style="color:#f94b4b; padding-left: 0">지도를 움직여 정확한 위치를 설정 하세요.</div>
		 	<div id="saveMsg" class="col-sm-3 col-sm-offset-2" style="text-align: right; color:#59942D"></div>
		 	<div id="map" style="margin-top: 10px; height: 500px" class="col-sm-12"></div>
		 	<div class="clearfix"></div>
		 	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
			<script>
    			function sample4_execDaumPostcode() {
    				var themeObj = {
    					bgColor: "#87D54D", //바탕 배경색
    					outlineColor: "#87D54D" //테두리
 					};
        			new daum.Postcode({
        				theme: themeObj,
	            		oncomplete: function(data) {
		                	// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
		
	            			// 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                        // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                        var fullAddr = ''; // 최종 주소 변수
	                        var extraAddr = ''; // 조합형 주소 변수

	                        // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                        if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                            fullAddr = data.roadAddress;

	                        } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                            fullAddr = data.jibunAddress;
	                        }

	                        // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
	                        if(data.userSelectedType === 'R'){
	                            //법정동명이 있을 경우 추가한다.
	                            if(data.bname !== ''){
	                                extraAddr += data.bname;
	                            }
	                            // 건물명이 있을 경우 추가한다.
	                            if(data.buildingName !== ''){
	                                extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                            }
	                            // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
	                            fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
	                        }

	                        // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                        document.getElementById('postcode').value = data.zonecode; //5자리 새우편번호 사용
	                        document.getElementById('addr1').value = fullAddr;

	                        // 커서를 상세주소 필드로 이동한다.
	                        document.getElementById('addr2').focus();
		
		                
		             		// 주소-좌표 변환 객체를 생성합니다
							var geocoder = new daum.maps.services.Geocoder();
					
							// 주소로 좌표를 검색합니다
							geocoder.addr2coord($('#addr1').val(), function(status, result) {
					
						    	// 정상적으로 검색이 완료됐으면 
						    	if (status === daum.maps.services.Status.OK) {
						        	var coords = new daum.maps.LatLng(result.addr[0].lat, result.addr[0].lng);
							     	
							     	if(mk != null){
							     		mk.setPosition(coords);
							     		cir.setPosition(coords);
							     	} else {
								     	// 결과값으로 받은 위치를 마커로 표시합니다
								        var marker = new daum.maps.Marker({
								            map: map,
								            position: coords
								        });
								     	
								     	// 지도에 표시할 원을 생성합니다
								        var circle = new daum.maps.Circle({
								            center : coords,  // 원의 중심좌표 입니다 
								            radius: 60, // 미터 단위의 원의 반지름입니다 
								            strokeWeight: 3, // 선의 두께입니다 
								            strokeColor: '#75B8FA', // 선의 색깔입니다
								            strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
								            strokeStyle: 'dashed', // 선의 스타일 입니다
								            fillColor: '#CFE7FF', // 채우기 색깔입니다
								            fillOpacity: 0.7  // 채우기 불투명도 입니다   
								        }); 
								     	
								     	mk = marker;
								     	cir = circle;
								     	
								     	daum.maps.event.addListener(map, 'drag', function() {
								     		mk.setPosition(map.getCenter());
								     		cir.setMap(null);
								     	});
								     	
								     	daum.maps.event.addListener(map, 'dragend', function() {
								     		cir.setMap(map);
								     		cir.setPosition(map.getCenter());
								     		$('#lng').val(map.getCenter().getLng());
									     	$('#lat').val(map.getCenter().getLat());
									     	sendAjax();
								     	});
								     	
							     	}
							     	
							     	$('#lng').val(coords.getLng());
							     	$('#lat').val(coords.getLat());
							     	sendAjax();
							        // 지도에 원을 표시합니다 
							        cir.setMap(map); 
							        
							        map.setCenter(coords);
						    	} 
							}); 
	            		}
	        		}).open();
    			} 
			</script>
		 	
			
			<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=37aec586afb9fc326be8b882a49c024d&libraries=services"></script>
			
		<c:if test="${empty addr1}">
			<script>
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			    	mapOption = {
			        center: new daum.maps.LatLng(37.5530754, 126.9368926), // 지도의 중심좌표
			        level: 3 // 지도의 확대 레벨
			    	};  
			
				// 지도를 생성합니다    
				var map = new daum.maps.Map(mapContainer, mapOption); 
				
				// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
				if (navigator.geolocation) {
				    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
				    navigator.geolocation.getCurrentPosition(function(position) {
				        var lat = position.coords.latitude, // 위도
				            lon = position.coords.longitude; // 경도
				        
				        var loc = new daum.maps.LatLng(lat, lon); // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
				            
				    	map.setCenter(loc);
				    });
				} 
				
				var mk = null;
				var cir = null;
				
			</script>
		</c:if>	
		<c:if test="${not empty addr1}">
			<script>
				var existloc = new daum.maps.LatLng('${lat}', '${lng}');
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			    	mapOption = {
			        	center: existloc, // 지도의 중심좌표
			        	level: 3 // 지도의 확대 레벨
			    	};  
			
				// 지도를 생성합니다    
				var map = new daum.maps.Map(mapContainer, mapOption); 
				
				var mk = new daum.maps.Marker({
		            map: map,
		            position: existloc
		        });
				
				// 지도에 표시할 원을 생성합니다
		        var cir = new daum.maps.Circle({
		            center : existloc,  // 원의 중심좌표 입니다 
		            radius: 60, // 미터 단위의 원의 반지름입니다 
		            strokeWeight: 3, // 선의 두께입니다 
		            strokeColor: '#75B8FA', // 선의 색깔입니다
		            strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
		            strokeStyle: 'dashed', // 선의 스타일 입니다
		            fillColor: '#CFE7FF', // 채우기 색깔입니다
		            fillOpacity: 0.7  // 채우기 불투명도 입니다   
		        }); 
		     
		        cir.setMap(map); 
		     	
		     	daum.maps.event.addListener(map, 'drag', function() {
		     		mk.setPosition(map.getCenter());
		     		cir.setMap(null);
		     	});
		     	
		     	daum.maps.event.addListener(map, 'dragend', function() {
		     		cir.setMap(map);
		     		cir.setPosition(map.getCenter());
		     		$('#lng').val(map.getCenter().getLng());
			     	$('#lat').val(map.getCenter().getLat());
			     	sendAjax();
		     	});
				
			</script>
		</c:if>
		 </li>
       	 </ul>
       	 </div>
   	 
       	 <div class="joinup">
       	 	<a href="nezip_insert1.do">
		 		<input type=button value="이전" id="join" class="btn">
		 	</a>
		 	&nbsp;&nbsp;&nbsp;
			<input type="button" value="다음" id="join" class="btn" onclick="location.href='nezip_insert3.do'">
		 </div>		 
	</div>
</div>
<script>
	
	$('input').change(sendAjax);
	
	function sendAjax(){
		$('#saveMsg').html('<strong>저장중입니다...</strong>');
		var data = "";
		$('input:not([type="button"])').each(function(){
			data += $(this).attr('name') + '=' + $(this).val() + "&";
		});
		$.post(
			"SaveInsert2ByAjaxServlet",
			data,
			function(data){
				$('#saveMsg strong').html('저장되었습니다..');
				$('#saveMsg strong').delay(1000).fadeOut(1000);
			}
		)
	}
</script>   
