<%@page import="com.nizipnezip.town.dao.TownCodeDTO"%>
<%@page import="com.nizipnezip.town.dao.TownListDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.nizipnezip.town.dao.TownListSearchValues"%>
<%@page import="com.nizipnezip.town.dao.TownDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	TownListSearchValues values = new TownListSearchValues();
	values.setAreaCode("1");
	values.setCurrPage(1);
	values.setContentTypeId("10");
	values.setContentTypeId("12");
	List<TownListDTO> list = TownDAO.getTownList(values);
	request.setAttribute("list", list);
	List<TownCodeDTO> areaCodeList = TownDAO.getAreaCodeList("");
	request.setAttribute("areaCodeList", areaCodeList);
	List<TownCodeDTO> categoryCodeList = TownDAO.getCategoryCodeList("", "", "");
	request.setAttribute("categoryCodeList", categoryCodeList);
	
%>
<div class="about_top">
	<div class="container">
		<div>
			<ul>
				<li class="siteline"><img src="images/homelink.png"
					style="vertical-align: top;"> 우리동네 소개 / 서울</li>
			</ul>
		</div>
		<div class="about">
			<!-- <dl style="float: right; text-align:center; margin-right: 30px; margin-bottom: -50px; margin-top: 10px;">
				<dd>
					<label><input type="text" placeholder="지역을 입력하세요" size=30>
					</label> <input type="submit" value="검색">
				</dd>
			</dl> -->
			<div >
				<div class="form-horizontal">
				  <div class="form-group">
				    <label class="col-sm-2 control-label">관광타입</label>
				    <div class="col-sm-3">
				      <select class="form-control" id="typeSelect">
				      	<option value="">타입선택</option>
				      	<option value="12">관광지</option>
				      	<option value="14">문화시설</option>
				      	<option value="15">행사/공연/축제</option>
				      	<option value="25">여행코스</option>
				      	<option value="28">레포츠</option>
				      	<option value="38">쇼핑</option>
				      	<option value="39">음식점</option>
				      </select>
				    </div>
				  </div>
				  <div class="form-group">
				    <label class="col-sm-2 control-label">서비스분류</label>
				   	<div class="col-sm-3">
				      <select class="form-control" id="cat1Select">
				      	<option value="">대분류</option>
				      	<c:forEach var="categoryCode" items="${categoryCodeList}">
				      		<option value="${categoryCode.code}">${categoryCode.name}</option>
				      	</c:forEach>
				      </select>
				    </div>
				   	<div class="col-sm-3">
				      <select class="form-control" id="cat2Select">
				      	<option value="">중분류</option>
				      </select>
				    </div>
				   	<div class="col-sm-4">
				      <select class="form-control" id="cat3Select">
				      	<option value="">소분류</option>
				      </select>
				    </div>
				  </div>
				  <div class="form-group">
				    <label class="col-sm-2 control-label">지역</label>
				   	<div class="col-sm-3">
				      <select class="form-control" id="areaSelect">
				      	<option value="0">지역선택</option>
				      	<c:forEach var="areaCode" items="${requestScope.areaCodeList}">
				      		<option value="${areaCode.code}">${areaCode.name}</option>
				      	</c:forEach>
				      </select>
				    </div>
				    <div class="col-sm-3">
				      <select class="form-control" id="sigunguSelect">
				      	<option value="0">시군구 선택</option>
				      </select>
				    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
				      <button type="submit" class="btn btn-default">검색</button>
				    </div>
				  </div>
				</div>
			</div>
			<script>
				$('#areaSelect').change(function(){
					if($(this).val() == 0){
						$('#sigunguSelect').html('<option value="0">시군구 선택</option>');
						return;
					}
					$.ajax({
						url: "town/areaCodeAjax.jsp?areaCode=" + $(this).val(),
						type: "get",
						dataType: "html",
						success: function(result){
							$('#sigunguSelect').html(result);
						}
					});
				});
				
				$('#typeSelect').change(function(){
					$.ajax({
						url: "town/categoryCodeAjax.jsp?contentTypeId=" + $('#typeSelect').val()
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
						url: "town/categoryCodeAjax.jsp?contentTypeId=" + $('#typeSelect').val()
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
						url: "town/categoryCodeAjax.jsp?contentTypeId=" + $('#typeSelect').val()
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

			<div style="margin-bottom: 30px; margin-top: 40px;">
				<ul style="border-top: 2px solid; border-color: gray; padding-top: 50px;">
					
					
					<c:forEach var="town" items="${list}">
					<li class="row" style="padding-left: 10px; padding-right: 10px; margin-bottom: 10px;">
						<div class="col-sm-4">
						<c:if test="${empty town.image }">
							<img src="images/noImage.gif" style="width:100%" class="img-responsive">
						</c:if>
						<c:if test="${not empty town.image }">
							<img src="${town.image}" class="img-responsive">
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
									 onclick="location.href='index.jsp?page=town/town_detail.jsp&contentId=${town.contentId}&contentTypeId=${town.contentTypeId}' ">
								</div>
							</div>
						</div>
					</li>
					
					</c:forEach>
				</ul>
			</div>


		</div>
	</div>
</div>