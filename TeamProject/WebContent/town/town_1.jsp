<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div class="about_top">
	<div class="container">
		<div style="margin-top: 20px;">
			<div style="float: right; margin-right: 50px;">
				<img src="images/sogae.jpg" style="float: right; width: 80%; margin-right: -10px;">
			</div>

			<div>
				<div   style="border: 1px #CFC7D6; margin-top: 20px;border-radius: 10px;">
				<p style="border-bottom: 2p border-color: gray;">
					<span style="font-size: 35px;padding-right: 5%;">
									불국사</span>
				</p>
				<hr style="margin-top: 30px; margin-bottom: 30px; border: 0; border-top: 1px solid #dce0e0;">

					<div class="col-md-5 service_box" style="float: left;">
						<ul style="list-style: none; margin-top: 10px;">

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
						</ul>
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