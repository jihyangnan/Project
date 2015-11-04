<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
var i=0;
$(function(){
	$('#reviewBtn').click(function(){
		var msg=$('#review_content').val();
		if(msg=="")
		{
			alert("후기를 입력하세요");
			$('#review_content').focus();
			return;
		}
		$('#re_new_frm').submit();
});
	/* 
function replyUpdateClick(no)
{
	var msg=$('#umsg'+no).val();
	if(msg=="")
	{
		alert("후기를 입력하세요");
		$('#umsg'+no).focus();
		return;
	}
	$('#re_update_frm'+no).submit();
} */
</script>
<div class="about_top">
		<div class="container" style="margin: 400;">
			<div class="jumbotron">
				<div class="row">
					<div class="sp-slideshow">
						<input id="button-1" type="radio" name="radio-set"
							class="sp-selector-1" checked="checked"> <label
							for="button-1" class="button-label-1"></label> <input
							id="button-2" type="radio" name="radio-set" class="sp-selector-2">
						<label for="button-2" class="button-label-2"></label> <input
							id="button-3" type="radio" name="radio-set" class="sp-selector-3">
						<label for="button-3" class="button-label-3"></label> <input
							id="button-4" type="radio" name="radio-set" class="sp-selector-4">
						<label for="button-4" class="button-label-4"></label> <input
							id="button-5" type="radio" name="radio-set" class="sp-selector-5">
						<label for="button-5" class="button-label-5"></label> <label
							for="button-1" class="sp-arrow sp-a1"></label> <label
							for="button-2" class="sp-arrow sp-a2"></label> <label
							for="button-3" class="sp-arrow sp-a3"></label> <label
							for="button-4" class="sp-arrow sp-a4"></label> <label
							for="button-5" class="sp-arrow sp-a5"></label>

						<div class="sp-content">
							<div class="sp-parallax-bg"></div>
							<ul class="sp-slider clearfix">
							<c:forEach var="pDto" items="${plist }">
								<li><img src="${pdto.p_file }" alt="image01"></li> 
							</c:forEach>
							</ul>
						</div>
						<!-- sp-content -->

					</div>

					<h3 class="col-md-4"
						style="text-align: center; padpadding: 2px; font-size: 13pt; padding-left: 100px;">
						${dto.h_nHome}</h3>
					<span class="col-md-5"
						style="padding: 2px; font-size: 10pt; color: #f08080;">
						${dto.h_Addr1}</span> <span class="col-md-2"
						style="text-align: center; padding: 7px; font-size: 9pt; color: #778899"></span>
				</div>
				<br> <br>
				<div class="row">
					<span class="col-md-3"
						style="text-align: center; padding: 2px; font-size: 15pt; color: #778899;">
						상세설명</span>
				</div>
				<br> <br> <pre style="padding: 100px; font-size: 10pt;">
					${dto.h_hContent}</pre>
				<div>
					<hr
						style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;" />
				</div>
				<div class="row">
					<div>
						<div class="row">
							<div class="col-md-3 text-muted">
								<span
									style="position: relative; min-height: 1px; padding-left: 12.5px; padding-right: 12.5px;">숙소</span>
							</div>
							<div class="col-md-9">
								<div class="row">
									<div class="col-md-6">
										<div>
											<span data-tooltip-text="숙박 유형입니다">숙소 유형 :</span> 
											<span> </span> <strong>${dto.h_rType}</strong>
										</div>
										<div>
											<span data-tooltip-text="보고 계신 숙소의 집 유형입니다">집 유형:</span> 
											<span> </span> <strong>${dto.h_Type}</strong>
										</div>
										<div>
											<span data-tooltip-text="숙박이 가능한 인원입니다 ">숙박가능 인원:</span> 
											<span> </span> <strong>${dto.h_nPerson}</strong>
										</div>
										<div>
											<span data-tooltip-text="침실의 갯수 입니다">침실:</span> 
											<span> </span> <strong>${dto.h_nRoom}</strong>
										</div>
									</div>
									<div class="col-md-6">
										<div>
											<span data-tooltip-text="화장실의 갯수입니다">화장실:</span> 
											<span> </span> <strong>${dto.h_nBath}</strong>
										</div>
										<div>
											<span data-tooltip-text="침대의 갯수입니다">침대:</span> 
											<span> </span> <strong>${dto.h_nBed}</strong>
										</div>
										<div><!-- 체크인,체크아웃시간은 집주인과 상의해서 유동적으로 할 수 있게 -->
											<span data-tooltip-text="예약시작 날짜입니다">예약시작일:</span> 
											<span> </span> <strong>${dto.h_Startday}</strong>
										</div>
										<div>
											<span data-tooltip-text="예약마감 날짜입니다">예약마감일:</span> <span>
											</span> <strong>${dto.h_Endday}</strong>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div>
					<hr
						style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;" />
				</div>
				<div class="row">
					<div>
						<div class="row">
							<div class="col-md-3 text-muted">
								<span
									style="position: relative; min-height: 1px; padding-left: 12.5px; padding-right: 12.5px;">시설</span>
							</div>
							<div class="col-md-9">
							<%-- <c:if> --%>
								<div class="row">
									<div class="col-md-6" name="fac1">
										<div>
											<span>부엌</span>
										</div>
										<div>
											<span>TV</span>
										</div>
										<div>
											<span>샴푸</span>
										</div>
										<div>
											<span>난방</span>
										</div>
										<div>
											<span>에어컨</span>
										</div>
										<div>
											<span>세탁기</span>
										</div>
									</div>
									<div class="col-md-6" name="fac2">
										<div>
											<span>건조기</span>
										</div>
										<div>
											<span>무료주차</span>
										</div>
										<div>
											<span>무선인터넷</span>
										</div>
										<div>
											<span>욕조</span>
										</div>
										<div>
											<span>소화기</span>
										</div>
									</div>
								</div>
								<%-- </c:if> --%>
							</div>
						</div>
					</div>
				</div>
				<hr
					style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;" />
				<div class="row react-house-rules" id="house-rules">
					<div class="col-md-3 text-muted">
						<div class="text-muted">
							<span>숙소 이용규칙</span>
						</div>
					</div>
					<div class="col-md-9">
						<div class="react-expandable expanded">
							<div class="expandable-content">
								<div>
									<span>숙소내에서는 담배를 피우거나 소란스럽게 해도 됩니다.</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<hr style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;" />
				
				<div style="text-align: center; font-size: 15pt;font-style: oblique;"> 후기 </div>
				<hr style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;" />
			<div id="review" class="row review">			
				<div class="col-md-3" style="padding-top: 50px;">
						<span></span>
				</div>
				<div class="col-md-9">
							<div class="row">
								<div class="col-md-3">
									<div class="name">
										<a href="http://op.gg">MileSeven</a>
									</div>
								</div>
								<div class="col-md-9" style="padding-top: 35px;">
									<div>
										<div class="review-text">좋아유</div>
									</div>
								</div>
							</div>
							<hr style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;" />
				</div>				
				<div class="review insert">
						<div class="col-md-3"></div> 
						<div class="col-md-9" style="padding-top: 35px;"> 
						<div>
						<form method=post action="review_new_insert.do" id="re_new_frm">
						<textarea id="review_content"name="review_content" onclick="if(this.value==this.defaultValue){this.value=''}"
								onblur="if (this.value == '') { this.value = this.defaultValue; }"
								style="width: 430px; height: 50px; font-size: 10pt;">후기를 작성해주세요</textarea>
						<input type=hidden name=re_hno value="">
         				<input type=hidden name=page value="">				
						<input id="reviewBtn" type="button" value="후기 입력" style="width: 80px; height: 50px; font-size: 9pt; color: #f08080;">
						</form>
						</div>
						</div>						
				</div>				
			</div>
				<hr style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;" />
				<p></p>
				<hr style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;" />
				<p></p>
				<div class="row"
					style="width: 1020px; margin-left: 4px; border-color: #98fb98; border: 1pt; border-style: ridge; height: 40px; background-color: #98fb98; color: black; line-height: 35px;">
					<span class="col-md-2" style="font-size: 12pt; text-align: right;">가격</span>
					<span class="col-md-1" style="font-size: 10pt; color: #a9a9a9;"></span>
					<span class="col-md-7" style="font-size: 12pt; text-align: left;">105000원</span>
					<span class="col-md-2" style="font-size: 12pt;">1박</span>
				</div>
				<hr style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;" />
				<p></p>
				<div class="row"
					style="height: 50px; font-size: 13pt;">
					<span class="col-md-4"><input type="text" class="form-control datepicker" placeholder="체크인"></span> 
					<span class="col-md-4" style="border-color: #9400d3;"><input type="text" class="form-control datepicker" placeholder="체크아웃"></span>
					 <span class="col-md-4" style="border-color: #9400d3;">
					 <select class="form-control">
					        <option>1</option>
					        <option>2</option>
					        <option>3</option>
					        <option>4</option>
					        <option>5</option>
					        <option>6</option>
					        <option>7</option>
					      </select></span>
				</div>
				<div id="aaa"
					style="border-color: #98fb98; text-align: center; border: 1pt; border-style: ridge; height: 40px; background-color: #98fb98; color: white; line-height: 35px;">
					<a href="reserve.html">예약요청</a>
				</div>
				<hr style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;" />
				<div id="jjj"
					style="border-color: #98fb98; text-align: center; border: 1pt; border-style: ridge; height: 40px; background-color: #98fb98; color: white; line-height: 35px;">
					<a href="jjim.html">찜하기</a>
				</div>
				<hr style="margin-top: 15px; margin-bottom: 15px; border: 0; border-top: 1px solid #dce0e0;" />
			</div>
			<div class="row text-right">
				<a href="reserve_list.do"><button type="button" class="btn search-btn" >목록보기</button></a>
			</div>	
		</div>
		</div>