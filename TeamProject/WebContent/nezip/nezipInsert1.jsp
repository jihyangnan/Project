<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Realist an Real_Estate Category Flat Bootstarp Resposive Website Template | Contact :: w3layouts</title>
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
<!----font-Awesome----->
<link rel="stylesheet" href="fonts/css/font-awesome.min.css">
<!----font-Awesome----->
</head>
<body>
<div class="header">
	<div class="col-xs-4">
	  <div class="logo">
		<a href="index.html"><img src="images/logo.png" alt=""/></a>
	  </div>
	</div>
	<div class="col-xs-8 header_right">
	  <span class="menu"></span>
			<div class="top-menu">
				<ul>
					<li><a href="index.html" class="active scroll"><i class="fa fa-home"> </i><b>내집 등록</b></a></li>
					<li><a href="about.html"><i class="fa fa-star"> </i><b>니집 예약</b></a></li>
					<li><a href="services.html"><i class="fa fa-map-marker"></i><b>우리 동네 소개</b></a></li>
					<li><a href="gallery.html"><i class="fa fa-comments"></i><b>고객의 소리</b></a></li>
				<li><a href="join.html"><i class="fa fa-user"></i><b>로그인</b></a></li>
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
			</script>
			<!-- script for menu -->
	</div>
	<div class="clearfix"> </div>
</div>
<div class="about_top">
    <div class="container">
    	<div>
       	 <ul>
       	 <li class="siteline">
       	  <img src="images/homelink.png" style="vertical-align:top;"> 내집 등록</li>
       	 </ul>
       	 </div>
       <div class="about">	 
       	 <h2 class="blog_head" align="left"><b>내집 등록 - 2단계</b></h2>
       	
       	 <div style="margin-left:30px;margin-top:15px;">
       	 
       	에어비앤비에 숙소를 등록하고 호스팅을 시작하세요. 
       	 
       	 </div>
       	        	 
       	 <div style="float:left;margin-left:20px;margin-top:30px;">
       	 
  <div style="border:2px solid #f94b4b;border-radius:10px;padding:20px;">
    <div>
       <ul style="list-style:none;">
       <li style="margin-bottom:-10px;"><h4>집 유형 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;숙소 유형&nbsp;&nbsp;&nbsp;&nbsp;수용 인원 </h4></li>
       <li style="margin-top:10px;">
       <select name=hs style="width:30%;"> 
       <option value=1 selected> 아파트 
       <option value=2> 단독주택
       <option value=3> 게스트하우스
       <option value=4> 빌라
       <option value=5> 호텔
       <option value=6> 기타
       </select> 
       
       <select name=rs style="width:30%;"> 
       <option value=1 selected> 집전체  
       <option value=2> 개인실
       <option value=3> 다인실
       </select> 
       
       <select name=pp style="width:20%;">
       <option value=1 selected> 1
       <option value=2> 2
       <option value=3> 3
       <option value=4> 4
       <option value=5> 5
       </select> </li>
      </ul>
    </div>
    
     <div style="margin-top:20px;">
       <ul style="list-style:none;">
        <li style="margin-bottom:-10px;"><h4>침실수 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;침대&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;욕실 </h4></li>
        <li style="margin-top:10px;">
       <select name=bdrm style="width:30%;"> 
       <option value=1 selected> 1
       <option value=2> 2
       <option value=3> 3
       <option value=4> 4
       </select>
       <select name=bed style="width:20%;"> 
       <option value=1 selected> 1
       <option value=2> 2
       <option value=3> 3
       </select> 
       <select name=bthrm style="width:20%;"> 
       <option value=1 selected> 1
       <option value=2> 2
       <option value=3> 3
       </select> </li>
      </ul>
    </div>


  <div style="margin-top:50px;">
   <div>
       <ul style="list-style:none;">
       <li style="margin-bottom:5px;"><h4>도시</h4></li>
       <li><input type="text" size=30></li>
      </ul>
    </div>
    
    <div>
       <ul style="list-style:none;">
        <li style="margin-bottom:5px;margin-top:10px;"><h4>숙소 이름</h4></li>
       <li><input type="text" size=40></li>
      </ul>
    </div>
          
    <div>
       <ul style="list-style:none;">
        <li style="margin-bottom:5px;margin-top:10px;"><h4>세부사항</h4></li>
       <li><input type="text" size=50></li>
      </ul>
    </div>
  </div>
  
<div>
<input type="submit" value="NEXT" style="margin-top:40px;float:right;background:#f94b4b;color:#f0f0f0;border-radius:5px;padding:5px;">
</div>
  
</div>
   </div>
       
</div>
</div>
</div>
</body>
</html>		

</body>
</html>