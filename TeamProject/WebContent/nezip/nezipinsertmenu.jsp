<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="about_top">
	<div class="container">
		<div>
			<ul>
				<li class="siteline"><img src="images/homelink.png"
					style="vertical-align: top;"> 내집 등록</li>
			</ul>
		</div>
		<div class="about">
		
			<c:set var="remainedStepCount" value="5" />
			<c:set var="remainedlowestStep" value="0" />
			<div class="col-sm-2 aside" style="background: #E2DBDB; padding-left: 0; padding-right: 0">
				<p style="padding: 15px; cursor: pointer;" onclick="location.href='nezip_insert1.do'">
					기본설정
					<c:if test="${sessionScope.completeStep[0] == true }">
						<c:set var="remainedStepCount" value="${remainedStepCount - 1}" />
						<i class="fa fa-check" style="float: right; color: #87d54d"></i>
					</c:if>
					<c:if test="${sessionScope.completeStep[0] != true || empty sessionScope.completeStep}">
						<c:set var="remainedlowestStep" value="1" />
					</c:if>
				</p>
				<p style="padding: 15px; cursor: pointer;" onclick="location.href='nezip_insert2.do'">
					주소등록
					<c:if test="${sessionScope.completeStep[1] == true }">
						<c:set var="remainedStepCount" value="${remainedStepCount - 1}" />
						<i class="fa fa-check" style="float: right; color: #87d54d"></i>
					</c:if>
					<c:if test="${sessionScope.completeStep[1] != true}">
						<c:set var="remainedlowestStep" value="${remainedlowestStep == 0 ? 2 : remainedlowestStep}" />
					</c:if>
				</p>
				<p style="padding: 15px; cursor: pointer;" onclick="location.href='nezip_insert3.do'">
					편의시설
					<c:if test="${sessionScope.completeStep[2] == true }">
						<c:set var="remainedStepCount" value="${remainedStepCount - 1}" />
						<i class="fa fa-check" style="float: right; color: #87d54d"></i>
					</c:if>
					<c:if test="${sessionScope.completeStep[2] != true}">
						<c:set var="remainedlowestStep" value="${remainedlowestStep == 0 ? 3 : remainedlowestStep}" />
					</c:if>
				</p>
				<p style="padding: 15px; cursor: pointer;" onclick="location.href='nezip_insert4.do'">
					사진 및 안전
					<c:if test="${sessionScope.completeStep[3] == true }">
						<c:set var="remainedStepCount" value="${remainedStepCount - 1}" />
						<i class="fa fa-check" style="float: right; color: #87d54d"></i>
					</c:if>
					<c:if test="${sessionScope.completeStep[3] != true}">
						<c:set var="remainedlowestStep" value="${remainedlowestStep == 0 ? 4 : remainedlowestStep}" />
					</c:if>
				</p>
				<p style="padding: 15px; cursor: pointer;" onclick="location.href='nezip_insert5.do'">
					가격 및 날짜
					<c:if test="${sessionScope.completeStep[4] == true }">
						<c:set var="remainedStepCount" value="${remainedStepCount - 1}" />
						<i class="fa fa-check" style="float: right; color: #87d54d"></i>
					</c:if>
					<c:if test="${sessionScope.completeStep[4] != true}">
						<c:set var="remainedlowestStep" value="${remainedlowestStep == 0 ? 5 : remainedlowestStep}" />
					</c:if>
				</p>
				<p style="padding: 15px; text-align: center; margin-top: 20px">
					<c:if test="${remainedlowestStep == 0}">
						모든 단계가<br /> 
						<a href="nezip_insert5.do">
							<span style="color: red; font-weight:bold; text-decoration: underline;">완료</span>
						</a>
						되었습니다.
					</c:if>
					<c:if test="${remainedlowestStep > 0}">
					등록까지 
					<a href="nezip_insert${remainedlowestStep}.do">
						<span style="color: red; font-weight:bold; text-decoration: underline;">${remainedStepCount}단계</span>
					</a><br/> 
					남았습니다.
					</c:if>
				</p>
			</div>
		
		
			<div class="col-sm-10 article">
				<jsp:include page="${requestScope.insertPage}"></jsp:include>
			</div>
			<script>
				if(matchMedia('screen and (min-width: 768px)').matches){
					$('div.aside').css('height', $('div.article').css('height'));
				}
				
				//$('div.aside p:nth-child(' + "${requestScope.insertStep}" + ')').append('<i class="fa fa-check" style="float: right"></i>');
				$('div.aside p:nth-child(' + "${requestScope.insertStep}" + ')').css({'backgroundColor': '#C7BCBC', 'fontWeight': 'bold'});
			</script>
			<div class="clearfix"></div>
		</div>
	</div>
</div>

