<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="about_top">
	<div class="container" style="padding: 0px;">
		<div>
			<ul>
				<li class="siteline"><img src="images/homelink.png"
					style="vertical-align: top;"> 우리동네 소개 </li>
			</ul>
		</div>
		<div class="about">
			
			<div >
				<form id="searchForm" class="form-horizontal" method="post" action="town_list.do">
				  <div class="form-group" style="margin:0px; margin-bottom:15px;" >
				    <label class="col-sm-2 control-label">관광타입</label>
				    <div class="col-sm-3" >
				      <select name="contentTypeId" class="form-control" id="typeSelect">
				      	<option value="">타입선택</option>
				      	<option value="12">관광지</option>
				      	<option value="14">문화시설</option>
				      	<option value="15">행사/공연/축제</option>
				      	<option value="25">여행코스</option>
				      	<option value="28">레포츠</option>
				      	<option value="38">쇼핑</option>
				      	<option value="39">음식점</option>
				      </select>
				      <script>
				      	$('select#typeSelect option').each(function(){
				      		if($(this).val() == '${contentTypeId}'){
				      			$(this).attr('selected', 'selected');
				      		}
				      	});
				      </script>
				    </div>
				  </div>
				  <div class="form-group" style="margin:0px; margin-bottom:15px;">
				    <label class="col-sm-2 control-label">서비스분류</label>
				   	<div class="col-sm-3">
				      <select name="cat1" class="form-control" id="cat1Select">
				      	<option value="">대분류</option>
				      	<c:forEach var="cat1Code" items="${cat1CodeList}">
				      		<c:if test="${cat1Code.code == cat1}">
				      		<option value="${cat1Code.code}" selected>${cat1Code.name}</option>
				      		</c:if>
				      		<c:if test="${cat1Code.code != cat1 && cat1Code.name != '숙박'}">
				      		<option value="${cat1Code.code}">${cat1Code.name}</option>
				      		</c:if>
				      	</c:forEach>
				      </select>
				    </div>
				   	<div class="col-sm-3">
				      <select name="cat2" class="form-control" id="cat2Select">
				      	<option value="">중분류</option>
				      	<c:forEach var="cat2Code" items="${cat2CodeList}">
				      		<c:if test="${cat2Code.code == cat2}">
				      		<option value="${cat2Code.code}" selected>${cat2Code.name}</option>
				      		</c:if>
				      		<c:if test="${cat2Code.code != cat2}">
				      		<option value="${cat2Code.code}">${cat2Code.name}</option>
				      		</c:if>
				      	</c:forEach>
				      </select>
				    </div>
				   	<div class="col-sm-3">
				      <select name="cat3" class="form-control" id="cat3Select">
				      	<option value="">소분류</option>
				      	<c:forEach var="cat3Code" items="${cat3CodeList}">
				      		<c:if test="${cat3Code.code == cat3}">
				      		<option value="${cat3Code.code}" selected>${cat3Code.name}</option>
				      		</c:if>
				      		<c:if test="${cat3Code.code != cat3}">
				      		<option value="${cat3Code.code}">${cat3Code.name}</option>
				      		</c:if>
				      	</c:forEach>
				      </select>
				    </div>
				  </div>
				  <div class="form-group" style="margin:0px;">
				    <label class="col-sm-2 control-label">지역</label>
				   	<div class="col-sm-3">
				      <select name="areaCode" class="form-control" id="areaSelect">
				      	<option value="">지역선택</option>
				      	<c:forEach var="area" items="${areaCodeList}">
				      		<c:if test="${area.code == areaCode}">
				      		<option value="${area.code}" selected>${area.name}</option>
				      		</c:if>
				      		<c:if test="${area.code != areaCode}">
				      		<option value="${area.code}">${area.name}</option>
				      		</c:if>
				      	</c:forEach>
				      </select>
				    </div>
				    <div class="col-sm-3">
				      <select name="sigunguCode" class="form-control" id="sigunguSelect">
				      	<option value="">시군구 선택</option>
				      	<c:forEach var="sigungu" items="${sigunguCodeList}">
				      		<c:if test="${sigungu.code == sigunguCode}">
				      		<option value="${sigungu.code}" selected>${sigungu.name}</option>
				      		</c:if>
				      		<c:if test="${sigungu.code != sigunguCode}">
				      		<option value="${sigungu.code}">${sigungu.name}</option>
				      		</c:if>
				      	</c:forEach>
				      </select>
				    </div>
				  </div>
				  <div class="form-group" style="text-align: center; margin:0px; margin-bottom:15px; margin-top:15px;" >
				    <div class="col-sm-offset-2 col-sm-10 " style="width:100%; margin:0px;">
				      <button id="searchBtn" type="submit" class="btn btn-success" 
				      style="padding-left:30px; padding-right:30px;">
				      	검색</button>
				    </div>
				  </div>
				</form>
			</div>
			<script>
			
				$('#areaSelect').change(function(){
					if($(this).val() == 0){
						$('#sigunguSelect').html('<option value="0">시군구 선택</option>');
						return;
					}
					$.ajax({
						url: "town_areaCodeAjax.do?areaCode=" + $(this).val(),
						type: "get",
						dataType: "html",
						success: function(result){
							$('#sigunguSelect option:first-child').nextAll().remove();
							$('#sigunguSelect').append(result);
						}
					});
				});
				
				$('#typeSelect').change(function(){
					$.ajax({
						url: "town_categoryCodeAjax.do?contentTypeId=" + $('#typeSelect').val()
							+ "&cat1=" + ""  
							+ "&cat2=" + "",
						type: "get",
						dataType: "html",
						success: function(result){
							$('#cat1Select option:first-child').nextAll().remove();
							$('#cat1Select').append(result);
							$('#cat2Select option:first-child').nextAll().remove();
							$('#cat3Select option:first-child').nextAll().remove();
						}
					});
				});
				$('#cat1Select').change(function(){
					$.ajax({
						url: "town_categoryCodeAjax.do?contentTypeId=" + $('#typeSelect').val()
							+ "&cat1=" + $('#cat1Select').val()  
							+ "&cat2=" + "",
						type: "get",
						dataType: "html",
						success: function(result){
							$('#cat2Select option:first-child').nextAll().remove();
							$('#cat2Select').append(result);
							$('#cat3Select option:first-child').nextAll().remove();
						}
					});
				});
				$('#cat2Select').change(function(){
					$.ajax({
						url: "town_categoryCodeAjax.do?contentTypeId=" + $('#typeSelect').val()
							+ "&cat1=" + $('#cat1Select').val()  
							+ "&cat2=" + $('#cat2Select').val(),
						type: "get",
						dataType: "html",
						success: function(result){
							$('#cat3Select option:first-child').nextAll().remove();
							$('#cat3Select').append(result);
						}
					});
				});
				
			</script>

			<div id="townList" style="margin-bottom: 30px; margin-top: 40px;">
				<%-- <ul style="border-top: 2px solid; border-color: gray; padding-top: 50px;">
					
					<c:forEach var="town" items="${list}">
					<li class="row" style="padding-left: 10px; padding-right: 10px; margin-bottom: 10px;">
						<div class="col-sm-4">
						<c:if test="${empty town.image }">
							<img src="images/noImage.gif" style="width:100%" class="img-responsive">
						</c:if>
						<c:if test="${not empty town.image }">
							<img src="${town.image}" class="img-responsive" style="max-height: 236px" />
						</c:if>
						</div>
						<div class="col-sm-8">
							<h3 style="margin-top: 25px; margin-bottom: 10px;">${town.title}</h3>
							<p style="margin-top: 8px;">
								${town.addr1} ${town.addr2}
							</p>
							<div class="row" style="margin-top: 8px;">
								<div class="col-sm-5">
									<i class="fa fa-star"></i>&nbsp;조회수: ${town.readCount}
								</div> 
								<div class="col-sm-5">
									<i class="fa fa-pencil"></i>&nbsp;&nbsp;최종수정일: ${town.modDay}
								</div>
							</div>
							<div class="row" style="margin-top: 8px;">
								<div class="col-sm-5">
								<c:if test="${not empty town.tel}">
									<i class="fa fa-phone"></i>&nbsp;전화번호: ${town.tel}
								</c:if>
								</div>
								<div class="col-sm-5">
									<input type="button" value="상세보기" class="btn btn-success btn-sm" 
									 style="background-color: #87d54d; border-color:#87d54d" 
									 onclick="location.href='town_detail.do?contentId=${town.contentId}&contentTypeId=${town.contentTypeId}' ">
								</div>
							</div>
						</div>
					</li>
					</c:forEach>
				</ul> --%>
				<jsp:include page="listPart.jsp" />
				
				<%-- <div class="text-center">
					<ul class="pagination">
					    <li>
					      <a href="#" aria-label="Previous">
					        <span aria-hidden="true">&laquo;</span>
					      </a>
					    </li>
					    <c:forEach var="i" begin="${pageStartNum}" end="${(totalCount > pageEndNum) ? pageEndNum : totalCount}">
					    	<c:if test="${i == requestScope.pageNo }">
					    		<li class="active"><a href="#">${i}</a></li>
					    	</c:if>
					    	<c:if test="${i != requestScope.pageNo }">
					    		<li><a href="#">${i}</a></li>
					    	</c:if>
					    </c:forEach>
					    <li>
					      <a href="#" aria-label="Next">
					        <span aria-hidden="true">&raquo;</span>
					      </a>
					    </li>
					 </ul>
				</div> --%>
				<jsp:include page="pagingPart.jsp" />
				
			</div>
			
			
			
			<script>
				/* $('#searchBtn').click(function(){
					$.ajax({
						url: "town_list.do?reqeustType=ajax&contentTypeId=" + $('#typeSelect').val()
							+ "&cat1=" + $('#cat1Select').val()  
							+ "&cat2=" + $('#cat2Select').val()
							+ "&cat3=" + $('#cat3Select').val()
							+ "&areaCode=" + $('#areaSelect').val()
							+ "&sigunguCode=" + $('#sigunguSelect').val(),
						dataType: 'html',
						success: function(result){
							$('#townList').html(result);
						}
					});
				}); */
			</script>

		</div>
	</div>
</div>