<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="js/nezipInsert4.js"></script>
<%-- <<<<<<< HEAD
	<form action="nezip_insert4process.do" method="post">
	<div >	
	      	 <div>	 
	       	 <h2 class="blog_head" align="left"><b>내집 등록 - 4단계</b></h2>
	       	 <!-- 작업 시작  -->
			 </div>
			<div class="h_regi">
				<div class="regi_form">	
					<ul>
						<li style="font-size: 15px; margin-top: 20px; margin-bottom:10px;">
						<strong>게스트가 이용할 수 있는 구역의 사진을 올려 주세요.</strong>
						</li>
						<li>
						 <div class="fileupload fileupload-new" data-provides="fileupload" 
						 style="border: 1px solid #aeaeae; border-radius: 8px; width:60%;">
						    <span class="btn btn-primary btn-file"><span class="fileupload-new">사진 추가</span>
						    <span class="fileupload-exists">사진 변경</span>         <input type="file" /></span>
						    <span class="fileupload-preview"></span>
						    <a href="#" class="close fileupload-exists" data-dismiss="fileupload" style="float: none">×</a>
						 </div>
 						<!-- <div style="padding-top:10px; padding-bottom:15px; width:100%;">
						<input type="file" class="custom-file-input">
						<font style="font-size:12px; color:#b1b1b1; padding-left:10px;">
						등록할 집의 사진을 올려주세요.</font>
						</div> -->
						</li>
						
						<li>
						 <div class="fileupload fileupload-new" data-provides="fileupload" 
						 style="border: 1px solid #aeaeae; border-radius: 8px; width:60%;">
						    <span class="btn btn-primary btn-file"><span class="fileupload-new">사진 추가</span>
						    <span class="fileupload-exists">사진 변경</span>         <input type="file" /></span>
						    <span class="fileupload-preview"></span>
						    <a href="#" class="close fileupload-exists" data-dismiss="fileupload" style="float: none">×</a>
						 </div>
 						<!-- <div style="padding-top:10px; padding-bottom:15px; width:100%;">
						<input type="file" class="custom-file-input">
						<font style="font-size:12px; color:#b1b1b1; padding-left:10px;">
						등록할 집의 사진을 올려주세요.</font>
						</div> -->
						</li>
						
						<li>
						 <div class="fileupload fileupload-new" data-provides="fileupload" 
						 style="border: 1px solid #aeaeae; border-radius: 8px; width:60%;">
						    <span class="btn btn-primary btn-file"><span class="fileupload-new">사진 추가</span>
						    <span class="fileupload-exists">사진 변경</span>         <input type="file" /></span>
						    <span class="fileupload-preview"></span>
						    <a href="#" class="close fileupload-exists" data-dismiss="fileupload" style="float: none">×</a>
						 </div>
 						<!-- <div style="padding-top:10px; padding-bottom:15px; width:100%;">
						<input type="file" class="custom-file-input">
						<font style="font-size:12px; color:#b1b1b1; padding-left:10px;">
						등록할 집의 사진을 올려주세요.</font>
						</div> -->
						</li>
					</ul>
					<div class="image_box" style="margin-left: 0">
						
						<img alt="" src="images/pic1.jpg" class="regi_image"> 
						<img alt="" src="images/pic1.jpg" class="regi_image"> 
						<img alt="" src="images/pic1.jpg" class="regi_image">
					</div>

					<br>
					<ul>
						<li style="font-size: 15px; margin-top: 20px"><strong>게스트가
								이용할 수 있는 구역의 안전 체크 리스트를 알려주세요.</strong></li>
					</ul>


					 <div>
						<label style="font-size: 20px; margin-top: 10px;">
						<strong>안전 체크 리스트</strong></label><br> 
						<div>							
						<c:forEach var="homeFac" items="${homeFacList}">
		 					<c:if test="${homeFac.hs_Kind == 4}">
		 					<label class="checkbox-inline">
							  <input type="checkbox" id="inlineCheckbox1" name="install1" value="${homeFac.hs_No}"> ${homeFac.hs_Name}
							</label>
		 					</c:if>
		 				</c:forEach>  
======= --%>
<div style="padding-left: 10px">	
      	<h2 style="color: #F94B4B;"><b>내집 등록 - 4단계</b></h2>
	<div>
		<div style="font-size: 15px; margin-top: 20px; margin-bottom:10px;">
			<strong>게스트가 이용할 수 있는 구역의 사진을 올려 주세요.</strong>
		</div>
		<div>
			<form id="imageUploadForm" action="nezip_imageUpload.do" method="post" enctype="multipart/form-data">
				<input type="file" id="photo" name="photo" style="display: none;" />
				<div class="col-sm-3 col-xs-6" style="padding-left: 0">
					<button type="button" class="btn btn-danger" onclick="document.all.photo.click();">
	 					<i class="fa fa-upload"></i> 사진 추가하기
					</button>
				</div> 
				<div class="col-sm-3 col-sm-offset-6 col-xs-6" id="saveMsg" style="min-height: 30px; text-align: right; padding-right: 20px; color:#59942D;"></div>
				<div class="clearfix"></div>
			</form>
			<script src="js/jquery.form.min.js"></script>
			<script>
				$(function() {
					//폼전송
					$('#imageUploadForm').ajaxForm({
						//보내기전 validation check가 필요할경우
						beforeSubmit : function(data, frm, opt) {
							$('#imagebox > div').append('<div class="col-xs-6 col-sm-3 photo-item"><img src="images/loader-images.gif"'  
								+ 'class="img-responsive" style="margin:20px auto; padding-top: 10px;"></div>')
							return true;
						},
						//submit이후의 처리
						success : function(data, statusText) {
							//console.log(data); //응답받은 데이터 콘솔로 출력
							$('#imagebox > div > div:last-child').html(data);
							$('#photo').val(null);
							setData();
						},
						//ajax error
						error : function(e) {
							alert("파일전송 중 에러발생!!");
							console.log(e);
						}
					});
/* >>>>>>> branch 'master' of https://github.com/jihyangnan/Project */
					
					$('#photo').change(function(){
						if($(this).val() != null){
							$('#imageUploadForm').submit();
						}
					})
				});
			</script>
		</div>
		<div class="col-sm-12" id="imagebox" style="border-radius:5px; margin: 20px 0; padding-bottom:20px; border: 2px solid #f94b4b; min-height: 150px">
			<div class="row">
			<c:forEach var="photo" items="${photos}">
				<div class="col-xs-6 col-sm-3 photo-item">
					<img src="upload/${photo}" class="img-responsive" style="padding-top: 20px;height: 136px">
					<button class="delete-photo-btn overlay-btn" data-photo="${photo}" 
						style="position: absolute;top: 30px;right: 20px;width: 30px;height: 30px;padding-top: 3px;border: 0;
					   	border-radius: 2px;opacity: 0.7; background:#000">
					  <i class="fa fa-trash-o" style="color: white"></i>
					</button>
				</div>			
			</c:forEach>
			</div>		
		</div>
			
			<div>
				<div style="font-size: 20px;">
					<strong>안전 체크 리스트</strong>
				</div>
				<div style="font-size: 15px; margin-top: 10px">
					<strong style="color: #A79E9E">게스트가 이용할 수 있는 구역의 안전 체크 리스트를 알려주세요.</strong>
				</div>
				<div>
				<c:forEach var="homeFac" items="${homeFacList}">
	 				<c:if test="${homeFac.hs_Kind == 4}">
	 					<div class="checkbox">
	 						<label>
	 							<input type="checkbox" id="install" name="install" value="${homeFac.hs_No}">
						   		${homeFac.hs_Name}
	 						</label>
						</div>
	 				</c:if>
	 			</c:forEach>  
				</div> 	
             						
				<div style="font-size: 20px; margin: 20px 0"><strong>비상연락망</strong></div>
				
				<div class="form-inline">
				  <div class="form-group">
				    <input type="text" class="form-control" id="phone1" name="phone1" value="${phone1}" placeholder="">
				    <label>―</label>
				    <input type="text" class="form-control" id="phone2" name="phone2" value="${phone2}" placeholder="">
				    <label>―</label>
				    <input type="text" class="form-control" id="phone3" name="phone3" value="${phone3}" placeholder="">
				  </div>
				    
				</div>
				<!-- <label style="margin-top: 5px; font-size: 15px;font-weight: 500;">
						연락처 
				</label>
				<input style="height: 23px; margin-top: 9px; margin-left: 10px" type=text size=5 name=phone1> 
				-<input style="height: 23px; margin-top: 9px; margin-left: 10px" type=text size=5 name=phone2> 
				-<input style="height: 23px; margin-top: 9px; margin-left: 10px" type=text size=5 name=phone3> -->
			</div>
		<div class="joinup">
			<a href="nezip_insert3.do"> 
				<input type=button value="이전" id="join" class="btn">
			</a>
			&nbsp;&nbsp;&nbsp;
			<input type="button" value="다음" id="join" class="btn" onclick="location.href='nezip_insert5.do'">
		</div>
		
	</div>
</div>
<script>
	var facList = '${safetyList}'.split(',');
	$('input[type="checkbox"]').each(function(){
		for(var i=0; i<facList.length; i++){
			if($(this).val() == facList[i]){
				$(this).attr("checked", "checked");
			}
		}
	});


	$(document).on("click", ".delete-photo-btn", function(){
		var photo = $(this).attr('data-photo');
		$(this).parent().remove();
		$.get('deleteImage?name=' + photo, setData);
	});
	
	$('input[type="text"], input[type="checkbox"]').change(setData);
	
	function setData(){
		$('#saveMsg').html('<strong>저장중입니다...</strong>');
		var data = "";
		$('input[type="text"], input[type="checkbox"]:checked').each(function(){
			data += $(this).attr('name') + "=" + $(this).val() + "&";
		})
		$('.delete-photo-btn').each(function(){
			data += "photo=" + $(this).attr('data-photo') + "&";
		});
		$.post(
			"SaveInsert4ByAjaxServlet",
			data,
			function(data){
				$('#saveMsg strong').html('저장되었습니다..');
				$('#saveMsg strong').delay(1000).fadeOut(1000);
			}
		);
	}
	
</script>   
