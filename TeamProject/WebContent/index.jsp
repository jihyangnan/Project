<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String strPage = request.getParameter("page");
	if(strPage == null){
		strPage = "main/main.jsp";
	}
%>    
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Realist an Real_Estate Category Flat Bootstarp Resposive Website Template | Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Realist Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Grand+Hotel:400' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet:100,300,400,500,600,700,800,900' type='text/css'>
<!-- Menu -->
<script src="js/responsiveslides.min.js"></script>
<script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	nav: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
    
    $(document).ready(function(){
    	var t = new Date();
    	var yy = t.getFullYear();
    	var mm = t.getMonth()+1;
    	var dd = t.getDate();
    	$('.datepicker').each(function(){
    		$(this).datepicker({
    			//startDate: "10/16/2015"
    			format: 'yyyy/mm/dd',
    			startDate: yy + "/" + mm + "/" + dd,
    			language: 'kr'
    		})
    	});
    });
</script>
 <!----font-Awesome----->
<link rel="stylesheet" href="fonts/css/font-awesome.min.css">
<!----font-Awesome----->
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
		    <script type="text/javascript">
			    $(document).ready(function () {
			        $('#horizontalTab').easyResponsiveTabs({
			            type: 'default', //Types: default, vertical, accordion           
			            width: 'auto', //auto or any width like 600px
			            fit: true   // 100% fit in a container
			        });
			    });
</script>
<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<script src="js/bootstrap-datepicker.min.js"></script>
<script src="js/bootstrap-datepicker.kr.min.js"></script>
<style>
	@media screen and (min-width: 800px) {
		li.dropdown:hover > ul.dropdown-menu{     
			display: block;     
			margin: 0;  
		}
	}
</style> 	
</head>
<body>
<div class="header">
	<div class="col-xs-4">
	  <div class="logo">
		<a href="index.html"><img src="images/logo.png" alt=""/></a>
	  </div>
	</div>
	<div class="col-xs-8 header_right">
	  <span class="menu"></span><div style="clear:both;"></div>
			<div class="top-menu">
				<ul>
					<li><a class="active scroll" href="index.html"><i class="fa fa-home"> </i><b>내집 등록</b></a></li>
					<li><a href="about.html"><i class="fa fa-star"> </i><b>니집 예약</b></a></li>
					<li class="dropdown"><a data-target="#" data-toggle="dropdown" href="services.html"><i class="fa fa-map-marker"></i><b>우리 동네 소개</b></a>
						<ul class="dropdown-menu" style="min-width: 130px;">
							<li><a href="#">서울</a></li>
							<li><a href="#">경기</a></li>
							<li><a href="#">인천</a></li>
							<li><a href="#">강원</a></li>
							<li><a href="#">충청</a></li>
							<li><a href="#">전라</a></li>
							<li><a href="#">경상</a></li>
							<li><a href="#">제주</a></li>
						</ul>
					</li>
					<li class="dropdown"><a data-target="#" data-toggle="dropdown" href="gallery.html"><i class="fa fa-comments"></i><b>고객의 소리</b></a>
						<ul class="dropdown-menu" style="min-width: 110px;">
							<li><a href="#">자유게시판</a></li>
							<li><a href="#">1:1문의</a></li>
						</ul>
					</li>
					<li class="dropdown"><a data-target="#" data-toggle="dropdown" href="contact.html"><i class="fa fa-user"></i><b>로그인</b></a>
						<ul class="dropdown-menu" style="min-width: 100px;">
							<li><a href="#">찜하기</a></li>
							<li><a href="#">마이페이지</a></li>
							<li><a href="#">로그아웃</a></li>
						</ul>
					</li>
					<div class="clearfix"></div>
				</ul>
			 </div>
			<!-- script for menu -->
				<script>
				$( "span.menu" ).click(function() {
				  $( ".top-menu" ).slideToggle( "slow", function() {
				    // Animation complete.
				  });
				});
				
				$("ul.dropdown-menu").hover(function() {
					$(this).parent().css('background-color', '#F94B4B');
				}, function(){
					$(this).parent().css('background-color', 'white');
				});
				
			</script>
			<!-- script for menu -->
	</div>
	<div class="clearfix"> </div>
</div>



				   

   <jsp:include page="<%=strPage %>"></jsp:include>
   
	<div class="copy" style="padding-bottom: 5em">
		<p>© 2015 All Rights Reseverd Template by 
		<a href="index.html"><font color="#f94b4b">NiJip NeJip</font></a> </p>
	</div>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>		