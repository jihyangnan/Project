<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<div>
		
		<div>
			<h2 class="blog_head" align="left">
				<b>���� ��� - 5�ܰ�</b>
			</h2>

			<div class="service_1" style="margin-left: 40px; padding-top:20px; font-size: xx-large;">
				<p style="font-size: 24px; color: #565a5c;"></p>
				<h3 style="margin-bottom: 10px; color:#565a5c;">������ 1�� ������ �����ϼ���</h3>
				<p style="font-size: 16px; color: #565a5c;">����, ���ǽü�, �մԸ��� ������
					�ݿ��ؼ� ������ ������ �� �ֽ��ϴ�.</p>
			</div>

			
			<div class="service_grid"
				style="border: 1px #CFC7D6; margin-top: 20px; border-radius: 10px; margin-bottom: initial;">
				<div class="col-md-6 service_box" style="width:63.9%; margin-left:25px;">

					<p>
						<label style="font-size: 23px; padding-top: 15px;">�⺻���</label>
					</p>
					<p style="">
						<label style="font-size: 18px; padding-top: 15px;">1�ڴ� ����</label>
					</p>
					<p>
						<label>KWR</label> <input type="text" name="price1"> <%-- "${dto.price1 }" --%> <label
							style="color: yellowgreen;">��õ���� : 15,000��</label>
					</p>
					
					<p style="padding-top: 15px;">
						<a href="#" data-prevent-default="">�ִ� �� ����</a>������ �����ؼ� ���� �ӹ���
						�Խ�Ʈ���� ������ �� �� �� �ֽ��ϴ�.
					</p>
					<hr
						style="margin-top: 50px; margin-bottom: 20px; border: 0; 
						border-top: 1px solid #dce0e0; width:100%; float:left;">

				</div>
				
				<div class="col-md-4 col-md-offset-2  service_box" style="margin:0;">
					<div>
						<div style="top: 154px;">
							<div
								class="help-header-icon-container text-center va-container-h">
								<img
									src="https://a2.muscache.com/airbnb/static/manage_listing/lightbulb2x-8bca59ee335a4dbf1ae2be406fd0693f.png"
									width="50" height="50" class="col-center">
							</div>
							<div class="panel-body">
								<h4 class="text-center">1�ڴ� ����</h4>

								<p>�Ϻ� ȣ��Ʈ�� ���� ������� �����ؼ� ���� �ı⸦ ���� �� ����� �λ��մϴ�. ���Ҹ� ����� �� ����
									���並 �����Ͽ� ���ں��� ����� ������ �� �ֽ��ϴ�.</p>
								<p>
									<a href="/help/article/58">û�Һ�</a>�� <a href="/help/article/474">���
										����</a>�� ���� �߰� ���� - �Խ� �� ������ �� �ֽ��ϴ�.
								</p>

							</div>

						</div>
					</div>

				</div>
				<div class="clearfix"></div>

			</div>
			<div class="col-md-6 service_box" style="width:62.3%; margin-left:40px;">

				<p style="">
					<label style="font-size: 21px; padding-top: 15px;">��� ���� ���</label>
				</p>

				<p style="padding-top: 15px;">
					<label>�ֳ� �� ���� ��� ���ڿ��� ���ڷḦ ������ �ִ� ���� �����ϴ�</label>
				</p>
				<p>
					<label style="font-size: 18px; padding-top: 15px;">�� ���� ���</label>
				</p>
				<p> 
					<label>KWR</label> <input type="text" name="price2"><%-- "${dto.price2 }" --%> <label
						style="color: yellowgreen;">��õ���� : 60,000��</label>
				</p>
				<p style="padding-top: 15px;">
					<label style="font-size: 18px; padding-top: 15px;">�� ���� ���</label>
				</p>
				<p>
					<label>KWR</label> <input type="text" name="price3"><%-- "${dto.price3 }" --%> <label
						style="color: yellowgreen;">��õ���� : 345,000��</label>
				</p>
				<!-- <div style=" text-align:-webkit-center; width: 73%;padding-top: 20px;">
				 <a href="#">
                 <input type="button" value="�ڷ�"></a>
                 <a href="index.jsp?page=nezip/nezipInsert7.jsp">
                 <input type="button" value="����">
                 </a>
                 </div> -->
				<hr
						style="margin-top: 40px; margin-bottom: 60px; border: 0; 
						border-top: 1px solid #dce0e0; width:100%; float:left;">


			</div>
			<div class="col-md-4 col-md-offset-2  service_box" style="margin:0;">
				<div>
					<div style="top: 154px; padding-top: 60px;">
						<div class="help-header-icon-container text-center va-container-h">
							<img
								src="https://a2.muscache.com/airbnb/static/manage_listing/lightbulb2x-8bca59ee335a4dbf1ae2be406fd0693f.png"
								width="50" height="50" class="col-center">
						</div>
						<div class="panel-body">
							<h4 class="text-center">��� ���� ���</h4>

							<p>��� ���� �� ������ ������ �Խ�Ʈ�� ���� �����ϵ��� �����ϼ���.</p>
							<p>
								<a href="/help/article/58">û�Һ�</a>�� <a href="/help/article/474">���
									����</a>�� ���� �߰� ���� - �Խ� �� ������ �� �ֽ��ϴ�.
							</p>

						</div>

					</div>
				</div>

			</div>
			<div class="joinup">
			<a href="nezip_nezipInsert.do?step=4"> 
				<input type=button value="����" id="join" class="btn">
			</a>
			&nbsp;&nbsp;&nbsp; <a href="nezip_nezipInsert.do?step=6">
				<input type=button value="����" id="join" class="btn">
			</a>
		</div>
		</div>
	</div>


