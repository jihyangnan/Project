<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<div>
		
		<div>
			<h2 class="blog_head" align="left">
				<b>내집 등록 - 5단계</b>
			</h2>

			<div class="service_1" style="margin-left: 40px; padding-top:20px; font-size: xx-large;">
				<p style="font-size: 24px; color: #565a5c;"></p>
				<h3 style="margin-bottom: 10px; color:#565a5c;">숙소의 1박 가격을 설정하세요</h3>
				<p style="font-size: 16px; color: #565a5c;">숙소, 편의시설, 손님맞이 수준을
					반영해서 가격을 설정할 수 있습니다.</p>
			</div>

			
			<div class="service_grid"
				style="border: 1px #CFC7D6; margin-top: 20px; border-radius: 10px; margin-bottom: initial;">
				<div class="col-md-6 service_box" style="width:63.9%; margin-left:25px;">

					<p>
						<label style="font-size: 23px; padding-top: 15px;">기본요금</label>
					</p>
					<p style="">
						<label style="font-size: 18px; padding-top: 15px;">1박당 가격</label>
					</p>
					<p>
						<label>KWR</label> <input type="text" name="price1"> <%-- "${dto.price1 }" --%> <label
							style="color: yellowgreen;">추천가격 : 15,000원</label>
					</p>
					
					<p style="padding-top: 15px;">
						<a href="#" data-prevent-default="">주당 및 월당</a>가격을 설정해서 오래 머무는
						게스트에게 할인을 해 줄 수 있습니다.
					</p>
					<hr
						style="margin-top: 50px; margin-bottom: 20px; border: 0; 
						border-top: 1px solid #dce0e0; width:100%; float:left;">

				</div>
				
				<div class="col-md-4 col-md-offset-2  service_box" style="margin:0;">
					<div>
						<div style="top: 154px;">
							<div
								class="help-header-icon-container text-center va-container-h">
								<img
									src="https://a2.muscache.com/airbnb/static/manage_listing/lightbulb2x-8bca59ee335a4dbf1ae2be406fd0693f.png"
									width="50" height="50" class="col-center">
							</div>
							<div class="panel-body">
								<h4 class="text-center">1박당 가격</h4>

								<p>일부 호스트는 낮은 요금으로 시작해서 좋은 후기를 받은 후 요금을 인상합니다. 숙소를 등록한 후 시즌별
									수요를 감안하여 일자별로 요금을 수정할 수 있습니다.</p>
								<p>
									<a href="/help/article/58">청소비</a>와 <a href="/help/article/474">요금
										설정</a>에 대한 추가 정보 - 게시 후 수정할 수 있습니다.
								</p>

							</div>

						</div>
					</div>

				</div>
				<div class="clearfix"></div>

			</div>
			<div class="col-md-6 service_box" style="width:62.3%; margin-left:40px;">

				<p style="">
					<label style="font-size: 21px; padding-top: 15px;">장기 숙박 요금</label>
				</p>

				<p style="padding-top: 15px;">
					<label>주나 월 단위 장기 숙박에는 숙박료를 할인해 주는 것이 좋습니다</label>
				</p>
				<p>
					<label style="font-size: 18px; padding-top: 15px;">주 단위 요금</label>
				</p>
				<p> 
					<label>KWR</label> <input type="text" name="price2"><%-- "${dto.price2 }" --%> <label
						style="color: yellowgreen;">추천가격 : 60,000원</label>
				</p>
				<p style="padding-top: 15px;">
					<label style="font-size: 18px; padding-top: 15px;">월 단위 요금</label>
				</p>
				<p>
					<label>KWR</label> <input type="text" name="price3"><%-- "${dto.price3 }" --%> <label
						style="color: yellowgreen;">추천가격 : 345,000원</label>
				</p>
				<!-- <div style=" text-align:-webkit-center; width: 73%;padding-top: 20px;">
				 <a href="#">
                 <input type="button" value="뒤로"></a>
                 <a href="index.jsp?page=nezip/nezipInsert7.jsp">
                 <input type="button" value="다음">
                 </a>
                 </div> -->
				<hr
						style="margin-top: 40px; margin-bottom: 60px; border: 0; 
						border-top: 1px solid #dce0e0; width:100%; float:left;">


			</div>
			<div class="col-md-4 col-md-offset-2  service_box" style="margin:0;">
				<div>
					<div style="top: 154px; padding-top: 60px;">
						<div class="help-header-icon-container text-center va-container-h">
							<img
								src="https://a2.muscache.com/airbnb/static/manage_listing/lightbulb2x-8bca59ee335a4dbf1ae2be406fd0693f.png"
								width="50" height="50" class="col-center">
						</div>
						<div class="panel-body">
							<h4 class="text-center">장기 숙박 요금</h4>

							<p>장기 예약 시 할인을 제공해 게스트가 장기로 예약하도록 유도하세요.</p>
							<p>
								<a href="/help/article/58">청소비</a>와 <a href="/help/article/474">요금
									설정</a>에 대한 추가 정보 - 게시 후 수정할 수 있습니다.
							</p>

						</div>

					</div>
				</div>

			</div>
			<div class="joinup">
			<a href="nezip_nezipInsert.do?step=4"> 
				<input type=button value="이전" id="join" class="btn">
			</a>
			&nbsp;&nbsp;&nbsp; <a href="nezip_nezipInsert.do?step=6">
				<input type=button value="다음" id="join" class="btn">
			</a>
		</div>
		</div>
	</div>


