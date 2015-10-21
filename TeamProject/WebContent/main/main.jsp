<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</div>

<div class="details" style="top:440px;">
			     <div class="container">
	    	     <div class="col-xs-10 dropdown-buttons">   
            	  <div class="col-xs-4 dropdown-button" style="width:20%;">           			
            		<div class="section_room">
						 <select id="country" onchange="change_country(this.value)" class="frm-field required">
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
				    <div class="col-xs-4 dropdown-button" style="width:20%;">
					  <div class="section_room">
						 <select id="country" onchange="change_country(this.value)" class="frm-field required">
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
					<div class="col-xs-4 dropdown-button" style="width:30%;">
					  <div class="section_room">
						 <input type="text" placeholder="year/month/day" class="datepicker checkin_out" name=day1 >
					  	&nbsp;<b>체크인</b>
					  </div>
					 </div>
					 <div class="col-xs-4 dropdown-button" style="width:30%;">
					  <div class="section_room">
						 <input type="text" placeholder="year/month/day" class="datepicker checkin_out" name=day2 >
					  	&nbsp;<b>체크아웃</b>
					  </div>
					 </div>
					</div> 
				   <div class="col-xs-2 submit_button"> 
				   	  <form>
				   	     <input type="submit" value="Search">
				   	  </form>
				   </div>
				   <div class="clearfix"> </div>
		</div>
</div>
				   

<div class="content_top">
   <div class="container">
   	  <h4 class="m_3">★ 인기 숙소 ★</h4>
   	  <div class="grid_1">
		<div class="col-md-3 box_1">
			<a href="single.html"><img src="images/pic8.jpg" class="img-responsive" alt=""/></a>
		    <div class="box_2">
			  <div class="special-wrap"><div class="hot_offer"><span class="m_11">Hot Offer</span></div><div class="forclosure"><span class="m_12">Special Offer</span></div></div>
			</div>
		   <div class="box_3">
			 <h3><a href="single.html">유럽풍 펜션</a></h3>
			 <div class="boxed_mini_details clearfix">
			      <span class="area first"><strong>주차장</strong><i class="fa fa-truck"></i>
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
			      <span class="area first"><strong>주차장</strong><i class="fa fa-truck"></i>
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
			      <span class="area first"><strong>주차장</strong><i class="fa fa-truck"></i>
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
			      <span class="area first"><strong>주차장</strong><i class="fa fa-truck"></i>
			      2</span>
			      <span class="status"><strong>욕실</strong><i class="fa fa-tint"> </i>
			      2</span>
			      <span class="bedrooms last"><strong>침대</strong><i class="fa fa-bell"></i>
			      2</span>
             </div>
		   </div>
		</div>
		<div class="clearfix"> </div>
	</div>
	   <div class="content_bottom">
		<div class="col-md-2">
			<div class="widget">
                <div class="title"><h3><i class="fa fa-smile-o"> </i> 판매중 숙소</h3></div>
                  <ul class="real-widget"><li><a href="#">아파트(3)</a></li>
                	<li><a href="#">단독주택(16)</a><ul>
                		<li><a href="#">호텔(16)</a></li>
                		<li><a href="#">빌라(16)</a></li>
                		<li><a href="#">게스트하우스(16)</a></li>
                		<li><a href="#">기타(16)</a></li></ul>
                  </ul></li>
                </ul>
             </div>
             <div class="widget">
                <div class="title"><h3><i class="fa fa-smile-o"> </i> 우리 동네 소개</h3></div>
                  <ul class="real-widget"><li><a href="#">서울(3)</a></li>
                	<li><a href="#">인천(16)</a><ul>
                		<li><a href="#">경기(16)</a></li>
                		<li><a href="#">강원(16)</a></li>
                		<li><a href="#">충청(16)</a></li>
                		<li><a href="#">전라(16)</a></li>
                		<li><a href="#">제주(16)</a></li>
                		<li><a href="#">경상(16)</a></li></ul>
                  </ul></li>
                </ul>
             </div>
		</div>
		<div class="col-md-7">	
		   <div class="sap_tabs">
				<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
						 <div class="tab_grid">
							  <ul class="resp-tabs-list">
							  	  <li class="resp-tab-item" aria-controls="tab_item-0" role="tab">
							  	  <strong>추천숙소</strong></li>
								  <li class="resp-tab-item" aria-controls="tab_item-1" role="tab">
								  <strong>추천 우리 동네</strong></li>
								  <li class="resp-tab-item" aria-controls="tab_item-2" role="tab">
								  <strong>공지 사항</strong></li>
								  <div class="clearfix"></div>
							  </ul>	
							</div>	
							    <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
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
							     </div>	
							     <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
									
									<ul class="tab_img">
										<li>
										  <div class="client_box1">
					       				    <img src="images/pic4.jpg" class="img-responsive" alt=""/>
					       				     <!-- <div class="box_type">￦&nbsp;</div> -->
					       				     <h3 class="m_1"><a href="single.html">홍대</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garage</strong>
			                                    2</span>
			                                     <!-- <span class="status"><strong>Baths</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Beds</strong><i class="fa fa-bell"></i>
			                                    2</span> -->
                                            </div>
					       				  </div>
										</li>
										<li>
										<div class="client_box1">
					       				    <img src="images/pic5.jpg" class="img-responsive" alt=""/>
					       				     <!-- <div class="box_type">￦&nbsp;45000</div> -->
					       				     <h3 class="m_1"><a href="single.html">Dolor Sit</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garage</strong><i class="fa fa-truck"></i>
			                                    2</span>
			                                   <!--  <span class="status"><strong>Baths</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Beds</strong><i class="fa fa-bell"></i>
			                                    2</span> -->
                                            </div>
					       				 </div>
										</li>
										<li class="last">
										 <div class="client_box1">
					       				    <img src="images/pic6.jpg" class="img-responsive" alt=""/>
					       				     <!-- <div class="box_type">￦&nbsp;50000</div> -->
					       				     <h3 class="m_1"><a href="single.html">Dolor Sit</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garage</strong><i class="fa fa-truck"></i>
			                                    2</span>
			                                    <!-- <span class="status"><strong>Baths</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Beds</strong><i class="fa fa-bell"></i>
			                                    2</span> -->
                                            </div>
					       				 </div>
										</li>
										<li>
										  <div class="client_box1">
					       				    <img src="images/pic4.jpg" class="img-responsive" alt=""/>
					       				     <!-- <div class="box_type">￦&nbsp;</div> -->
					       				     <h3 class="m_1"><a href="single.html">홍대</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garage</strong>
			                                    2</span>
			                                     <!-- <span class="status"><strong>Baths</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Beds</strong><i class="fa fa-bell"></i>
			                                    2</span> -->
                                            </div>
					       				  </div>
										</li>
										<li>
										<div class="client_box1">
					       				    <img src="images/pic5.jpg" class="img-responsive" alt=""/>
					       				     <!-- <div class="box_type">￦&nbsp;45000</div> -->
					       				     <h3 class="m_1"><a href="single.html">Dolor Sit</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garage</strong><i class="fa fa-truck"></i>
			                                    2</span>
			                                   <!--  <span class="status"><strong>Baths</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Beds</strong><i class="fa fa-bell"></i>
			                                    2</span> -->
                                            </div>
					       				 </div>
										</li>
										<li class="last">
										 <div class="client_box1">
					       				    <img src="images/pic6.jpg" class="img-responsive" alt=""/>
					       				     <!-- <div class="box_type">￦&nbsp;50000</div> -->
					       				     <h3 class="m_1"><a href="single.html">Dolor Sit</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garage</strong><i class="fa fa-truck"></i>
			                                    2</span>
			                                    <!-- <span class="status"><strong>Baths</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Beds</strong><i class="fa fa-bell"></i>
			                                    2</span> -->
                                            </div>
					       				 </div>
										</li>
										<div class="clearfix"></div>
									</ul>
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
									<li><font style="color:#f94b4b; font-weight:700;">
									고객의 소리 공지사항 & 이벤트</font>
									</li>
									<li><a href="#">공지사항 입니다</a></li>
									<li>공지사항 2입니다</li>
									<li>공지사항 2입니다</li>
									<li>공지사항 2입니다</li>
									<li>공지사항 2입니다</li>
									<li>공지사항 2입니다</li>
									<li>공지사항 2입니다</li>
									<li>공지사항 2입니다</li>
									<li>공지사항 2입니다</li>
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
								<p class="m_2">00-5554-3586</p></li>
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
					 	<div class="clearfix"> </div>
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
                        <a class="btn2" href="index.jsp?page=main/company.jsp">click here</a>
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
        	<div class="col-md-4 box_4">
        		<h4>니집내집</h4>
        		<p>니집내집에서 새로운 친구들 만들어 보아요!</p>
        		<p>국내, 국외 친구들을 모두 우리 집으로 초대!!</p><br>
        		<p><font style="color:#f94b4b; font-size:45px; font-weight:700;">
        		GO_GO!</font></p>
        	   <!--  <div class="search">
						  <form>
							   <input type="text" value="">
							   <input type="submit" value="Subscribe">
						  </form>
					  </div> -->
        	</div>
        	<!-- <div class="col-md-4">
        		<address class="footer-addr">
                        totam rem aperiam, <br>
                        voluptatum deleniti , USA <br>
                        E-MAIL:
                        <a href="#">MAIL@DEMOLINK.ORG</a>

                        <div class="phone">
                            <span>(500)</span> 1254 6487
                        </div>
                    </address>
        	</div> -->
        	<div style="width:25%; padding-left: 50px;" class="col-md-2" >
        		<ul><li><b>사이트맵</b></li></ul>
        		<ul class="list_2" style="font-size:13px;">
                        <li style="color:#f94b4b;"><b>니집 등록</b> </li>
                        <li style="color:#f94b4b;"><b>내집 예약</b> </li>
                        <li style="color:#f94b4b;"><b>우리 동네 소개 [지역별]</b></li>
						<li style="color:#f94b4b;"><b>회사 소개</b>
						<p>▶ 연혁 및 회사소개, 찾아오는 길</p>
						</li>   
                           
                </ul>
        	</div>
        	<div style="width:25%; padding-left: 30px;" class="col-md-2">
        		<ul><li><b>&nbsp;</b></li></ul>
        		<ul class="list_2" style="font-size:13px;">
						<li style="color:#f94b4b;"><b>고객의 소리</b>
                        <p>▶ 자유게시판, 1:1문의하기</p> </li>   
                        <li style="color:#f94b4b;"><b>로그인</b> 
                        <p>▶ 회원가입, 로그아웃, ID/PW 찾기</p></li>
                        <li style="color:#f94b4b;"><b>마이페이지</b> 
                        <p>▶ 회원 수정/탈퇴 하기, 찜내역, 게시판내역</p></li> 
                </ul>
        	</div>
        	<div class="clearfix"> </div>
        </div>
	</div>
</div>
        