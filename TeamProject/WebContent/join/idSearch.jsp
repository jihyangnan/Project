<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<div class="about_top">
		<div class="container">
			<div>
			<ul>
				<li class="siteline"><img src="images/homelink.png"
					style="vertical-align: top;" > 로그인 / 아이디&비밀번호 찾기</li>
			</ul>
		</div>
			<div class="about">
				<br>
				<!-- <h2 class="blog_head">아이디/비밀번호 찾기</h2> -->

				
					<h2 class="blog_head_login" align="center" style="color:#87d54d;">아이디 찾기</h2>
					 <div class="s_Id_form" style="margin-bottom: 50px;margin-top:10px;border:3px solid #e7e7e7; border-radius:10px;margin-left:300px;margin-right:300px; " align="center" >
						<!-- <label style="margin: 1% 0% 1% 0%; font-size: 12px; color:#666666;margin-bottom:10px;">
	                 	찾고자 하는 아이디의 정보를 입력해 주세요. 	</label> -->
					<div class="form2_s">
						<div class="form3_s">
							<label for="user" style="font-size: 15px;margin-top: 20px;margin-left:-55px;">이름</label> <input
								type="text" style="width: 40%" id="user">
							<div class="clear"></div>
							<label for="user" style="font-size: 15px; margin-top: 5px">주민번호</label>
							<input type="text" style="width: 30%; margin-top: 5px" id="user">
							- <input type="password" style="width: 30%; margin-top: 5px"
								id="user">
						</div>
						
						
						<div class="clear"></div>
						
						<div class="s_form6" style="margin-top: 20px;">
						<label> 
							<a href="index.jsp?page=join/idSearchCheck.jsp">
						 	<input type="button" value="확인" id="join">
							</a>
						</label>
						
							<label> 
							<a href="index.jsp?page=join/login.jsp"> <input type="submit"value="로그인" id="join"></a>
							</label>
						</div>
						
					</div>
				</div>

 
 
 <!-- <form class="form-horizontal" >
   <div>
    <ul style="width:50%;">
   
    <div class="form-group has-success has-feedback" style="borde">
    <label class="control-label col-sm-3" for="inputSuccess3">이름</label>
	    <div class="col-sm-9" style="width:50%; margin-left:-15px;">
	      <input type="text" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
	      <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
	      <span id="inputSuccess3Status" class="sr-only"></span>
	    </div>
    </div>
  
    <li>
    <div class="form-group has-success">
  <label class="control-label" for="inputSuccess1">주민번호</label>
  <p><input type="text" class="form-control" id="inputSuccess1" style="width:25%;"> - <input type="password" class="form-control" id="inputSuccess1" style="width:25%;"></p>
</div>
   </li>
 
   <li style="margin-top: 5px;">
    <div>
	   <a href="index.do" class="btn btn-warning" >확인</a>
	   <a href="join_idSearch.do" class="btn btn-danger" >로그인</a>
    </div>
   </li>
 </ul>
      <div class="clearfix"></div>
</div> 
</form>
 -->

				
					<h2 class="blog_head_login" align="center" style="color:#87d54d;">비밀번호 찾기</h2>
						<!-- <label style="margin: 0 3% 3% 20%; font-size: 15px">
				찾고자 하는 아이디와 정보를 입력해 주세요
				</label> -->
				<div class="s_Pwd_form" style="margin-bottom:100px;margin-top:10px;border:3px solid #e7e7e7; border-radius:10px;margin-left:300px;margin-right:300px; " align="center"">
					<div class="form2_s">
						<div class="form3_s">
							<label for="user" style="font-size: 15px;margin-top: 20px;">아이디</label> <input
								type="text" style="width:60%" id="user">
							<div class="clear"></div>
							<label for="user" style="font-size: 15px; margin-top: 5px">주민번호</label>
							<input type="text" style="width: 30%; margin-top: 5px" id="user">
							- <input type="password" style="width:30%; margin-top: 5px"
								id="user">
							<div class="clear"></div>
							<label for="user" style="font-size: 15px; margin-top: 5px">E-mail</label>

							<input type="text" style="width:25%; margin-top: 5px"
								name="email" class="inputstyle">@ <select
								style="width: 30%; padding: 0; margin-top: 5px" name=eaddr>
								<option selected="selected">naver.com</option>
								<option>hanmail.net</option>
								<option>gmail.com</option>
								<option>nate.com</option>
							</select>
						</div>


						
						<div class="s_form6">
						
						<label> <a href="index.jsp?page=join/pwdCheck.jsp"> 
						<input type="button"style="margin-top:10px"value="확인" id="join">
						</a>
						</label>
						
							<label> 
								<a href="index.jsp?page=join/login.jsp"> 
								<input type="submit"style="margin-top:10px" value="로그인" id="join">
								</a>
							</label>
						</div>
					</div>
				</div>


			</div>
		</div>

		
	</div>