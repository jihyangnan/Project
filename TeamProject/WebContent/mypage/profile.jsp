<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<div class="about_top">
   <div class="container" style="padding-left: 50px;padding-right: 100px;">
    
    	<div>
       	 <ul>
       	 <li class="siteline">
       	<img src="images/homelink.png" style="vertical-align:top;"> 
       	로그인 -&gt; 프로필</li>
       	 </ul>
       	 </div>
       <div class="about">	 
       	 <h2 class="blog_head" align="center"><b>프로필</b></h2>
       	 
       	 <form action="">
      
		 <div class="join" style="align:center;margin-top:40px;">
		  <ul>
		   <li style="border:2px solid #ffffff;border-radius:10px;padding:25px;">
		  <div style="float:left;margin-right:-60px;">
		  <img src="images/profile.jpg" style="width:60%;">
		  </div>
		 	 
		   <div>

		
		 	<ul><font style="color: #565a5c;">
		 	<li style="margin-bottom:6px;"><img src="images/name.png" alt=""> ${dto.name }
		 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 	<img src="images/sex.png" alt=""> ${dto.sex }

		 	</li>

		 	<li style="margin-bottom:6px;"><img src="images/address2.png" alt=""> ${dto.addr1 } ${dto.addr2 }</li>
		 	<li style="margin-bottom:6px;"><img src="images/email.png" alt=""> ${dto.email }</li>
		 	<li style="margin-bottom:6px;"><img src="images/phone.png" alt=""> ${dto.tel }</li>

		 	<li style="font-size: 13px;">
		 	<img src="images/hkind.png" alt="">&nbsp;
			  ■ 아파트 &nbsp; ■ 주택 &nbsp; □ 빌라 &nbsp; □ 호텔 &nbsp; ■ 게스트하우스&nbsp; □ 기타 
		 	</li></font>
		 	</ul>
		  </div>	
		  
		 </li>
		 </ul>
		 </div>	
		
		 
		   <div class="joinup">
		<a href="mypage_profileUp.do"><input type="button" value="수정하기" id="join" class="btn"></a> 
		<a href="mypage_profileOut.do"><input type="button" value="탈퇴하기" id="join" class="btn"></a>
		 </div>		 
	</form></div>
     </div>
    
    
	    
    
</div>
</div>
