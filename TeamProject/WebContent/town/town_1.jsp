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
							<input type="submit" id="join" class="btn" value="����� �����" style="margin-left: 70%; margin-bottom: 2%;">
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

						<a href="index.jsp?page=town/town.jsp"> <input type="submit"
							id="join" class="btn" value="��� ����" style="margin-left: 90%;">
						</a>

						<div class="sp-slideshow" style="height: 320px; width: 470px;">

							<input id="button-1" type="radio" name="radio-set"
								class="sp-selector-1" checked="checked"> <label
								for="button-1" class="button-label-1"></label> <input
								id="button-2" type="radio" name="radio-set"
								class="sp-selector-2"> <label for="button-2"
								class="button-label-2"></label> <input id="button-3"
								type="radio" name="radio-set" class="sp-selector-3"> <label
								for="button-3" class="button-label-3"></label> <input
								id="button-4" type="radio" name="radio-set"
								class="sp-selector-4"> <label for="button-4"
								class="button-label-4"></label> <input id="button-5"
								type="radio" name="radio-set" class="sp-selector-5"> <label
								for="button-5" class="button-label-5"></label> <label
								for="button-1" class="sp-arrow sp-a1"></label> <label
								for="button-2" class="sp-arrow sp-a2"></label> <label
								for="button-3" class="sp-arrow sp-a3"></label> <label
								for="button-4" class="sp-arrow sp-a4"></label> <label
								for="button-5" class="sp-arrow sp-a5"></label>

							<div class="sp-content">
								<div class="sp-parallax-bg"></div>
								<ul class="sp-slider clearfix">
									<li style="padding-left: 10px; padding-right: 10px;">
									<img src="images/bool.jpg" alt="image02"
										style="height: 330px; width: 380px;"></li>
									<li style="padding-left: 10px; padding-right: 10px;">
									<img src="images/bool2.jpg" alt="image02"
										style="height: 330px; width: 380px;"></li>
									<li style="padding-left: 10px; padding-right: 10px;">
									<img src="images/bool3.jpg" alt="image02"
										style="height: 330px; width: 380px;"></li>
									<li style="padding-left: 10px; padding-right: 10px;">
									<img src="images/bool4.jpg" alt="image02"
										style="height: 330px; width: 380px;"></li>
									<li style="padding-left: 10px; padding-right: 10px;">
									<img src="images/bool5.jpg" alt="image02"
										style="height: 330px; width: 380px;"></li>
								</ul>
							</div>
							<!-- sp-content -->

						</div>
						<h3 style="color: #999;">������ �� , �ұ���</h3>
						<hr
							style="margin-top: 30px; border: 0; border-top: 1px solid #dce0e0;">

						<p>���Ѻұ������� 11���������� �ϳ��� �� �泻�� 2009�� 12�� 21�Ͽ� ���� ��502ȣ�� �����Ǿ�����
							1995�� ���蹮ȭ�����Ͽ� ��ϵǾ���.</p>
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