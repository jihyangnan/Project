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
        
       		<div class="form_l">
       		<form action="member_login.do" id="log_frm" method="post">
				<div class="form2_l">
					<div class="form3_l">
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
					</div>
				</div>
				</form>
			</div>
			
		</div>
     </div>
      
	</div>