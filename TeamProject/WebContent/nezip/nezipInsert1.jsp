<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!-- div class="about_top">
	<div class="container">
		<div>
			<ul>
				<li class="siteline"><img src="images/homelink.png"
					style="vertical-align: top;"> 내집 등록</li>
			</ul>
		</div>
		<div class="about row">
		
			<div class="col-sm-2 aside" style="background: #E2DBDB; padding-left: 0; padding-right: 0">
				<p style="padding: 15px">
					기본설정<i class="fa fa-check" style="float: right"></i>
				</p>
				<p style="padding: 15px">
					주소등록
				</p>
				<p style="padding: 15px">
					편의시설
				</p>
				<p style="padding: 15px">
					사진등록 및 안전
				</p>
				<p style="padding: 15px">
					가격설정
				</p>
				<p style="padding: 15px">
					날짜설정
				</p>
		
			</div>
		
		
			<div class="col-sm-10 article">
			<h2 class="blog_head" align="left">
				<b>내집 등록 - 1단계</b>
			</h2>

			<div style="margin-left: 30px; margin-top: 15px;">에어비앤비에 숙소를
				등록하고 호스팅을 시작하세요.</div>

			<div style="float: left; margin-left: 20px; margin-top: 30px;">

				<div
					style="border: 2px solid #f94b4b; border-radius: 10px; padding: 20px;">
					<div>
						<ul style="list-style: none;">
							<li style="margin-bottom: -10px;"><h4>집 유형
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;숙소 유형&nbsp;&nbsp;&nbsp;&nbsp;수용
									인원</h4></li>
							<li style="margin-top: 10px;"><select name=hs
								style="width: 30%;">
									<option value=1 selected>아파트</option>
									<option value=2>단독주택</option>
									<option value=3>게스트하우스</option>
									<option value=4>빌라</option>
									<option value=5>호텔</option>
									<option value=6>기타</option>
							</select> <select name=rs style="width: 30%;">
									<option value=1 selected>집전체</option>
									<option value=2>개인실</option>
									<option value=3>다인실</option>
							</select> <select name=pp style="width: 20%;">
									<option value=1 selected>1</option>
									<option value=2>2</option>
									<option value=3>3</option>
									<option value=4>4</option>
									<option value=5>5</option>
							</select></li>
						</ul>
					</div>

					<div style="margin-top: 20px;">
						<ul style="list-style: none;">
							<li style="margin-bottom: -10px;"><h4>침실수
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;침대&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;욕실
								</h4></li>
							<li style="margin-top: 10px;"><select name=bdrm
								style="width: 30%;">
									<option value=1 selected>1</option>
									<option value=2>2</option>
									<option value=3>3</option>
									<option value=4>4</option>
							</select> <select name=bed style="width: 20%;">
									<option value=1 selected>1</option>
									<option value=2>2</option>
									<option value=3>3</option>
							</select> <select name=bthrm style="width: 20%;">
									<option value=1 selected>1</option>
									<option value=2>2</option>
									<option value=3>3</option>
							</select></li>
						</ul>
					</div>


					<div style="margin-top: 50px;">
						<div>
							<ul style="list-style: none;">
								<li style="margin-bottom: 5px;"><h4>도시</h4></li>
								<li><input type="text" size=30></li>
							</ul>
						</div>

						<div>
							<ul style="list-style: none;">
								<li style="margin-bottom: 5px; margin-top: 10px;"><h4>숙소
										이름</h4></li>
								<li><input type="text" size=40></li>
							</ul>
						</div>

						<div>
							<ul style="list-style: none;">
								<li style="margin-bottom: 5px; margin-top: 10px;"><h4>세부사항</h4></li>
								<li><input type="text" size=50></li>
							</ul>
						</div>
					</div>

					<div class="joinup">
						<a href="index.jsp?page=nezip/nezipInsert2.jsp"> <input
							type=button value="다음" id="join" class="btn"></a>
					</div>

				</div>

			</div>
			</div>
			<script>
				if(matchMedia('screen and (min-width: 768px)').matches){
					$('div.aside').css('height', $('div.article').css('height'));
				}
			</script>
			<div class="clearfix"></div>
		</div>
	</div>
</div-->
<h2 class="blog_head" align="left">
	<b>내집 등록 - 1단계</b>
</h2>

<div style="margin-left: 30px; margin-top: 15px;">에어비앤비에 숙소를 등록하고
	호스팅을 시작하세요.</div>

<div style="float: left; margin-left: 20px; margin-top: 30px;">

	<div
		style="border: 2px solid #f94b4b; border-radius: 10px; padding: 20px;">
		<div>
			<ul style="list-style: none;">
				<li style="margin-bottom: -10px;"><h4>집 유형
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;숙소 유형&nbsp;&nbsp;&nbsp;&nbsp;수용 인원</h4></li>
				<li style="margin-top: 10px;"><select name=hs
					style="width: 30%;">
						<option value=1 selected>아파트</option>
						<option value=2>단독주택</option>
						<option value=3>게스트하우스</option>
						<option value=4>빌라</option>
						<option value=5>호텔</option>
						<option value=6>기타</option>
				</select> <select name=rs style="width: 30%;">
						<option value=1 selected>집전체</option>
						<option value=2>개인실</option>
						<option value=3>다인실</option>
				</select> <select name=pp style="width: 20%;">
						<option value=1 selected>1</option>
						<option value=2>2</option>
						<option value=3>3</option>
						<option value=4>4</option>
						<option value=5>5</option>
				</select></li>
			</ul>
		</div>

		<div style="margin-top: 20px;">
			<ul style="list-style: none;">
				<li style="margin-bottom: -10px;"><h4>침실수
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;침대&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;욕실
					</h4></li>
				<li style="margin-top: 10px;"><select name=bdrm
					style="width: 30%;">
						<option value=1 selected>1</option>
						<option value=2>2</option>
						<option value=3>3</option>
						<option value=4>4</option>
				</select> <select name=bed style="width: 20%;">
						<option value=1 selected>1</option>
						<option value=2>2</option>
						<option value=3>3</option>
				</select> <select name=bthrm style="width: 20%;">
						<option value=1 selected>1</option>
						<option value=2>2</option>
						<option value=3>3</option>
				</select></li>
			</ul>
		</div>


		<div style="margin-top: 50px;">
			<div>
				<ul style="list-style: none;">
					<li style="margin-bottom: 5px;"><h4>도시</h4></li>
					<li><input type="text" size=30></li>
				</ul>
			</div>

			<div>
				<ul style="list-style: none;">
					<li style="margin-bottom: 5px; margin-top: 10px;"><h4>숙소
							이름</h4></li>
					<li><input type="text" size=40></li>
				</ul>
			</div>

			<div>
				<ul style="list-style: none;">
					<li style="margin-bottom: 5px; margin-top: 10px;"><h4>세부사항</h4></li>
					<li><input type="text" size=50></li>
				</ul>
			</div>
		</div>

		<div class="joinup">
			<a href="index.jsp?page=nezip/nezipInsert2.jsp"> <input
				type=button value="다음" id="join" class="btn"></a>
		</div>

	</div>

</div>