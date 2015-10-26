<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<div class="about_top">
	<div class="container">
		<div>
			<ul>
				<li class="siteline"><img src="images/homelink.png"
					style="vertical-align: top;"> 내집 등록</li>
			</ul>
		</div>
		<div class="about">
		
			<div class="col-sm-2 aside" style="background: #E2DBDB; padding-left: 0; padding-right: 0">
				<p style="padding: 15px">
					기본설정<i class="fa fa-check" style="float: right"></i>
				</p>
				<p style="padding: 15px">
					주소등록
				</p>
				<p style="padding: 15px">
					편의시설
				</p>
				<p style="padding: 15px">
					사진등록 및 안전
				</p>
				<p style="padding: 15px">
					가격설정
				</p>
				<p style="padding: 15px">
					날짜설정
				</p>
		
			</div>
		
		
			<div class="col-sm-10 article">
				<jsp:include page="${requestScope.insertPage}"></jsp:include>
			</div>
			<script>
				if(matchMedia('screen and (min-width: 768px)').matches){
					$('div.aside').css('height', $('div.article').css('height'));
				}
			</script>
			<div class="clearfix"></div>
		</div>
	</div>
</div>

