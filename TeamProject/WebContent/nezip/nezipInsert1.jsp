<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div>
	<div>
		<h2 class="blog_head" align="left">
			<b>내집 등록 - 1단계</b>
		</h2>

		<div style="margin-left: 40px; margin-top: 15px; font-size: 25px; font-weight: bold; color:#565a5c">니집내집에 숙소를 등록하고
			호스팅을 시작하세요.</div>
		<div style="margin-left: 5%; margin-top: 30px;">

			<div style="border: 2px solid #f94b4b; border-radius: 10px; padding: 20px 0;">
				<ul style="list-style: none;">
					<li class="col-sm-4" style="margin-bottom: 10px">
						<div>
							<h4 style="margin-bottom: 10px;">집 유형</h4>
							<select name="houseStyle" id="houseStyle" class="form-control">
							<c:forEach var="homeCategory" items="${homeCateoryList}">
								<option value="${homeCategory.ht_No}">${homeCategory.ht_Name}</option>
							</c:forEach>
								
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
							<h4 style="margin-bottom: 10px;">
								숙소 유형
								<i class="fa fa-question-circle" data-toggle="tooltip" data-placement="right" 
								title="<dl class='panel-body text-left'><dt style='color:#B99FCE'>집 전체</dt>
					    		<dd style='margin-bottom:10px'>집 혹은 아파트 전체를 사용하는 숙소</dd>
					            <dt style='color:#B99FCE'>개인실</dt>
					            <dd style='margin-bottom:10px'>단독 침실을 사용하지만 기타 공간을 공유하는 숙소</dd>
					            <dt style='color:#B99FCE'>다인실</dt>
					  			<dd>회원님의 방을 같이 쓰거나 회원님의 방이 공동 공간으로 사용되는 숙소</dd>
					          	</dl>"></i>
							</h4>
							
							<select name="roomStyle" id="roomStyle" class="form-control">
							<c:forEach var="roomCategory" items="${roomCateoryList}">
								<option value="${roomCategory.hst_No}">${roomCategory.hst_Name}</option>
							</c:forEach>
								<%-- <option value="1">집전체</option>
								<option value="2">개인실</option>
								<option value="3">다인실</option> --%>
							</select>
							<script>
								$('[data-toggle="tooltip"]').tooltip({
									html: true,
									container: $('[data-toggle="tooltip"]').parent().parent().parent().parent()
							  	});
								
								$(function(){
									$('#roomStyle option').each(function(){
										if($(this).val() == '${roomStyle}'){
											$(this).attr("selected", "selected");
											checkRoomStyle();
										}
									});
								});
								
								
								$('#roomStyle').change(checkRoomStyle);
								
								function checkRoomStyle(){
									if($('#roomStyle').val() != 1){
										$('#bedroom option:first-child').attr("selected", "selected");
										$('#bedroom').tooltip({
											html: true,
											title: '침실수는 숙소 유형이 <strong>집전체</strong>일 때만 설정 가능합니다.',
											placement: 'bottom'
									  	});
										$('#bedroom').attr("disabled", "disabled");
										$('#bedroom').tooltip('show');
									} else {
										$('#bedroom').removeAttr("disabled");
										$('#bedroom').tooltip('destroy');
									}
								}
							</script>
						</div>
					</li>


					<li class="col-sm-4" style="margin-bottom: 10px">
						<div>
							<h4 style="margin-bottom: 10px;">수용 인원</h4>
							<select id="people" name="people" class="form-control">
								<c:forEach var="i" begin="1" end="16" varStatus="status">
						        	<option value="${i}">${i}<c:if test="${status.last}">+</c:if></option>
						      	</c:forEach>
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
					<li class="clearfix"></li>

					<li class="col-sm-4" style="margin-bottom: 10px">
						<div>
							<h4 style="margin-bottom: 10px;">침실수</h4>
							<select id="bedroom" name="bedroom" class="form-control">
								<c:forEach var="i" begin="1" end="11" varStatus="status">
						        	<option value="${i}">${i}<c:if test="${status.last}">+</c:if></option>
						      	</c:forEach>
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
								<c:forEach var="i" begin="1" end="16" varStatus="status">
						        	<option value="${i}">${i}<c:if test="${status.last}">+</c:if></option>
						      	</c:forEach>
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
								<c:forEach var="i" begin="1" end="11" varStatus="status">
						        	<option value="${i}">${i}<c:if test="${status.last}">+</c:if></option>
						      	</c:forEach>
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

				<div id="saveMsg" style="min-height: 30px; text-align: right; padding-right: 20px; color:#59942D; ">
				</div>
				
				<div>

					<ul class="col-sm-6" style="list-style: none;">
						<li style="margin-bottom: 10px; margin-top: 10px;">
							<h4 style="margin-bottom: 10px">숙소 이름</h4>
							<div>
								<input name="housename" value="${housename}" type="text" placeholder="숙소이름이 없다면 참신한 이름으로 지어주세요"
									class="form-control">
							</div>
						</li>
						<li style="margin-bottom: 5px; margin-top: 10x;">
							<h4 style="margin-bottom: 10px">세부사항</h4>
							<textarea class="form-control" name="detail" rows="6" placeholder="게스트에게 알려야 할 기타사항을 적어주세요">${detail}</textarea>
						</li>
						
					</ul>
					
					<div class="col-sm-6" style="padding-top: 10px">
			       			<div>
								<h4 style="margin-bottom: 10px">숙소 이용규칙</h4>
							<textarea class="form-control" name="houserule" rows="3" placeholder="게스트에게  바라는 점을 적어주세요">${houserule}</textarea>
							</div>
			       
			       </div>

					<div class="col-sm-6" style="padding-top: 30px">
						<dl>
							<dt style="margin-bottom: 10px; color: #f94b4b; font-size: size: 22pt;">
								내집 등록하시기 전에 약속해주세요.
							</dt>
							<dd style="margin-bottom: 5px;font-size:9pt; "> 모든 문의와 예약 요청에 24시간 내에 응답해주실 것과 </dd>
							<dd style="margin-bottom: 5px;font-size:9pt; "> 따듯한 마음으로 게스트를 맞을 것을 약속하시겠습니까?</dd>
							<!-- <dd style="margin-bottom: 10px; color: #f94b4b; font-size: size: 25pt;">
							그렇다면 '다음' 버튼을 눌러주세요!</dd> -->
						</dl>
					</div>
					
			       
					<div class="clearfix"></div>
	
				</div>
			</div>

		</div>
	</div>
</div>

<div class="joinup"> 
	<input type="button" value="다음" id="join" class="btn" onclick="location.href='nezip_insert2.do'">
</div>
<script>
	// 변경시 세션에 저장..
	$('input, select, textarea').change(function(){
		$('#saveMsg').html('<strong>저장중입니다...</strong>');
		var data = "";
		$('input:not([type="submit"]), select, textarea').each(function(){
			data += $(this).attr('name') + '=' + $(this).val() + "&";
		});
		$.post(
			"SaveInsert1ByAjaxServlet",
			data,
			function(data){
				$('#saveMsg strong').html('저장되었습니다..');
				$('#saveMsg strong').delay(1000).fadeOut(1000);
			}
		)
	})
</script>   

