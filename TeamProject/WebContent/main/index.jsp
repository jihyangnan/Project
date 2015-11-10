<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%
	String strPage = request.getParameter("page");
	/* if(strPage == null){
		strPage = "main/main.jsp";
	} */
	
	int pageNum = 0;
	if(strPage != null){
		if(strPage.startsWith("nezip")){
			request.setAttribute("insertStep", strPage.substring("nezip/nezipinsert".length(), strPage.lastIndexOf(".jsp")));
			request.setAttribute("insertPage", strPage.substring("nezip/".length()));
			strPage = "nezip/nezipinsertmenu.jsp";
			pageNum = 1;
		} else if(strPage.startsWith("reserve")){
			pageNum = 2;
		} else if(strPage.startsWith("town")){
			pageNum = 3;
		} else if(strPage.startsWith("board")){
			pageNum = 4;
		} else if(strPage.startsWith("join")){
			pageNum = 5;
		}
		request.setAttribute("pageNum", pageNum);
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
<!-- link href="css/bootstrap.css" rel='stylesheet' type='text/css' /-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<%=request.getContextPath()%>/js/jquery-1.11.1.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/weather.css">
<link href="css/board.css" rel='stylesheet' type='text/css' />
<link href="css/reserve.css" rel='stylesheet' type='text/css' />
<link href="css/nezip.css" rel='stylesheet' type='text/css' />
<link href="css/login.css" rel='stylesheet' type='text/css' />
<link href="css/idSearch.css" rel='stylesheet' type='text/css' />
<link href="css/idCheck.css" rel='stylesheet' type='text/css' />
<link href="css/pwdCheck.css" rel='stylesheet' type='text/css' />
<link href="css/jimList.css" rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Grand+Hotel:400' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet:100,300,400,500,600,700,800,900' type='text/css'>

<!-- 회원가입 -->
<link rel="stylesheet" type="text/css" href="join/shadow/css/shadowbox.css"/>
<script type="text/javascript" src="join/shadow/js/shadowbox.js"></script>

<!-- Menu -->
<script src="js/responsiveslides.min.js"></script>
<script src="dist/summernote.min.js"></script>
<link href="dist/summernote.css" rel="stylesheet">
<script src="dist/summernote-ko-KR.js"></script>
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
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
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
		<a href="index.jsp"><img src="images/logo.png" alt=""/></a>
	  </div>
	</div>
	<div class="col-xs-8 header_right">
	  <span class="menu"></span><div style="clear:both;"></div>
			<div class="top-menu">
				<ul>
					<li><a href="nezip_insert1.do"><i class="fa fa-home"> </i><b>내집 등록</b></a></li>
					<li><a href="reserve_list.do"><i class="fa fa-star"> </i><b>니집 예약</b></a></li>
					<li class="dropdown"><a href="town_list.do" >
						<i class="fa fa-map-marker"></i><b>우리 동네 소개</b></a>
					</li>
					<li class="dropdown"><a data-toggle="dropdown" style="cursor: pointer;" onclick="location.href='board_list.do'"><i class="fa fa-comments"></i><b>고객의 소리</b></a>
						<ul class="dropdown-menu" style="min-width: 110px;">
							<li><a href="board_list.do">자유게시판</a></li>
							<c:if test="${sessionScope.id!='admin' }">
							<li><a href="question_insert.do">1:1문의</a></li>
							</c:if>
							<c:if test="${sessionScope.id=='admin' }">
							<li><a href="question_list.do">1:1문의 관리</a></li>
							</c:if>
							
						</ul>
					</li>

					<li class="dropdown">
						
							<c:if test="${empty sessionScope.id}">
							<a data-toggle="dropdown" style="cursor: pointer;" onclick="location.href='join_login.do'">
							<i class="fa fa-user"></i>
								<b>로그인</b>
								</a>
							</c:if>
							<c:if test="${not empty sessionScope.id}">
							<a data-toggle="dropdown" style="cursor: pointer;">
							<i class="fa fa-user"></i>
								<b>${sessionScope.id}님</b>
								</a>
								<ul class="dropdown-menu" style="min-width: 100px;">
									<!-- <li><a href="mypage_jimList.do">찜하기</a></li> -->
									<li><a href="mypage_profile.do?id=${id }">마이페이지</a></li>
									<li><a href="mypage_regCheck.do">등록내역</a></li>
									<li><a href="mypage_reserveCheck.do">예약내역</a></li>
									<li><a href="member_logout.do">로그아웃</a></li>
								</ul>
							</c:if>
					</li>
					<li class="clearfix"></li>
				</ul>
			 </div>
			<!-- script for menu -->
			<script>
				$( "span.menu" ).click(function() {
				  $( ".top-menu" ).slideToggle( "slow", function() {
				    // Animation complete.
				  });
				});
				
				// 드롭다운 메뉴 색상 변경
				$("ul.dropdown-menu").hover(function() {
					$(this).parent().css('background-color', '#F94B4B');
				}, function(){
					$(this).parent().css('background-color', 'white');
				});
				
				// 메뉴 색상 변경하기
				$('div.top-menu > ul > li:nth-child(' + "${requestScope.pageNum}" + ') > a').addClass('active');
			</script>
			<!-- script for menu -->
	</div>
	<div class="clearfix"> </div>
</div>

   	<c:if test="${empty jsp }">
   		<jsp:include page='<%="../"+strPage %>'></jsp:include>
   	</c:if>		 
	<c:if test="${not empty jsp }"> 
   		<jsp:include page="${jsp}"></jsp:include>
   	</c:if>
   
	<div class="copy" style="padding-bottom: 5em">
		<p>© 2015 All Rights Reseverd Template by 
		<a href="index.jsp?page=main/company.jsp"><font color="#f94b4b">NiJip NeJip</font></a> </p>
	</div>
	
</body>
</html>		