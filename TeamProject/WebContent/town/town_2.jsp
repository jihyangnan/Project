<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div class="about_top">
	<div class="container">
		<div style="margin-top: 20px;">
			<div style="float: right; margin-right: 50px;">
				<img src="images/sogae.jpg" style="float: right; width: 80%; margin-right: -10px;">
			</div>

			<div>
				<div   style="border: 1px #CFC7D6; margin-top: 20px;border-radius: 10px;">
				<p style="border-bottom: 2p border-color: gray;">
					<span style="font-size: 35px;padding-right: 5%;">
									�ұ���</span>
				</p>
				<hr style="margin-top: 30px; margin-bottom: 30px; border: 0; border-top: 1px solid #dce0e0;">

					<div class="col-md-5 service_box" style="float: left;">
						<ul style="list-style: none; margin-top: 10px;">

							<li style="padding-bottom: 1%; padding-top: 1%; ">
							       <i class="fa fa-check">
									��ȸ�� 30 </i> �ۼ��� 2015-10-12</li>
							<li style="padding-bottom: 1%; padding-top: 1%;"><i class="fa fa-map-marker">���ϵ�
									���ֽ� ������ ��ġ,</i></li>
							<li style="padding-bottom: 1%; padding-top: 1%;">
							���Ѻұ� ������ �� 11���� ����, ���� �� ���� ����.</li>
							<input type="submit" value="����� �����" style="margin-left: 70%; margin-bottom: 2%;">
							<div>
								<div id="map" style="width: 100%; height: 500px;"></div>

								<script type="text/javascript"
									src="//apis.daum.net/maps/maps3.js?apikey=37aec586afb9fc326be8b882a49c024d&libraries=services"></script>


								<script>
									var mapContainer = document
											.getElementById('map'), // ������ ǥ���� div 
									mapOption = {
										center : new daum.maps.LatLng(
												33.450701, 126.570667), // ������ �߽���ǥ
										level : 3
									// ������ Ȯ�� ����
									};

									var map = new daum.maps.Map(mapContainer,
											mapOption); // ������ �����մϴ�

									// ��Ŀ�� ǥ�õ� ��ġ�Դϴ� 
									var markerPosition = new daum.maps.LatLng(
											33.450701, 126.570667);

									// ��Ŀ�� �����մϴ�
									var marker = new daum.maps.Marker({
										position : markerPosition
									});

									// ��Ŀ�� ���� ���� ǥ�õǵ��� �����մϴ�
									marker.setMap(map);

									// �Ʒ� �ڵ�� ���� ���� ��Ŀ�� �����ϴ� �ڵ��Դϴ�
									// marker.setMap(null);
								</script>
							</div>
						</ul>
					</div>

					<div class="col-md-6 service_box" style="padding-left: 9%;">
						<input type="submit" value="��� ����" style="margin-left: 90%; ">
						<img src="images/bool.jpg" style="width: 500px; padding-top: 10%;">
						<h3 style="color: #999;">������ �� , �ұ���</h3>
						<hr
							style="margin-top: 30px; border: 0; border-top: 1px solid #dce0e0;">
						
							<p>���Ѻұ������� 11���������� �ϳ��� �� �泻�� 2009�� 12�� 21�Ͽ� ���� ��502ȣ��
								�����Ǿ����� 1995�� ���蹮ȭ�����Ͽ� ��ϵǾ���.</p>
								<p>�ұ��� â�ǿ� ���Ͽ��� �� ���� ���� ���Ѵ�. �� �� �ϳ��� ���ұ�����â�⡷��, ���⿡ ����
									528��(�Ŷ� ����� 15) ������� ��Ӵ� ���������� �߿�����</p>
								<p>�ұ��縦 â���Ͽ� 574�� ������� ��Ӵ��� ���Һ����� ���� ũ�� �߰��ϸ鼭 ����ڳ��Ұ� �ƹ�Ÿ����
									�����ϰ� �Ͽ� �����Ͽ���,</p>
						
					</div>
					<div class="clearfix"></div>
				</div>
          </div>
	 </div>
	</div>
</div>