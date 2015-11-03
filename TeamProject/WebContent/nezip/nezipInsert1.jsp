<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<form action="nezip_insert1process.do" method="post">
<div>
	<div>

		<h2 class="blog_head" align="left">
			<b>내집 등록 - 1단계</b>
		</h2>

		<div style="margin-left: 40px; margin-top: 15px;">니집내집에 숙소를 등록하고
			호스팅을 시작하세요.</div>
		<div style="float: left; width: 95%; margin-left: 5%; margin-top: 30px;">

			<div
				style="border: 2px solid #f94b4b; border-radius: 10px; padding: 20px;">
				<ul style="list-style: none;">
					<li class="col-sm-4" style="margin-bottom: 10px">
						<div>
							<h4 style="margin-bottom: 10px;">집 유형</h4>
							<select name="houseStyle" id="houseStyle" class="form-control">
							<c:forEach var="homeCategory" items="${homeCateoryList}">
								<option value="${homeCategory.ht_No}">${homeCategory.ht_Name}</option>
							</c:forEach>
								<!-- <option value="1">아파트</option>
								<option value="2">단독주택</option>
								<option value="3">게스트하우스</option>
								<option value="4">빌라</option>
								<option value="5">호텔</option>
								<option value="6">기타</option> -->
							</select>
							<script>
								$('#houseStyle option').each(function(){
									if($(this).val() == '${houseStyle}'){
										$(this).attr("selected", "selected");
									}
								})
							</script>
						</div>
					</li>



					<li class="col-sm-4" style="margin-bottom: 10px">
						<div>
							<h4 style="margin-bottom: 10px;">숙소 유형</h4>
							<select name="roomStyle" id="roomStyle" class="form-control">
							<c:forEach var="roomCategory" items="${roomCateoryList}">
								<option value="${roomCategory.hst_No}">${roomCategory.hst_Name}</option>
							</c:forEach>
								<!-- <option value="1">집전체</option>
								<option value="2">개인실</option>
								<option value="3">다인실</option> -->
							</select>
							<script>
								$('#roomStyle option').each(function(){
									if($(this).val() == '${roomStyle}'){
										$(this).attr("selected", "selected");
									}
								})
							</script>
						</div>
					</li>


					<li class="col-sm-4" style="margin-bottom: 10px">
						<div>
							<h4 style="margin-bottom: 10px;">수용 인원</h4>
							<select id="people" name="people" class="form-control">
								<option value=1 selected>1</option>
								<option value=2>2</option>
								<option value=3>3</option>
								<option value=4>4</option>
								<option value=5>5</option>
								<option value=6>6</option>
								<option value=7>7</option>
							</select>
							<script>
								$('#people option').each(function(){
									if($(this).val() == '${people}'){
										$(this).attr("selected", "selected");
									}
								})
							</script>
						</div>
					</li>

					<li class="col-sm-4" style="margin-bottom: 10px">
						<div>
							<h4 style="margin-bottom: 10px;">침실수</h4>
							<select id="bedroom" name="bedroom" class="form-control">
								<option value=1 selected>1</option>
								<option value=2>2</option>
								<option value=3>3</option>
							</select>
							<script>
								$('#bedroom option').each(function(){
									if($(this).val() == '${bedroom}'){
										$(this).attr("selected", "selected");
									}
								})
							</script>
						</div>
					</li>

					<li class="col-sm-4" style="margin-bottom: 10px">
						<div>
							<h4 style="margin-bottom: 10px;">침대</h4>
							<select id="bed" name="bed" class="form-control">
								<option value=1 selected>1</option>
								<option value=2>2</option>
								<option value=3>3</option>
							</select>
							<script>
								$('#bed option').each(function(){
									if($(this).val() == '${bed}'){
										$(this).attr("selected", "selected");
									}
								})
							</script>
						</div>
					</li>

					<li class="col-sm-4" style="margin-bottom: 10px">
						<div>
							<h4 style="margin-bottom: 10px;">욕실</h4>
							<select id="bathroom" name="bathroom" class="form-control">
								<option value=1 selected>1</option>
								<option value=2>2</option>
								<option value=3>3</option>
							</select>
							<script>
								$('#bathroom option').each(function(){
									if($(this).val() == '${bathroom}'){
										$(this).attr("selected", "selected");
									}
								})
							</script>
						</div>
					</li>

					<li class="clearfix"></li>
				</ul>



				<div style="margin-top: 30px;" class="row">

					<div class="col-sm-6">
						<!-- <div>
							<ul style="list-style: none;">
								<li style="margin-bottom: 5px;"><h4>도시</h4></li>
								<li class="row">
									<div class="col-sm-8">
										<input name="city" type="text" class="form-control">
									</div>
								</li>
							</ul>
						</div> -->

						<div>
							<ul style="list-style: none;">
								<li style="margin-bottom: 5px; margin-top: 10px;"><h4>숙소
										이름</h4></li>
								<li class="row">
									<div class="col-sm-10">
										<input name="housename" value="${housename}" type="text" class="form-control">
									</div>
								</li>
							</ul>
						</div>

						<div>
							<ul style="list-style: none;">
								<li style="margin-bottom: 5px; margin-top: 10px;"><h4>세부사항</h4></li>
								<li class="row">
									<div class="col-sm-10">
										<input name="detail" value="${detail}" type="text" class="form-control">
									</div>
								</li>
							</ul>
						</div>
					</div>

					<div class="col-sm-6">
						<dl>
							<dt>
								<font style="color: #f94b4b; size: 25pt;">내집 등록하시기 전에
									약속해주실 사항들!</font>
							</dt>
							<br />
							<dd style="margin-bottom: 5px;">- 정확한 정보전달은 기본</dd>
							<dd style="margin-bottom: 5px;">- 모든 문의와 예약 요청에 24시간 내에 응답</dd>
							<dd style="margin-bottom: 5px;">- 예약을 확실히 이행 가능할 때만 수락</dd>
							<dd style="margin-bottom: 5px;">- 게스트와 사용할 공동공간을 항상 청결하게 유지</dd>
							<dd>- 다양한 편의시설 준비- 화장지, 시트 등등</dd>
						</dl>
					</div>

				</div>
			</div>


		</div>
	</div>
</div>

<!-- div>
<ul style="list-style:none;">
<li><font style="color:#f94b4b;size:20pt;">등록하시기 전에 읽어볼 손님맞이규칙!</font></li>
<li>정확한 정보전달을 해주세요.</li>
<li>모든  문의와 예약 요청에 24시간 내에 응답해야합니다.</li>
<li>예약을 확실히 이행 가능할 때만 수락하시고, 불가피한 경우 대체 숙소 제공할 수 있도록 도와주세요.</li>
<li>정확한 정보전달을 해주세요.</li>
</ul>
</div>
</div-->

     <div class="joinup"> 
 
 <input type="submit" value="다음" id="join" class="btn">
</div>   
</form>

