<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<script type="text/javascript">
$(function(){
	$('#joinbtn').click(function(){
		if(id=="")
		{
			$('#id').focus();
			return;
		}
		var pwd=$('#pwd').val();
		if(pwd=="")
		{
			$('#pwd').focus();
			return;
		}
		$('#log_frm').submit();
	});
});
</script>
<div class="about_top">
	<div class="container">
		<div>
			<ul>
				<li class="siteline"><img src="images/homelink.png"
					style="vertical-align: top;"> 로그인</li>
			</ul>
		</div>
		<div class="about">
			<div style="margin-top:20px; margin-bottom:1.5em;">
			<h1 class="blog_head_login" style="font-size: 30pt; font-weight:700; margin:0px; color:#87d54d;">
			<img alt="" src="images/loginlogo.png" style="vertical-align: bottom;"> 
			Login
			</h1>
			</div>
			<div class="form_l"  style="border:3px solid #e7e7e7; border-radius:10px;">
				<form action="member_login.do" id="log_frm" method="post">
					<div class="form2_l" >
						<div style="width: 100%; margin-top:35px; margin-bottom:25px;">
						<div class="form3_l">
							<!-- <label for="user" style="font-size: 15px;">아이디</label>  -->
							<input type="text" id="id" name=id placeholder="아이디" 
								style="width:90%;">
							<div class="clear"></div>
							<!-- <label for="user" style="font-size: 15px; margin-top: 8px">비밀번호</label> -->
							<input type="password" placeholder="비밀번호"  id="pwd" name=pwd style="width:90%; margin-top: 10px;">
						</div>
						<!-- <div class="clear"></div> -->
						<label> 
						<input type="submit" value="로그인" id="joinbtn"
							style="padding:20px; background-color:#87d54d; border-radius:5px; border:none; ">
						</label>
						</div>
						<div class="form6_l">
							<font style="font-size:12px;">니집내집 회원이 아니신가요?</font>
							<a href="join_join.do"> 
							<input type="button" class="join-btn" 
							style="font-size: 11px; background-color: #F94B4B; padding:5px 15px; font-weight:400;"
							value="회원가입" id="join"></a>
							</button>
							<!-- <label> <a href="join_join.do"> <input type="button"
									value="회원가입" id="join"></a>
							</label> -->
						</div>
						<div class="form6_l" style="padding-bottom: 35px;">
							<font style="font-size:12px;">아이디/비밀번호를 잊으셨나요?</font>
							<a href="join_idSearch.do">
							<input type="button" class="join-btn" 
							style="font-size: 11px; background-color: #F94B4B; padding:5px 15px; font-weight:400;"
							value="아이디/비밀번호 찾기" id="join"></a>
							<!-- <label> <a href="join_idSearch.do"> <input
									type="button" style="margin-left: 5%" value="아이디/비밀번호 찾기"
									id="join"></a>
							</label> -->
						</div>

						<!-- <form class="form-horizontal">
  
    <ul><li>
    <div class="form-group has-success has-feedback">
    <label class="control-label col-sm-3" for="inputSuccess3">아이디</label>
    <div class="col-sm-9" style="width:50%; margin-left:-15px;">
      <input type="text" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
      <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
      <span id="inputSuccess3Status" class="sr-only"></span>
    </div></div></li>
  
    <li style="margin-top:-5px;">
   <div class="form-group has-success has-feedback" >
    <label class="control-label col-sm-3" for="inputSuccess3">비번</label>
    <div class="col-sm-9" style="width:50%; margin-left:-15px;">
      <input type="password" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
      <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
      <span id="inputSuccess3Status" class="sr-only"></span>
    </div></div></li>
    <li> 
   <label style="color:#5cb85c;"><h6>아직 회원이 아니시라면</h6></label> 
   <a href="join_join.do" class="btn btn-success"> 회원가입</a>
  
    </li>
    <li style="margin-top: 5px;">
    <div >
   <a href="index.do" class="btn btn-warning" >로그인</a>
   <a href="join_idSearch.do" class="btn btn-danger" >아이디/비밀번호 찾기</a>
    </div>
    </li>
    </ul> -->
					</div>
					<div class="clearfix"></div>
				</form>


			</div>

		</div>



	</div>
</div>

