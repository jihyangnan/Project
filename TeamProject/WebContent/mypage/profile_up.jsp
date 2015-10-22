<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


<div class="about_top">
    <div class="container">
    
    	<div>
       	 <ul>
       	 <li class="siteline">
       	<img src="images/homelink.png" style="vertical-align:top;"> 
       	 로그인 -> 프로필 수정</li>
       	 </ul>
       	 </div>
       <div class="about">	 
       	 <h2 class="blog_head" align="center"><b>프로필 수정</b></h2>
       	 <form action="">
     
       	 <h4><label style="margin-left:200px;margin-bottom:15px;margin-top:20px;">* 비밀번호 수정</label></h4>
       	 
       	
		 <div class="join" align="center">
		 
		 	<ul>
		 	<li><img src="images/id.png" alt="">&nbsp;줴훈줴훈	</li>
		 	<li><img src="images/pwd.png" alt="">
			 	<input type="password" size=15 name="pwd" class="inheight">&nbsp;
			 		<input type="password" size=15 name="pwd2" class="inheight" placeholder="비밀번호 확인"><br>
			 		<font style="color:#a1a1a1; font-size:11px;">
			 		공백없이 영문과 숫자를 이용하여 6~12자 입력해주세요.
			 		</font>
		 	</li>
		 	</ul>
		 </div>
		 	
		 	<h4><label style="margin-left:200px;margin-bottom:15px;margin-top:20px;">* 개인정보 수정</label></h4>
		 	
		<div class="join" align=center>
		 	<ul> 	
		 	<li><img src="images/name.png" alt="">&nbsp;줴훈줴훈</li>
		 	<li>
		 		<img src="images/pwdhint.png" alt="" style="float:left;">
		 			
		 			<div class="pwdhint">
			 		<ul style="display: inline-block;">
			 		<li><font style="font-size: 13px;">좋아하는 여행지는? </font>
			 		<font style="color:#a1a1a1; font-size:11px;">
			 		(한국이 아니여도 상관없어요! 국내, 국외 어디든 좋아하는 여행지 적어주세요.)</font>
			 		</li>
			 		<li><input type="text" name="pwdhint" style="height:25px; width:90%;"></li>
			 		</ul>
		            </div>
		 	</li>
		 	
		 	<li style="font-size: 12px;">
		 		<img src="images/address.png" alt="" style="float:left;">
		 		
		 		<div class="pwdhint">
		 		<ul style="display: inline-block;">
		 		<li>
		 		<input type="text" size=10 name="post1" class="inheight"> - 
		 		<input type="text" size=10 name="post2" class="inheight">
		 		&nbsp;&nbsp;
		 		<input type="button" value=우편번호검색>
		 		<font style="color:#a1a1a1; font-size:11px;">
		 		(다른 유저와의 신뢰성을 위해여 정확히 입력해 주세요.)</font>
		 		</li>
		 		<li style="margin-top:3px;">
		 		<input type="text" name="pwdhint" style="height:25px;width:60%;">&nbsp;
		 		<input type="text" name="pwdhint" style="height:25px;width:30%">
		 		</li>
		 		</ul>
		 		</div>
		 	</li>
		 	<li><img src="images/phone.png" alt="">
		 		<select style="width:9%;padding:0;" name=phone1>
		 		<option selected="selected">010</option>
		 		<option>011</option>
		 		<option>018</option>
		 		<option>016</option>
		 		</select>
		 		-
		 		<input type="text" name=phone2 style="height: 25px; width:5%;"> 
		 		- <input type="text" name=phone3 style="height: 25px; width:5%;">
		 	</li>
		 	<li><img src="images/email.png" alt="">
		 		<input type="text" name="email" class="inputstyle">
		 		@ <select style="width:15%; padding:0;" name=eaddr>
		 		<option selected="selected">naver.com</option>
		 		<option>hanmail.net</option>
		 		<option>gmail.com</option>
		 		<option>nate.com</option>
		 		</select>
		 	</li>
		 	<li style="font-size: 13px;">
		 	<img src="images/hkind.png" alt="" >
			 	<label class="checkbox-inline">
	 			 <input type="checkbox" id="inlineCheckbox1" name=ekind> 아파트
				</label>
		 		<label class="checkbox-inline">
	 			 <input type="checkbox" id="inlineCheckbox1" name=ekind> 단독주택
				</label>
				<label class="checkbox-inline">
	 			 <input type="checkbox" id="inlineCheckbox1" name=ekind> 호텔
				</label>
				<label class="checkbox-inline">
	 			 <input type="checkbox" id="inlineCheckbox1" name=ekind> 빌라
				</label>
				<label class="checkbox-inline">
	 			 <input type="checkbox" id="inlineCheckbox1" name=ekind> 게스트하우스
				</label>
				<label class="checkbox-inline">
	 			 <input type="checkbox" id="inlineCheckbox1" name=ekind> 기타
				</label>
		 	</li>
		 	</ul>
		 </div>
		 
		  <div class="joinup">
		 <input type=submit value="수정완료" id="join" class="btn">
		 </div>		 
	</div>
     </div>
     </div>
      </form>
        
</div>
</div>
