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
			<dl style="float: right; text-align:center; margin-right: 30px; margin-bottom: -50px; margin-top: 10px;">
				<dd>
					<label><input type="text" placeholder="지역을 입력하세요" size=30>
					</label> <input type="submit" value="검색">
				</dd>
			</dl>
			<br> <br> <br>

			<div style="margin-bottom: 30px; margin-top: 40px;">
				<ul style="border-top: 2px solid; border-color: gray; padding-top: 50px;">
					<!-- <li class="row" style="padding-left: 10px; padding-right: 10px">
						<div class="col-sm-4">
							<img src="images/s2.jpg" class="img-responsive">
						</div>
						<div class="col-sm-8">
							<h3 style="margin-top: 25px; margin-bottom: 10px;">불국사</h3>
							<p style="margin-top: 8px;">경상북도 경주시
								진현동 위치, 대한불교 조계종 제 11교구 본사, 사진 및 영상 제공.</p>
							<p style="margin-top: 8px;">
								<i class="fa fa-star"> &nbsp;조회수: 30</i> &nbsp;&nbsp; 
								<i class="fa fa-pencil">&nbsp;&nbsp;작성일: 2015-10-12</i>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
								<a href="index.jsp?page=town/town_1.jsp"> 
									<input type="button" value="상세보기" id="join" class="btn">
								</a>
							</p>
						</div>
					</li> -->
					
					
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
									 style="background-color: #87d54d; border-color:#87d54d" onclick="location.href='index.jsp?page=town/town_detail.jsp' ">
								</div>
							</div>
						</div>
					</li>
					
					</c:forEach>
				</ul>
			</div>

			<!-- <div style="margin-bottom: 30px; margin-top: 40pxp; float: left;">
				<ul>
					<li style="text-align: left; float: left;"><img
						src="images/s3.jpg"
						style="float: left; width: 20%; height: 20%; margin-left: 60px;">
						<div style="margin: 0 auto; float: left;">
							<ul style="display: inline-block;">
								<li>
									<h3
										style="margin-left: 60px; margin-top: 25px; margin-bottom: 10px;">불국사</h3>
								</li>
								<li style="margin-left: 60px; margin-top: 8px;">경상북도 경주시
									진현동 위치, 대한불교 조계종 제 11교구 본사, 사진 및 영상 제공.</li>
								<li style="margin-left: 70px; margin-top: 8px;"><i
									class="fa fa-star"> &nbsp;조회수: 30</i> &nbsp;&nbsp; <i
									class="fa fa-pencil">&nbsp;&nbsp;작성일: 2015-10-12</i>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
									<a href="index.jsp?page=town/town_1.jsp"> 
										<input type=button value="상세보기" id="join" class="btn">
									</a>
							</ul>
						</div></li>
				</ul>
			</div>


			<div style="margin-bottom: 30px; margin-top: 40pxp; float: left;">
				<ul>
					<li style="text-align: left; float: left;"><img
						src="images/s4.jpg"
						style="float: left; width: 20%; height: 20%; margin-left: 60px;">
						<div style="margin: 0 auto; float: left;">
							<ul style="display: inline-block;">
								<li>
									<h3
										style="margin-left: 60px; margin-top: 25px; margin-bottom: 10px;">불국사</h3>
								</li>
								<li style="margin-left: 60px; margin-top: 8px;">경상북도 경주시
									진현동 위치, 대한불교 조계종 제 11교구 본사, 사진 및 영상 제공.</li>
								<li style="margin-left: 70px; margin-top: 8px;"><i
									class="fa fa-star"> &nbsp;조회수: 30</i> &nbsp;&nbsp; <i
									class="fa fa-pencil">&nbsp;&nbsp;작성일: 2015-10-12</i>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<a href="index.jsp?page=town/town_1.jsp"> 
										<input type=button value="상세보기" id="join" class="btn">
									</a>
							</ul>
						</div></li>
				</ul>
			</div>

			<div style="margin-bottom: 30px; margin-top: 40pxp; float: left;">
				<ul>
					<li style="text-align: left; float: left;"><img
						src="images/s6.jpg"
						style="float: left; width: 20%; height: 20%; margin-left: 60px;">
						<div style="margin: 0 auto; float: left;">
							<ul style="display: inline-block;">
								<li>
									<h3
										style="margin-left: 60px; margin-top: 25px; margin-bottom: 10px;">불국사</h3>
								</li>
								<li style="margin-left: 60px; margin-top: 8px;">경상북도 경주시
									진현동 위치, 대한불교 조계종 제 11교구 본사, 사진 및 영상 제공.</li>
								<li style="margin-left: 70px; margin-top: 8px;"><i
									class="fa fa-star"> &nbsp;조회수: 30</i> &nbsp;&nbsp; <i
									class="fa fa-pencil">&nbsp;&nbsp;작성일: 2015-10-12</i>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<a href="index.jsp?page=town/town_1.jsp"> 
										<input type=button value="상세보기" id="join" class="btn">
									</a>									
							</ul>
						</div></li>
				</ul>
			</div>

			<div style="margin-bottom: 100px; margin-top: 40pxp; float: left;">
				<ul>
					<li style="text-align: left; float: left;"><img
						src="images/s5.jpg"
						style="float: left; width: 20%; height: 20%; margin-left: 60px;">
						<div style="margin: 0 auto; float: left;">
							<ul style="display: inline-block;">
								<li>
									<h3
										style="margin-left: 60px; margin-top: 20px; margin-bottom: 10px;">불국사</h3>
								</li>
								<li style="margin-left: 60px; margin-top: 8px;">경상북도 경주시
									진현동 위치, 대한불교 조계종 제 11교구 본사, 사진 및 영상 제공.</li>
								<li style="margin-left: 70px; margin-top: 8px;"><i
									class="fa fa-star"> &nbsp;조회수: 30</i> &nbsp;&nbsp; <i
									class="fa fa-pencil">&nbsp;&nbsp;작성일: 2015-10-12</i>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<a href="index.jsp?page=town/town_1.jsp"> 
										<input type=button value="상세보기" id="join" class="btn">
									</a>									
							</ul>
						</div></li>
				</ul>
			</div> -->


		</div>
	</div>
</div>