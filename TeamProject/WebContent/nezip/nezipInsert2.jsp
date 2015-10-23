<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <div >
    	
       <div>	 
       	 <h2 class="blog_head" align="left"><b>내집 등록 - 2단계</b></h2>
       	 <!-- 작업 시작  -->
       	 <div style="padding-left:40px;">
       	 <ul>
       	 <li style="padding-top:20px; font-size:25px; font-weight:600; color:#565a5c;">
       	 게스트가 숙소를 찾을 수 있도록 위치 정보를 제공하세요.</li>
       	 <li style="color:#82888a; font-size:13px;">게스트는 이 정보를 활용하여 숙소를 찾습니다.</li>
       	 
       	 <li style="padding-top:20px; font-size:14px; font-weight:600;">
       	<input type="text" id="sample4_postcode" placeholder="우편번호" class="addrsearch">
		<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
		<div style="padding-top:3px;">
		<input type="text" id="sample4_roadAddress" placeholder="도로명주소" style="width:40%;" class="addrsearch">
		<input type="text" id="sample4_jibunAddress" placeholder="지번주소" style="width:30%;" class="addrsearch">
		</div>
		<span id="guide" style="color:#999"></span>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample4_roadAddress').value = fullRoadAddr;
                document.getElementById('sample4_jibunAddress').value = data.jibunAddress;
                
                

                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    //예상되는 도로명 주소에 조합형 주소를 추가한다.
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

                } else {
                    document.getElementById('guide').innerHTML = '';
                }
                
                
             	// 주소-좌표 변환 객체를 생성합니다
				var geocoder = new daum.maps.services.Geocoder();
			
				// 주소로 좌표를 검색합니다
				geocoder.addr2coord($('#sample4_roadAddress').val(), function(status, result) {
			
			    // 정상적으로 검색이 완료됐으면 
			    if (status === daum.maps.services.Status.OK) {
			        var coords = new daum.maps.LatLng(result.addr[0].lat, result.addr[0].lng);
			
			        // 결과값으로 받은 위치를 마커로 표시합니다
			        var marker = new daum.maps.Marker({
			            map: map,
			            position: coords
			        });
			
			        // 인포윈도우로 장소에 대한 설명을 표시합니다
			        var infowindow = new daum.maps.InfoWindow({
			            content: '<div style="padding:5px; text-align:center; font-weight:700;">나의 집(My House)</div>'
			        });
			        infowindow.open(map, marker);
			        
			        map.setCenter(new daum.maps.LatLng(result.addr[0].lat, result.addr[0].lng));

			    } 
				}); 
            }
        }).open();
    }
</script>
		 </li>
		 
		 <li style="padding-top:20px;">
		 	<font style="color:#f94b4b;">지도상에 표시된 장소가 입력한 주소와 일치하는지 확인해 주세요!</font>
		 	<div id="map" style="width:80%;height:330px;"></div>
			
			<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=37aec586afb9fc326be8b882a49c024d&libraries=services"></script>
			
			
			<script>
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			    mapOption = {
			        center: new daum.maps.LatLng(37.5530754, 126.9368926), // 지도의 중심좌표
			        level: 3 // 지도의 확대 레벨
			    };  
			
			// 지도를 생성합니다    
			var map = new daum.maps.Map(mapContainer, mapOption); 
			
			// 마커가 표시될 위치입니다 
			var markerPosition  = new daum.maps.LatLng(37.5530754, 126.9368926); 

			// 마커를 생성합니다
			var marker = new daum.maps.Marker({
			    position: markerPosition
			});

			// 마커가 지도 위에 표시되도록 설정합니다
			marker.setMap(map);
			
			
			$('#sample4_roadAddress').blur(function(){
				// 주소-좌표 변환 객체를 생성합니다
				var geocoder = new daum.maps.services.Geocoder();
			
				// 주소로 좌표를 검색합니다
				geocoder.addr2coord($(this).val(), function(status, result) {
			
			    // 정상적으로 검색이 완료됐으면 
			    if (status === daum.maps.services.Status.OK) {
			        var coords = new daum.maps.LatLng(result.addr[0].lat, result.addr[0].lng);
			
			        // 결과값으로 받은 위치를 마커로 표시합니다
			        var marker = new daum.maps.Marker({
			            map: map,
			            position: coords
			        });
			
			        // 인포윈도우로 장소에 대한 설명을 표시합니다
			        var infowindow = new daum.maps.InfoWindow({
			            content: '<div style="padding:5px; text-align:center; font-weight:700;">나의 집(My House)</div>'
			        });
			        infowindow.open(map, marker);
			    } 
			}); 
			
			})
			</script>
		 </li>
       	 </ul>
       	 </div>
   	 
       	  <div class="joinup">
       	   <a href="index.jsp?page=nezip/nezipInsert1.jsp">
		 <input type=button value="이전" id="join" class="btn"></a>
		 &nbsp;&nbsp;&nbsp;
		 <a href="index.jsp?page=nezip/nezipInsert3.jsp">
		<input type=button value="다음" id="join" class="btn"></a>
		 </div>		 
	</div>
</div>
