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
					style="vertical-align: top;"> �α���</li>
			</ul>
		</div>
        <div class="about">
        
        <br><br><br><br>
        <h1 class="blog_head_login">�α���</h1>
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
						<label for="user" style="font-size: 15px;">���̵�</label>
						<input type="text" id="id" name=id>
						<div class="clear"></div>
						<label for="user" style="font-size: 15px;margin-top:8px">��й�ȣ</label>
						<input type="password"style="margin-top:8px" id="pwd" name=pwd>
					</div>
					<div class="clear"></div>
					<label>
					<input type="submit" value="�α���" id="joinbtn" style="padding:5px;">
					</label>
					<div class="form6_l">
						<label>
						<a href="join_join.do">
						<input type="button"value="ȸ������" id="join"></a>
						</label> 
						<label>
						<a href="join_idSearch.do">
						<input type="button" style="margin-left:5%"value="���̵�/��й�ȣ ã��" id="join"></a>
						</label>
					</div> -->
					
<form class="form-horizontal">
  
    <ul><li>
    <div class="form-group has-success has-feedback">
    <label class="control-label col-sm-3" for="inputSuccess3">���̵�</label>
    <div class="col-sm-9" style="width:50%; margin-left:-15px;">
      <input type="text" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
      <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
      <span id="inputSuccess3Status" class="sr-only"></span>
    </div></div></li>
  
    <li style="margin-top:-5px;">
   <div class="form-group has-success has-feedback" >
    <label class="control-label col-sm-3" for="inputSuccess3">���</label>
    <div class="col-sm-9" style="width:50%; margin-left:-15px;">
      <input type="password" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
      <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
      <span id="inputSuccess3Status" class="sr-only"></span>
    </div></div></li>
    <li> 
   <label style="color:#5cb85c;"><h6>���� ȸ���� �ƴϽö��</h6></label> 
   <a href="join_join.do" class="btn btn-success"> ȸ������</a>
  
    </li>
    <li style="margin-top: 5px;">
    <div >
   <a href="index.do" class="btn btn-warning" >�α���</a>
   <a href="join_idSearch.do" class="btn btn-danger" >���̵�/��й�ȣ ã��</a>
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
      
