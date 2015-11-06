<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/post.css"/>
<style type="text/css">
span,label
{
   color: white;
}
#id,#span
{
   width:80px;
   text-align: center;
}
</style>
<script type="text/javascript">
var httpRequest=null;
function createHttpRequest()
{
    if(window.ActiveXObject)//IE6
    {
         return new ActiveXObject("Msxml2.XMLHTTP");
         // Microsoft.XMLHTTP 6���� 
    }
    else if(window.XMLHttpRequest)// ũ�� , FF
    {
       return new XMLHttpRequest();
    }
    else
    {
       return null;
    }
}
function sendMessage(method,param,url,callback)
{
      //���� ���� DWR,DOJO
      httpRequest=createHttpRequest();
      httpRequest.open(method,url+param,true);
      //true: �񵿱�, false:����
      httpRequest.onreadystatechange=callback;
      httpRequest.send(null);
}
function postfind_result()
{
      if(httpRequest.readyState==4)
      {
         if(httpRequest.status==200)
         {
            $('#postPrint').html(httpRequest.responseText);
         }   
      }
      
}
function postfind() {     
	var param = $('#dong').val();
		if (param == "") {
			$('#dong').focus();
			return;
		}
		param = "?dong=" + param;
		sendMessage('GET', param, "../postfind.do", postfind_result);
}
function postok(zip,addr){
	   parent.join_frm.post.value=zip;
	   parent.join_frm.addr1.value=addr;
	   parent.Shadowbox.close();
}
$(function(){
	$('#postFindBtn').click(function(){
		  postfind();
	  });	  
});
</script>
</head>
<body>
<div id="post_wrapper" style="text-align: center">
	 <p>
	 <label for="userdong">입력</label>
	 <input type=text name=dong id="dong">
	 <input type=button id="postFindBtn" value="id체크">
	 </p>
	 <p>
	 <span style="text-align: center">시,도,구,동,읍 다 입력해봐</span>
	 </p>
	 <span style="color:white" id="postPrint" ></span>
</div>
</body>
</html>