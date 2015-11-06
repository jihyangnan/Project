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
        
        <br><br><br><br>
        <h1 class="blog_head_login">로그인</h1>
        <br><br>
<!--  -->
       	<div class="form_l">
				<div class="form2_l" >
				 <!--  <div class="form3_l">
=======
        
       		<div class="form_l">
       		<form action="member_login.do" id="log_frm" method="post">
				<div class="form2_l">
					<div class="form3_l">
>>>>>>> branch 'master' of https://github.com/jihyangnan/Project
						<label for="user" style="font-size: 15px;">아이디</label>
						<input type="text" id="id" name=id>
						<div class="clear"></div>
						<label for="user" style="font-size: 15px;margin-top:8px">비밀번호</label>
						<input type="password"style="margin-top:8px" id="pwd" name=pwd>
					</div>
					<div class="clear"></div>
					<label>
					<input type="submit" value="로그인" id="joinbtn" style="padding:5px;">
					</label>
					<div class="form6_l">
						<label>
						<a href="join_join.do">
						<input type="button"value="회원가입" id="join"></a>
						</label> 
						<label>
						<a href="join_idSearch.do">
						<input type="button" style="margin-left:5%"value="아이디/비밀번호 찾기" id="join"></a>
						</label>
					</div> -->
					
<form class="form-horizontal">
  
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
    </ul>
  </div>
  <div class="clearfix"></div>
</form>
					
			
				</div>

			</div> 
			

			
		</div>
     </div>
      
