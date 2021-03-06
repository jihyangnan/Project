<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <div class="slider">
	  <div class="callbacks_container">
	      <ul class="rslides" id="slider">
	        <li><img src="images/back5.jpg" class="img-responsive" alt=""/>
	          <div class="banner_desc">
	          	<div class="container" style="padding-left:17%; padding-top:3%;">
	          		<!-- 내친구 집은 어디인가 문구 -->
	          		<h1><img src="images/say1.png" width="80%"></h1>
				  <!-- <h1>내 친구의 집은</h1>
				  <h2>어디인가?</h2> -->
				</div>
				
			  </div>
			</li>
	        <li><img src="images/back4.jpg" class="img-responsive" alt=""/>
	         <div class="banner_desc">
	            <div class="container">
				  <h1><img src="images/say2.png" width="45%" style="padding-top:120px; float:right;">
				  </h1>
				  <!-- <h2>&nbsp;;;;</h2> -->
				  
			    </div>
			   </div>
	        </li>
	        <li><img src="images/back7.jpg" class="img-responsive" alt=""/>
	          <div class="banner_desc">
	          	<!-- <div class="container">
				  <h1><img src="images/say3.png" width="45%" style="float:right;"></h1>
				  <h2>At wisi enim ad minim veniam, quis nostrud.</h2>
			    </div> -->
				
			 </li>
	      </ul>
	 </div>
	 
	 
	 
	 <div class="details">
		<div class="container">
			<div class="col-xs-10 dropdown-buttons">
				<div class="col-xs-4 dropdown-button" style="width: 20%;">
					<div class="section_room">
						<select id="country" onchange="change_country(this.value)"
							class="frm-field required">
							<option>지역선택</option>
							<option value="서울">서울</option>
							<option value="강원">인천</option>
							<option value="경기">경기</option>
							<option value="경남">강원</option>
							<option value="인천">충청</option>
							<option value="전남">전라</option>
							<option value="전북">제주</option>
							<option value="제주">경상</option>
						</select>
					</div>
				</div>
				<div class="col-xs-4 dropdown-button" style="width: 20%;">
					<div class="section_room">
						<select id="country" onchange="change_country(this.value)"
							class="frm-field required">
							<option value="null">집유형</option>
							<option value="null">아파트</option>
							<option value="AX">단독주택</option>
							<option value="AX">게스트하우스</option>
							<option value="AX">빌라</option>
							<option value="AX">호텔</option>
							<option value="AX">기타</option>
						</select>
					</div>
				</div>
				<div class="col-xs-4 dropdown-button" style="width: 30%;">
					<div class="section_room">
						<input type="text" placeholder="year/month/day"
							class="datepicker checkin_out" name=day1> &nbsp;<b>체크인</b>
					</div>
				</div>
				<div class="col-xs-4 dropdown-button" style="width: 30%;">
					<div class="section_room">
						<input type="text" placeholder="year/month/day"
							class="datepicker checkin_out" name=day2> &nbsp;<b>체크아웃</b>
					</div>
				</div>
			</div>
			<div class="col-xs-2 submit_button">
				<form>
					<input type="submit" value="Search">
				</form>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	 
	 
</div>




<div class="content_top">
   <div class="container">
   	  <h4 class="m_3">★최신 숙소 ★</h4>
   	  <div class="grid_1">
   	  <c:forEach var="zip" items="${zipList}">
   	  	<div class="col-md-3 box_1">
			<a href="reserve_detail.do?no=${zip.h_No}"><img src="upload/${zip.image}" class="img-responsive" style="width: 100%; max-height: 170px" alt=""/></a>
		    <div class="box_2">
			  <div class="special-wrap"><div class="hot_offer"><span class="m_11">Hot Offer</span></div><div class="forclosure"><span class="m_12">Special Offer</span></div></div>
			</div>
		   <div class="box_3">
			 <h3><a href="single.html">${zip.h_nHome}</a></h3>
			 <div class="boxed_mini_details clearfix">
			      <span class="area first"><strong>인원</strong><i class="fa fa-user"></i>
			      ${zip.h_nPerson}</span>
			      <span class="status"><strong>욕실</strong><i class="fa fa-tint"></i>
			      ${zip.h_nBath}</span>
			      <span class="bedrooms last"><strong>침실</strong><i class="fa fa-bell"></i>
			      ${zip.h_nRoom}</span>
             </div>
		   </div>
		</div>
   	  </c:forEach>
		<!-- <div class="col-md-3 box_1">
			<a href="single.html"><img src="images/pic8.jpg" class="img-responsive" alt=""/></a>
		    <div class="box_2">
			  <div class="special-wrap"><div class="hot_offer"><span class="m_11">Hot Offer</span></div><div class="forclosure"><span class="m_12">Special Offer</span></div></div>
			</div>
		   <div class="box_3">
			 <h3><a href="single.html">유럽풍 펜션</a></h3>
			 <div class="boxed_mini_details clearfix">
			      <span class="area first"><strong>인원</strong><i class="fa fa-user"></i>
			      2</span>
			      <span class="status"><strong>욕실</strong><i class="fa fa-tint"></i>
			      2</span>
			      <span class="bedrooms last"><strong>침실</strong><i class="fa fa-bell"></i>
			      2</span>
             </div>
		   </div>
		</div>
		<div class="col-md-3 box_1">
			<a href="single.html"><img src="images/pic9.jpg" class="img-responsive" alt=""/></a>
		     <div class="box_2">
			  <div class="special-wrap"><div class="hot_offer"><span class="m_11">Hot Offer</span></div><div class="forclosure"><span class="m_12">Special Offer</span></div></div>
			</div>
		   <div class="box_3">
			 <h3><a href="single.html">House2</a></h3>
			 <div class="boxed_mini_details clearfix">
			      <span class="area first"><strong>인원</strong><i class="fa fa-user"></i>
			      2</span>
			      <span class="status"><strong>욕실</strong><i class="fa fa-tint"> </i>
			      2</span>
			      <span class="bedrooms last"><strong>침실</strong><i class="fa fa-bell"></i>
			      2</span>
             </div>
		   </div>
		</div>
		<div class="col-md-3 box_1">
			<a href="single.html"><img src="images/pic10.jpg" class="img-responsive" alt=""/></a>
		     <div class="box_2">
			  <div class="special-wrap"><div class="hot_offer"><span class="m_11">Hot Offer</span></div><div class="forclosure"><span class="m_12">Special Offer</span></div></div>
			</div>
		   <div class="box_3">
			 <h3><a href="single.html">House3</a></h3>
			 <div class="boxed_mini_details clearfix">
			      <span class="area first"><strong>인원</strong><i class="fa fa-user"></i>
			      2</span>
			      <span class="status"><strong>욕실</strong><i class="fa fa-tint"> </i>
			      2</span>
			      <span class="bedrooms last"><strong>침실</strong><i class="fa fa-bell"></i>
			      2</span>
             </div>
		   </div>
		</div>
		<div class="col-md-3 box_1">
			<a href="single.html"><img src="images/pic11.jpg" class="img-responsive" alt=""/></a>
		     <div class="box_2">
			  <div class="special-wrap"><div class="hot_offer"><span class="m_11">Hot Offer</span></div><div class="forclosure"><span class="m_12">Special Offer</span></div></div>
			</div>
		   <div class="box_3">
			 <h3><a href="single.html">House4</a></h3>
			 <div class="boxed_mini_details clearfix">
			      <span class="area first"><strong>인원</strong><i class="fa fa-user"></i>
			      2</span>
			      <span class="status"><strong>욕실</strong><i class="fa fa-tint"> </i>
			      2</span>
			      <span class="bedrooms last"><strong>침실</strong><i class="fa fa-bell"></i>
			      2</span>
             </div>
		   </div>
		</div> -->
		<div class="clearfix"> </div>
	</div>
	   <div class="content_bottom">
		<div class="col-md-2">
			<div class="widget">
                <div class="title"><h3><i class="fa fa-smile-o"> </i> 판매중 숙소</h3></div>
                  <ul class="real-widget">
                  	<li><a href="reserve_list.do">아파트(${aptCount})</a></li>
                	<li><a href="reserve_list.do">단독주택(${dadokCount})</a>
                	<li><a href="reserve_list.do">게스트하우스(${guestHouseCount})</a></li>
               		<li><a href="reserve_list.do">통나무집(${woodenCount})</a></li>
               		<li><a href="reserve_list.do">별장/타운하우스(${villaCount})</a></li>
               		<li><a href="reserve_list.do">기숙사(${gisukCount})</a></li>
               		<li><a href="reserve_list.do">캠핑카(${campingCarCount})</a></li>
               		<li><a href="reserve_list.do">텐트(${tentCount})</a></li>
               		<li><a href="reserve_list.do">오두막(${hutCount})</a></li>
               		<li><a href="reserve_list.do">기타(${etcCount})</a></li>
                </ul>
             </div>
             <div class="widget">
                <div class="title"><!-- <h3><i class="fa fa-smile-o"> </i> 우리 동네 소개</h3> --></div>
                 <!--  <ul class="real-widget"><li><a href="#">서울(3)</a></li>
                	<li><a href="#">인천(16)</a><ul>
                		<li><a href="#">경기(16)</a></li>
                		<li><a href="#">강원(16)</a></li>
                		<li><a href="#">충청(16)</a></li>
                		<li><a href="#">전라(16)</a></li>
                		<li><a href="#">제주(16)</a></li>
                		<li><a href="#">경상(16)</a></li></ul>
                  </ul></li>
                </ul> -->
             </div> 
		</div>
		<div class="col-md-7">	
		   <div class="sap_tabs">
				<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
						 <div class="tab_grid">
							  <ul class="resp-tabs-list">
							  	  <!-- <li class="resp-tab-item" aria-controls="tab_item-0" role="tab">
							  	  <strong>추천숙소</strong></li> -->
								  <li class="resp-tab-item" aria-controls="tab_item-1" role="tab">
								  <strong>추천 우리 동네</strong></li>
								  <li class="resp-tab-item" aria-controls="tab_item-2" role="tab">
								  <strong>공지 사항</strong></li>
								  <li class="clearfix"></li>
							  </ul>	
							</div>	
						 <!-- <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
							    	 <ul class="tab_img tab_1">
									  <li>
										<div class="client_box1">
					       				    <img src="images/pic1.jpg" class="img-responsive" alt=""/>
					       				    <div class="box_type">￦&nbsp;65000</div>
					       				    <h3 class="m_1"><a href="single.html">Dolor Sit</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>주차장</strong><i class="fa fa-truck"></i>
			                                    2</span>
			                                    <span class="status"><strong>욕실</strong><i class="fa fa-tint"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>침실</strong><i class="fa fa-bell"></i>
			                                    2</span>
                                            </div>
					       				 </div>
										</li>
										<li>
										  <div class="client_box1">
					       				    <img src="images/pic2.jpg" class="img-responsive" alt=""/>
					       				     <div class="box_type">￦&nbsp;45000</div>
					       				    <h3 class="m_1"><a href="single.html">Dolor Sit</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>주차장</strong><i class="fa fa-truck"></i>
			                                    2</span>
			                                    <span class="status"><strong>욕실</strong><i class="fa fa-tint"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>침대</strong><i class="fa fa-bell"></i>
			                                    2</span>
                                            </div>
					       				   </div>
										</li>
										<li class="last">
										  <div class="client_box1">
					       				    <img src="images/pic3.jpg" class="img-responsive" alt=""/>
					       				     <div class="box_type">￦&nbsp;22000</div>
					       				     <h3 class="m_1"><a href="single.html">Dolor Sit</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>주차장</strong><i class="fa fa-truck"></i>
			                                    2</span>
			                                    <span class="status"><strong>욕실</strong><i class="fa fa-tint"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>침대</strong><i class="fa fa-bell"></i>
			                                    2</span>
                                            </div>
					       				  </div>
										</li>
										<div class="clearfix"></div>
										</ul>
										<ul class="tab_img">
										<li>
										  <div class="client_box1">
					       				    <img src="images/pic4.jpg" class="img-responsive" alt=""/>
					       				     <div class="box_type">￦&nbsp;60500</div>
					       				     <h3 class="m_1"><a href="single.html">Dolor Sit</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>주차장</strong><i class="fa fa-truck"></i>
			                                    2</span>
			                                    <span class="status"><strong>욕실</strong><i class="fa fa-tint"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>침대</strong><i class="fa fa-bell"></i>
			                                    2</span>
                                            </div>
					       				  </div>
										</li>
										<li>
										<div class="client_box1">
					       				    <img src="images/pic5.jpg" class="img-responsive" alt=""/>
					       				     <div class="box_type">￦&nbsp;45000</div>
					       				     <h3 class="m_1"><a href="single.html">Dolor Sit</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>주차장</strong><i class="fa fa-truck"></i>
			                                    2</span>
			                                    <span class="status"><strong>욕실</strong><i class="fa fa-tint"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>침대</strong><i class="fa fa-bell"></i>
			                                    2</span>
                                            </div>
					       				 </div>
										</li>
										<li class="last">
										 <div class="client_box1">
					       				    <img src="images/pic6.jpg" class="img-responsive" alt=""/>
					       				     <div class="box_type">￦&nbsp;50000</div>
					       				     <h3 class="m_1"><a href="single.html">Dolor Sit</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>주차장</strong><i class="fa fa-truck"></i>
			                                    2</span>
			                                    <span class="status"><strong>욕실</strong><i class="fa fa-tint"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>침대</strong><i class="fa fa-bell"></i>
			                                    2</span>
                                            </div>
					       				 </div>
										</li>
										<div class="clearfix"></div>
									</ul> 
							     </div>	-->
							     <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1" style="padding-bottom: 0px"> 
									
								<c:forEach var="town" items="${townList}" varStatus="status">
									<c:if test="${status.count <= 9}">
										<c:if test="${status.count % 3 == 1}">
											<ul class="tab_img">
										</c:if>
										<c:if test="${status.count % 3 == 0}">
											<li class="last">
										</c:if>
										<c:if test="${status.count % 3 != 0}">
											<li>
										</c:if>
											  <div class="client_box1">
											  	<a href="town_detail.do?contentId=${town.contentId}&contentTypeId=${town.contentTypeId}">
						       				    <img src="${town.image}" style="min-height: 130px;" class="img-responsive" alt=""/>
						       				    </a>
						       				     <!-- <div class="box_type">￦&nbsp;</div> -->
						       				     <h3 class="m_1" style="overflow: hidden;text-overflow: ellipsis;white-space: nowrap; margin-top: 10px"><a href="town_detail.do?contentId=${town.contentId}&contentTypeId=${town.contentTypeId}">${town.title}</a></h3>
						       				 	<div class="boxed_mini_details clearfix" style="padding-top: 20px"></div>
						       				  </div>
											</li>
										<c:if test="${status.count % 3 == 0 || status.last}">
											<div class="clearfix"></div>
											</ul>
										</c:if>
									</c:if>
									</c:forEach>
										<!-- <li>
										  <div class="client_box1">
					       				    <img src="images/pic4.jpg" class="img-responsive" alt=""/>
					       				     <div class="box_type">￦&nbsp;</div>
					       				     <h3 class="m_1"><a href="single.html">홍대</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garage</strong>
			                                    2</span>
			                                     <span class="status"><strong>Baths</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Beds</strong><i class="fa fa-bell"></i>
			                                    2</span>
                                            </div>
					       				  </div>
										</li>
										<li>
										<div class="client_box1">
					       				    <img src="images/pic5.jpg" class="img-responsive" alt=""/>
					       				     <div class="box_type">￦&nbsp;45000</div>
					       				     <h3 class="m_1"><a href="single.html">Dolor Sit</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garage</strong><i class="fa fa-truck"></i>
			                                    2</span>
			                                    <span class="status"><strong>Baths</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Beds</strong><i class="fa fa-bell"></i>
			                                    2</span>
                                            </div>
					       				 </div>
										</li>
										<li class="last">
										 <div class="client_box1"  style="margin-bottom: 20px;">
					       				    <img src="images/pic6.jpg" class="img-responsive" alt=""/>
					       				     <div class="box_type">￦&nbsp;50000</div>
					       				     <h3 class="m_1"><a href="single.html">Dolor Sit</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garage</strong><i class="fa fa-truck"></i>
			                                    2</span>
			                                    <span class="status"><strong>Baths</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Beds</strong><i class="fa fa-bell"></i>
			                                    2</span>
                                            </div>
					       				 </div>
										</li>
										<li>
										  <div class="client_box1">
					       				    <img src="images/pic4.jpg" class="img-responsive" alt=""/>
					       				     <div class="box_type">￦&nbsp;</div>
					       				     <h3 class="m_1"><a href="single.html">홍대</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garage</strong>
			                                    2</span>
			                                     <span class="status"><strong>Baths</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Beds</strong><i class="fa fa-bell"></i>
			                                    2</span>
                                            </div>
					       				  </div>
										</li>
										<li>
										<div class="client_box1">
					       				    <img src="images/pic5.jpg" class="img-responsive" alt=""/>
					       				     <div class="box_type">￦&nbsp;45000</div>
					       				     <h3 class="m_1"><a href="single.html">Dolor Sit</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garage</strong><i class="fa fa-truck"></i>
			                                    2</span>
			                                    <span class="status"><strong>Baths</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Beds</strong><i class="fa fa-bell"></i>
			                                    2</span>
                                            </div>
					       				 </div>
										</li>
										<li class="last">
										 <div class="client_box1">
					       				    <img src="images/pic6.jpg" class="img-responsive" alt=""/>
					       				     <div class="box_type">￦&nbsp;50000</div>
					       				     <h3 class="m_1"><a href="single.html">Dolor Sit</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garage</strong><i class="fa fa-truck"></i>
			                                    2</span>
			                                   <span class="status"><strong>Baths</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Beds</strong><i class="fa fa-bell"></i>
			                                    2</span>
                                            </div>
					       				 </div>
										</li> -->
										<!-- <li class="clearfix"></li> -->
									
							     </div>	
							     <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
							     	<!--
							     	<ul class="tab_img">
										<li>공지사항입니다.
										 <div class="client_box1">
					       				    <img src="images/pic5.jpg" class="img-responsive" alt=""/>
					       				     <div class="box_type">￦&nbsp;450</div>
					       				     <h3 class="m_1"><a href="single.html">Dolor Sit</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garage</strong><i class="fa fa-truck"></i>
			                                    2</span>
			                                    <span class="status"><strong>Baths</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Beds</strong><i class="fa fa-bell"></i>
			                                    2</span>
                                            </div>
					       				 </div> -->
										</li>
										<!-- <li class="last">
										 <div class="client_box1">
					       				    <img src="images/pic6.jpg" class="img-responsive" alt=""/>
					       				     <div class="box_type">$&nbsp;500</div>
					       				     <h3 class="m_1"><a href="single.html">Dolor Sit</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garage</strong><i class="fa fa-truck"></i>
			                                    2</span>
			                                    <span class="status"><strong>Baths</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Beds</strong><i class="fa fa-bell"></i>
			                                    2</span>
                                            </div>
					       				 </div>
										</li>
										<div class="clearfix"></div>
									</ul>
									 -->
									<ul>
									<li style="padding-bottom:10px">
									<font style="color:#f94b4b; font-weight:600; float:left; margin:0 auto;">
									&nbsp;&nbsp;&nbsp;공지사항 & 이벤트</font>
									<div align="right">
										<a href="board_list.do">
										<button class="more">+More</button>
										</a>
									</div>
									</li>
									
									
									</li>
									<!-- 관리자 -->
									<%-- ${mlist.b_title} --%>
									<c:forEach var="mdto" items="${mlist }" varStatus="status">
									<div class="row list-group-item" style="margin:0px; padding:5px;">
										<span class="col-sm-1 mhide">
											<img src="images/${mdto.sa_img }" /> 
										</span>
										<span class="col-sm-10" style="text-align:left; font-size: 13px; padding-top:3px;">
										  ${mdto.b_title }
										</span>
																			
									</div>
									</c:forEach>
									</ul>
							     </div>	
				  </div>
           </div>
        </div>
        <div class="col-md-3">
			<div class="blog_list2">
				 <img src="images/logo3.png">
					 <ul class="blog-list3 list_1">
					 	<li class="blog-list3-img"><img src="images/pic12.jpg" class="img-responsive" alt="" style="width:70%;"/></li>
					 	<li class="blog-list3-desc">
					 	  <h4>박재현</h4>
					 	    <ul class="admin_desc">
							    <li class="list_top"><i class="fa fa-phone-square ph"> </i>
								<p class="m_2">010-3477-7128</p></li>
								<div class="clearfix"> </div>
								<li class="list_top"><i class="fa fa-envelope ph"> </i>
								<p class="m_2">mail(at)realist.com</p></li>
								<div class="clearfix"> </div>
					        </ul>
		                 </li>
					 	<div class="clearfix"> </div>
					 </ul>
					 <ul class="blog-list3 list_1">
					 	<li class="blog-list3-img"><img src="images/pic13.jpg" class="img-responsive" alt=""style="width:70%;"/></li>
					 	<li class="blog-list3-desc">
					 	  <h4>이나윤</h4>
					 	    <ul class="admin_desc">
							    <li class="list_top"><i class="fa fa-phone-square ph"> </i>
								<p class="m_2">010-5554-3586</p></li>
								<div class="clearfix"> </div>
								<li class="list_top"><i class="fa fa-envelope ph"> </i>
								<p class="m_2">mail(at)realist.com</p></li>
								<div class="clearfix"> </div>
					        </ul>
		                 </li>
					 	<div class="clearfix"> </div>
					 </ul>
					 <ul class="blog-list3">
					 	<li class="blog-list3-img"><img src="images/pic14.jpg" class="img-responsive" alt=""style="width:70%;"/></li>
					 	<li class="blog-list3-desc">
					 	  <h4>정수빈</h4>
					 	    <ul class="admin_desc">
							    <li class="list_top"><i class="fa fa-phone-square ph"> </i>
								<p class="m_2">010-2731-5608</p></li>
								<div class="clearfix"> </div>
								<li class="list_top"><i class="fa fa-envelope ph"> </i>
								<p class="m_2">mail(at)realist.com</p></li>
								<div class="clearfix"> </div>
					        </ul>
		                 </li>
					 	<div class="clearfix"> </div>
					 </ul>
					 <ul class="blog-list3">
					 	<li class="blog-list3-img"><img src="images/pic15.jpg" class="img-responsive" alt=""style="width:70%;"/></li>
					 	<li class="blog-list3-desc">
					 	  <h4>지향난</h4>
					 	    <ul class="admin_desc">
							    <li class="list_top"><i class="fa fa-phone-square ph"> </i>
								<p class="m_2">010-9848-0913</p></li>
								<div class="clearfix"> </div>
								<li class="list_top"><i class="fa fa-envelope ph"> </i>
								<p class="m_2">mail(at)realist.com</p></li>
								<div class="clearfix"> </div>
					        </ul>
		                 </li>
					 	<div class="clearfix"> </div>
					 </ul>
					 <ul class="blog-list3">
					 	<li class="blog-list3-img"><img src="images/pic16.jpg" class="img-responsive" alt=""style="width:70%;"/></li>
					 	<li class="blog-list3-desc">
					 	  <h4>하태성</h4>
					 	    <ul class="admin_desc">
							    <li class="list_top"><i class="fa fa-phone-square ph"> </i>
								<p class="m_2">010-7608-6005</p></li>
								<div class="clearfix"> </div>
								<li class="list_top"><i class="fa fa-envelope ph"> </i>
								<p class="m_2">mail(at)realist.com</p></li>
								<div class="clearfix"> </div>
					        </ul>
		                 </li>
					 	<div class="clearfix"> </div>
					 </ul>
					 <ul class="blog-list3">
					 	<li class="blog-list3-img"><img src="images/pic17.jpg" class="img-responsive" alt=""style="width:70%;"/></li>
					 	<li class="blog-list3-desc">
					 	  <h4>홍승표</h4>
					 	    <ul class="admin_desc">
							    <li class="list_top"><i class="fa fa-phone-square ph"> </i>
								<p class="m_2">010-5454-0971</p></li>
								<div class="clearfix"> </div>
								<li class="list_top"><i class="fa fa-envelope ph"> </i>
								<p class="m_2">mail(at)realist.com</p></li>
								<div class="clearfix"> </div>
					        </ul>
		                 </li>
					 	<li class="clearfix"> </li>
					 </ul>
			    </div>
		</div>
        <div class="clearfix"> </div>
        </div>
        <div class="grid_4">
                <div class="col-md-7 grid_6">
                     	<img src="images/nizipnezip.png" width="100%" style="margin-top:8px;">
                </div>
                <div class="col-md-5 grid_5">
                    <div class="banner2">
                        <a class="btn2" href="company.do">click here</a>
                        <h3>
                            NiZip NeZip <br>
                            Company Intro 
                        </h3>
                        <div class="clearfix"> </div>
                    </div>
                </div>
                <div class="clearfix"> </div>
        </div>
       <div class="grid_7">
       
        	<div class="col-md-4 hidden-xs" id="container2">
    
    <div id="weather-icon-holder">
      <img id="weather-icon" src="http://i.imgur.com/yv9XBD0.png" width="150px;"height="200px;">
    </div>
    
    <div id="city">
      <p id="city-name"></p><br><br>
      <p id="weather-info"></p><br>
      <p id="click-me">Click me!</p><br>
    </div>
    
    <div id="wind">
      <img id="wind-icon" src="http://i.imgur.com/UwezSz9.png"width="25px;"height="25px;"><br><br>
      <p id="wind-speed"></p>
      <img id="humid-icon" src="http://i.imgur.com/ztLdI0I.png"width="20px;"height="20px;" style="margin-top: -15px;">
      <p id="humid-percent">&nbsp;</p>
    </div>
    
    <div id="tempurature"><br>
      <p id="temp-text"></p>
    </div>
    
  </div><!--End of container div.-->
 

      <script src="//assets.codepen.io/assets/common/stopExecutionOnTimeout-f961f59a28ef4fd551736b43f94620b5.js"></script>

    <!-- <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.simpleWeather/3.0.2/jquery.simpleWeather.min.js"></script>

        <script>
      $(document).ready(function () {
    setWeather('Seoul', '');
});
$('#city').on('click', function () {
    $('#click-me').hide();
    navigator.geolocation.getCurrentPosition(function (pos) {
        setWeather(pos.coords.latitude + ',' + pos.coords.longitude);
    });
});
function getCodeIcon(num) {
    if (num === 5 || num === 6 || num === 7 || num === 8 || num === 13 || num === 14 || num === 16 || num === 15 || num === 17 || num === 18 || num === 41 || num === 42 || num === 43 || num === 46) {
        return 'http://i.imgur.com/niVCkmi.png';
    } else if (num === 24 || num === 25 || num === 32 || num === 34 || num === 36) {
        return 'http://i.imgur.com/VyKV8LL.png';
    } else if (num === 26 || num === 27 || num === 29) {
        return 'http://i.imgur.com/DCziFYV.png';
    } else if (num === 28 || num === 30 || num === 44) {
        return 'http://i.imgur.com/yv9XBD0.png';
    } else if (num === 31 || num === 33) {
        return 'http://i.imgur.com/yOVHFNf.png';
    } else {
        return 'http://i.imgur.com/HRV3uly.png';
    }
}
function setWeather(location, woeid) {
    $.simpleWeather({
        location: location,
        woeid: woeid,
        unit: 'c',
        success: function (weather) {
            $('#temp-text').text(weather.temp + weather.units.temp);
            $('#weather-info').text(weather.currently);
            $('#city-name').text(weather.city);
            $('#wind-speed').text(weather.wind.speed + 'MPH');
            $('#humid-percent').text(weather.humidity + '%');
            $('#weather-icon').attr('src', getCodeIcon(parseInt(weather.code)));
        }
    });
}
      //@ sourceURL=pen.js
    </script>

    
    <script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>
        	
        	
        	<div class="col-md-3" >
				<h3 style="margin-bottom: 10px;">사이트맵</h3>
				<ul class="list_2" style="font-size: 13px;">
					<li style="color: #f94b4b; padding-bottom: 5px;"><b>니집 등록</b></li>
					<li style="color: #f94b4b; padding-bottom: 5px;"><b>내집 예약</b></li>
					<li style="color: #f94b4b; padding-bottom: 5px;"><b>우리 동네 소개 [지역별]</b></li>
					<li style="color: #f94b4b; padding-bottom: 5px;">
						<b>회사 소개</b>
						<p>▶ 연혁 및 회사소개, 찾아오는 길</p>

					</li>
				</ul>
			</div>
			<div class="col-md-4">
				<ul style="margin-bottom: 10px;">
					<li><b>&nbsp;</b></li>
				</ul>
				<ul class="list_2" style="font-size: 13px;">
					<li style="color: #f94b4b; padding-bottom: 5px;"><b>고객의 소리</b>
						<p>▶ 자유게시판, 1:1문의하기</p></li>
					<li style="color: #f94b4b; padding-bottom: 5px;"><b>로그인</b>
						<p>▶ 회원가입, 로그아웃, ID/PW 찾기</p></li>
					<li style="color: #f94b4b; padding-bottom: 5px;"><b>마이페이지</b>
						<p>▶ 회원 수정/탈퇴 하기, 찜내역, 게시판내역</p></li>
				</ul>
			</div>


			<div class="clearfix"> </div>
        </div>
	</div>
</div>
        