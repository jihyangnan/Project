<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<div>
	<div style="padding-left: 10px">
		<h2 style="color: #F94B4B;">
			<b>내집 등록 - 5단계</b>
		</h2>

		<div class="service_1" style="padding-top: 20px; font-size: xx-large;">
			<p style="font-size: 24px; color: #565a5c;"></p>
			<h3 style="margin-bottom: 10px; color: #565a5c;">숙소의 1박 가격을
				설정하세요</h3>
			<p style="font-size: 16px; color: #565a5c;">숙소, 편의시설, 손님맞이 수준을
				반영해서 가격을 설정할 수 있습니다.</p>
		</div>


		<div class="service_grid"
			style="padding:10px; border-radius: 10px; color: #96919A">
			<div class="col-sm-12" style="padding-left: 0">
				<p style="margin-bottom: 10px">
					<label style="font-size: 18px; padding-top: 15px;">1박당 가격</label>
				</p>
				<div class="form-inline">
					<div class="form-group">
				    	<label for="price">KWR</label>
				    	<input type="text" class="form-control" id="price" name="price" value="${price}" placeholder="가격을 입력해 주세요">
				  	</div>
 					<div class="col-sm-3" id="saveMsg" style="float: right;text-align: right; padding-right: 20px; color:#59942D;">
 					</div>
				</div>

			</div>
			
			<div class="clearfix"></div>
		</div>
		
		
		<div class="col-sm-12" style="padding-left: 0">
			<h3 style="color:#565a5c;"> 게스트에게 예약이 가능한 날짜를 알려 주세요.</h3>
			<P style="color: #96919A; margin-top: 10px">
				숙소를 검색하는 게스트는 회원님의 달력에서 예약 가능한 날짜를 확인합니다.
			</p>
		</div>
		<div class="clearfix"></div>
		<div class="col-sm-5" style="padding-left: 0">
			<img src="images/calendar.png" class="img-responsive"/>
		</div>
		<div class="col-sm-5 service_box">
			<p style="padding: 40px 0">
				<label style="padding-left: 10px;"> 시작날짜 
				<input type="text" class="form-control startCal" value="${startDay}" name="startDay" placeholder="YYYY/MM/DD">
				</label> 
				<label style="padding-left: 10px;"> 종료날짜
				<c:if test="${empty endDay}">
					<input type="text" class="form-control endCal" name="endDay" placeholder="YYYY/MM/DD" disabled>	
				</c:if>
				<c:if test="${not empty endDay}">
				<input type="text" class="form-control endCal" value="${endDay}" name="endDay" placeholder="YYYY/MM/DD">	
				</c:if>
				</label>
			</p>
		</div>
	</div>


	<div class="joinup">
		<a href="nezip_insert4.do"> <input type=button value="이전" id="join" class="btn"></a>
		&nbsp;&nbsp;&nbsp; 
		<input type="button" value="완료" id="join" class="btn">
	</div>
</div>
<script>
	$(document).ready(function(){
    	var t = new Date();
    	var yy = t.getFullYear();
    	var mm = t.getMonth()+1;
    	var dd = t.getDate();
    	$('.startCal').datepicker({
    		format: 'yyyy/mm/dd',
    		startDate: yy + "/" + mm + "/" + dd,
    		autoclose: true,
    		language: 'kr'
    	}).on('changeDate', function(e){
    		var start = $('.startCal').datepicker('getDate');
    		var end = $('.endCal').datepicker('getDate');
    		$('.endCal').datepicker('setStartDate', start);
    		if(start > end){
    			$('.endCal').datepicker('setDate', $('.startCal').datepicker('getDate'));
    		}
    		$('.endCal').removeAttr('disabled'); 
    		setData();
    	});
    	
    	$('.endCal').datepicker({
    		format: 'yyyy/mm/dd',
    		autoclose: true,
    		language: 'kr'
    	}).on('changeDate', function(e){
    		setData();
    	});
    });
	
	$('input[name="price"]').change(function(){
		var reg = /\D/;
		if(reg.test($(this).val())){
			alert('가격은 숫자로 입력하세요.');
		}else {
			setData();
		}
	});
	
	function setData(){
		$('#saveMsg').html('<strong>저장중입니다...</strong>');
		var data = "";
		$('input[type="text"]').each(function(){
			data += $(this).attr('name') + "=" + $(this).val() + "&";
		});
		$.post(
			"SaveInsert5ByAjaxServlet",
			data,
			function(data){
				$('#saveMsg strong').html('저장되었습니다..');
				$('#saveMsg strong').delay(1000).fadeOut(1000);
			}
		);
	}
</script>