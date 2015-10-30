<%@page import="java.util.Map"%>
<%@page import="com.nizipnezip.town.dao.TownCodeDTO"%>
<%@page import="com.nizipnezip.town.dao.TownListDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.nizipnezip.town.dao.TownListSearchValues"%>
<%@page import="com.nizipnezip.town.dao.TownDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String areaCode = request.getParameter("areaCode");
	String sigunguCode = request.getParameter("sigunguCode");
	String currPage = request.getParameter("currPage");
	String contentTypeId = request.getParameter("contentTypeId");
	String cat1 = request.getParameter("cat1");
	String cat2 = request.getParameter("cat2");
	String cat3 = request.getParameter("cat3");

	TownListSearchValues values = new TownListSearchValues();
	if(areaCode != null && !(areaCode.equals("0"))){
		values.setAreaCode(areaCode);
	}
	if(sigunguCode != null){
		values.setSigunguCode(sigunguCode);
	}
	if(currPage != null){
		values.setCurrPage(currPage);
	}
	if(contentTypeId != null){
		values.setContentTypeId(contentTypeId);
	}
	if(cat1 != null){
		values.setCat1(cat1);
	}
	if(cat2 != null){
		values.setCat2(cat2);
	}
	if(cat3 != null){
		values.setCat3(cat3);
	}
	Map<String, Object> returnMap = TownDAO.getTownsMap(values);
	List<TownListDTO> list = (List<TownListDTO>)returnMap.get("list");
	int totalCount = (int)returnMap.get("totalCount");
	int pageNo = (int)returnMap.get("pageNo");
	int numOfRows = (int)returnMap.get("numOfRows");
	int totalPage = (int)Math.ceil((totalCount/(numOfRows*1.0)));
	int blockSize = 5;
	int pageStartNum = (pageNo-1)/5*5+1;
	int pageEndNum = pageStartNum + blockSize - 1;
	request.setAttribute("pageNo", pageNo);
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
				    </div>
				  </div>
				  <div class="form-group">
				    <label class="col-sm-2 control-label">서비스분류</label>
				   	<div class="col-sm-3">
				      <select name="cat1" class="form-control" id="cat1Select">
				      	<option value="">대분류</option>
				      	<c:forEach var="categoryCode" items="${categoryCodeList}">
				      		<option value="${categoryCode.code}">${categoryCode.name}</option>
				      	</c:forEach>
				      </select>
				    </div>
				   	<div class="col-sm-3">
				      <select name="cat2" class="form-control" id="cat2Select">
				      	<option value="">중분류</option>
				      </select>
				    </div>
				   	<div class="col-sm-4">
				      <select name="cat3" class="form-control" id="cat3Select">
				      	<option value="">소분류</option>
				      </select>
				    </div>
				  </div>
				  <div class="form-group">
				    <label class="col-sm-2 control-label">지역</label>
				   	<div class="col-sm-3">
				      <select name="areaCode" class="form-control" id="areaSelect">
				      	<option value="">지역선택</option>
				      	<c:forEach var="areaCode" items="${requestScope.areaCodeList}">
				      		<option value="${areaCode.code}">${areaCode.name}</option>
				      	</c:forEach>
				      </select>
				    </div>
				    <div class="col-sm-3">
				      <select name="sigunguCode" class="form-control" id="sigunguSelect">
				      	<option value="">시군구 선택</option>
				      </select>
				    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
				      <button id="searchBtn" type="submit" class="btn btn-default">검색</button>
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
							$('#sigunguSelect option:first-child').nextAll().remove();
							$('#sigunguSelect').append(result);
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

			<div id="townList" style="margin-bottom: 30px; margin-top: 40px;">
				<ul style="border-top: 2px solid; border-color: gray; padding-top: 50px;">
					
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
									 onclick="location.href='index.jsp?page=town/town_detail.jsp&contentId=${town.contentId}&contentTypeId=${town.contentTypeId}' ">
								</div>
							</div>
						</div>
					</li>
					</c:forEach>
				</ul>
				
				<div class="text-center">
					<ul class="pagination">
					    <li>
					      <a href="#" aria-label="Previous">
					        <span aria-hidden="true">&laquo;</span>
					      </a>
					    </li>
					    <c:forEach var="i" begin="<%=pageStartNum %>" end="<%=(totalCount > pageEndNum) ? pageEndNum : totalCount %>">
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
				</div>
				
			</div>
			
			
			
			<script>
				$('#searchBtn').click(function(){
					$.ajax({
						url: "town/townListAjax.jsp?contentTypeId=" + $('#typeSelect').val()
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
				});
			</script>

		</div>
	</div>
</div>