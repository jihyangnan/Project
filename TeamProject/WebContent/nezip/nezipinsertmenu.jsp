<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<div class="about_top">
	<div class="container">
		<div>
			<ul>
				<li class="siteline"><img src="images/homelink.png"
					style="vertical-align: top;"> ���� ���</li>
			</ul>
		</div>
		<div class="about">
		
			<div class="col-sm-2 aside" style="background: #E2DBDB; padding-left: 0; padding-right: 0">
				<p style="padding: 15px">
					�⺻����<i class="fa fa-check" style="float: right"></i>
				</p>
				<p style="padding: 15px">
					�ּҵ��
				</p>
				<p style="padding: 15px">
					���ǽü�
				</p>
				<p style="padding: 15px">
					������� �� ����
				</p>
				<p style="padding: 15px">
					���ݼ���
				</p>
				<p style="padding: 15px">
					��¥����
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

