<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="about_top">
    <div class="container">
    	<div>
       	 <ul>
       	 <li class="siteline">
       	<img src="images/homelink.png" style="vertical-align:top;"> 
       	 로그인 / 회원가입</li>
       	 </ul>
       	 </div>
       <div class="about">	 
       	 <h2 class="blog_head" align="center"><b>회원 가입</b></h2>
       	 <form action="">
       	 <div class="jumbotron" style="padding-top:20px; background-color: #fff">
		 <div class="join" align="center">
		 	<ul>
		 	<li><img src="images/id.png" alt="">
		 		<input type="text" size=15 name="id" class="inheight">&nbsp;
		 		<input type="button" value=중복체크 style="font-size:12px;">
		 		&nbsp;<font style="font-size:10px; color:#a1a1a1; font-size:11px;">
		 		공백없이 영문과 숫자를 이용하여 6~12자 입력해주세요.
		 		</font>
		 	</li>
		 	<li><img src="images/pwd.png" alt="">
			 	<input type="password" size=15 name="pwd" class="inheight">&nbsp;
			 		&nbsp;<font style="color:#a1a1a1; font-size:11px;">
			 		공백없이 영문과 숫자를 이용하여 6~12자 입력해주세요.
			 		</font>
		 	</li>
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
		 	<li><img src="images/name.png" alt="">
		 		<input type="text" size=15 name="name" class="inheight">
		 	</li>
		 	<li><img src="images/joomin.png" alt="">
		 		<input type="text" size=10 name="joomin1" class="inheight"> - 
		 		<input type="text" size=10 name="joomin2" class="inheight">
		 		<font style="color:#a1a1a1; font-size:11px;">
		 		(예시=>151012-1234567 입력)</font>
		 	</li>
		 	<li style="font-size: 13px;"><img src="images/sex.png" alt="">
		 		<label class="radio-inline">
		 		 <input type="radio" name="sex" id="inlineRadio1" value="남자" checked="checked">
		 			남자&nbsp;&nbsp;
		 		</label>	
		 		<label class="radio-inline">
		 		 <input type="radio" name="sex" id="inlineRadio1" value="여자">
		 			여자&nbsp;&nbsp;
		 		</label>
		 	</li>
		 	<li style="font-size: 12px;"><img src="images/birth.png" alt="">
		 		<input type="date" name="birth" style="height: 25px; width: 20%;">
		 		<!-- <select style="width:13%; padding:0;" name=year>
		 		<option selected="selected">년도 선택</option>
		 		<option>1980년</option><option>1981년</option><option>1982년</option>
		 		<option>1983년</option><option>1984년</option><option>1985년</option>
		 		</select>
		 		<select style="width:12%; height:5%; padding:0; " name=month>
		 		<option selected="selected">월 선택</option>
		 		<option>1월</option>	<option>2월</option><option>3월</option>
		 		<option>4월</option><option>5월</option><option>6월</option>
		 		<option>7월</option>	<option>8월</option><option>9월</option>
		 		<option>10월</option><option>11월</option><option>12월</option>
		 		</select>
		 		<select style="width:12%; height:5%; padding:0; " month=day>
		 		<option selected="selected">일 선택</option>
		 		<option>1일</option><option>2일</option><option>3일</option>
		 		<option>4일</option><option>5일</option><option>6일</option>
		 		<option>7일</option><option>8일</option><option>9일</option>
		 		<option>10일</option><option>11일</option><option>12일</option>
		 		<option>13일</option><option>14일</option><option>15일</option>
		 		<option>16일</option><option>17일</option><option>18일</option>
		 		<option>19일</option><option>20일</option><option>21일</option>
		 		<option>22일</option><option>23일</option><option>24일</option>
		 		<option>25일</option><option>26일</option><option>27일</option>
		 		<option>28일</option><option>29일</option><option>30일</option>
		 		<option>31일</option>	 		
		 		</select> -->
		 		&nbsp;&nbsp;
		 		<label class="radio-inline">
		 		 <input type="radio" name="solar" id="inlineRadio1" value="양력" checked="checked">
		 			양력&nbsp;&nbsp;
		 		</label>	
		 		<label class="radio-inline">
		 		 <input type="radio" name="solar" id="inlineRadio1" value="음력">
		 			음력&nbsp;&nbsp;
		 		</label>
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
		 		<select style="width:9%;padding:0;" name=phnoe1>
		 		<option selected="selected">010</option>
		 		<option>011</option>
		 		<option>018</option>
		 		<option>016</option>
		 		</select>
		 		-
		 		<input type="text" name=phnoe2 style="height: 25px; width:5%;"> 
		 		- <input type="text" name=phnoe3 style="height: 25px; width:5%;">
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
		 <a href="index.jsp?page=join/joinResult.jsp">
		 <input type=submit value="회원가입" id="join"></a>
		 &nbsp;&nbsp;&nbsp;
		 
		<input type=reset value="취소" id="join">
		
		 </div>
	   </div>
     </div>
     </div>
      </form> 
	</div>
</div>
  
</body>
</html>		