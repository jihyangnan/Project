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
        <h1 class="loginfont" style="margin-top:1em;">
        	<img src="images/loginlogo.png">&nbsp; 
        	<font style="font-size: 35pt; font-weight: 700;">Login</font>
        </h1>
		</div>
<div style="text-align: center;">
<div class="line">		
<form class="form-horizontal">
    
	    <div class="col-sm-4" >
	      <input type="text" class="form-control" id="id" aria-describedby="inputSuccess3Status" placeholder="아이디">
	    </div>
	    <div class="col-sm-4">
	      <input type="password" class="form-control" id="pwd" aria-describedby="inputSuccess3Status" placeholder="비밀번호">
	    </div>

	    	<a href="index.do" class="btn btn-warning" >로그인</a>

   <label style="color:#5cb85c;"><h6>아직 회원이 아니시라면</h6></label> 
   <a href="join_join.do" class="btn btn-success"> 회원가입</a>
  
   
    <div >
   <a href="index.do" class="btn btn-warning" >로그인</a>
   <a href="join_idSearch.do" class="btn btn-danger" >아이디/비밀번호 찾기</a>
    </div>

  </div>
  <div class="clearfix"></div>
</form>
</div>		
</div>

</div>

      
