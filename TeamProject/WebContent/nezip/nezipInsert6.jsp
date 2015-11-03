<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<form action="nezip_insert6process.do" method="post">
	<div>
		<!-- <div>
			<ul>
				<li class="siteline"><img src="images/homelink.png"
					style="vertical-align: top;"> 내집 등록</li>
			</ul>
		</div> -->
		<div>
			<h2 class="blog_head" align="left">
				<b>내집 등록 - 6단계</b>
			</h2>

			<div class="service_grid"
				style="border: 1px #CFC7D6; margin-top: 20px; border-radius: 10px;">
				<div class="col-md-7 service_box" style="margin-left:25px;">

					<P>
						<label style="font-size: 21px; color:#565a5c;"> 게스트에게 예약이 가능한 날짜를 알려 주세요.</label>
					</p>

					<P>
						<label style="font-size: 16px; padding-top: 3%;"> 언제든지 달력을
							수동으로 업데이트해서 예약 가능 여부를 설정하실 수 있습니다. 일단은 호스팅 계획에 제일 잘 맞는 옵션을 선택하세요.</label>
					</p>


				</div>


				<div class="clearfix"></div>
			</div>
			<div class="service_grid"
				style="border: 1px solid #CFC7D6; margin-top: 20px; border-radius: 10px;">

				<div class="col-sm-5 col-sm-offset-1 service_box">
					
					<p>
						<img src="images/calendar.png" class="img-responsive"/>
					</p>

				</div>
				<div class="col-sm-5 col-sm-offset-1 service_box">
					
					<p style="padding: 40px 0">
						<label style="padding-left: 10px;"> 시작날짜 
						<input type="text" class="form-control datepicker" placeholder="YYYY/MM/DD">
						</label> 
						<label style="padding-left: 10px;"> 종료날짜
						<input type="text" class="form-control datepicker" placeholder="YYYY/MM/DD">	
						</label>
					</p>

				</div>
				<div class="clearfix"></div>
			</div>
			
			<div class="joinup">
			<a href="nezip_insert5.do"> 
				<input type=button value="이전" id="join" class="btn">
			</a>
			&nbsp;&nbsp;&nbsp; 
				<input type="submit" value="완료" id="join" class="btn">
			
		</div>
		</div>
	</div>
	</form>
