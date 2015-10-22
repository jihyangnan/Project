<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<div class="about_top">
	<div class="container">
			<div>
	       	 <ul>
	       	 <li class="siteline" >
	       	 <img src="images/homelink.png" style="vertical-align:top;"> 내집 등록</li>
	       	 </ul>
	       	 </div>
	       <div class="about">	 
	       	 <h2 class="blog_head" align="left"><b>내집 등록 - 3단계</b></h2>
	       	 <!-- 작업 시작  -->
			 </div>
			<div class="h_regi">

				<div class="regi_form">
					
					<ul>
						<li style="font-size: 15px; margin-left: 20px; margin-top: 10px"><strong>게스트가
								이용할 수 있는 구역의 사진을 올려 주세요.</strong></li>
					</ul>
					<input type="submit"
						style="width: 120px; height: 35px; margin-left: 60px;"
						value="사진추가하기"> <br>
					<div class="image_box">
						<img alt="" src="images/pic1.jpg" class="regi_image"> <img
							alt="" src="images/pic1.jpg" class="regi_image"> <img
							alt="" src="images/pic1.jpg" class="regi_image">
						<p>
							<!-- <button class="regi_btn">뒤로</button>
						<button class="regi_btn">앞으로</button> -->
							<!-- <input type="submit" style="width: 46px;" value="뒤로">
						<input type="submit"style="width: 64px;" value="앞으로"> -->
					</div>

					<br>
					<ul>
						<li style="font-size: 15px; margin-left: 20px; margin-top: 20px"><strong>게스트가
								이용할 수 있는 구역의 안전 체크 리스트를 알려주세요.</strong></li>
					</ul>

					<div id="check_box">
						<label
							style="width: 170px; font-size: 20px; margin-left: 20px; margin-right: 40px;"><strong>안전
								체크 리스트</strong></label><a></a> <br> <input type="checkbox" name="cb1"
							class="ab"> <label for="ab">화재 감지기</label> <input
							type="checkbox" name="cb2" class="ab"> <label for="ab">일산화탄소
							탐지기</label> <input type="checkbox" name="cb3" class="ab"> <label
							for="ab">구급 상자</label>
						<p>
							<input type="checkbox" name="cb4" class="ab"> <label
								for="ab">안전 카드</label> <input type="checkbox" name="cb5"
								class="ab"> <label for="ab">소화기</label>
					</div>
					<ul>
						<li style="font-size: 18px; margin-left: 80px; margin-top: 15px"><strong>비상연락망</strong></li>
					</ul>
					<label style="margin-left: 135px; margin-top: 5px; font-size: 15px"><strong>연락처(1)</strong></label>
						<input style="height: 23px; margin-top: 9px; margin-left: 10px"
							type=text size=2> -
						<input
						style="height: 23px; margin-top: 9px; margin-left: 10px" type=text
						size=5> -
						<input
						style="height: 23px; margin-top: 9px; margin-left: 10px" type=text
						size=5>
					<p>
						<label
							style="margin-left: 135px; margin-top: 0px; font-size: 15px"><strong>연락처(2)</strong></label>
							<input style="height: 23px; margin-top: 5px; margin-left: 10px"
							type=text size=2> -
							<input
							style="height: 23px; margin-top: 5px; margin-left: 10px"
							type=text size=5> -
							<input
							style="height: 23px; margin-top: 5px; margin-left: 10px"
							type=text size=5>
					<p>
				</div>
			</div>
			<div class="joinup">
			<a href="index.jsp?page=nezip/nezipInsert2.jsp"> 
				<input type=button value="이전" id="join" class="btn">
			</a>
			&nbsp;&nbsp;&nbsp; <a href="index.jsp?page=nezip/nezipInsert4.jsp">
				<input type=button value="다음" id="join" class="btn">
			</a>
		</div>
	</div>


</div>
