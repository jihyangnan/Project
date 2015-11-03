<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<form action="nezip_insert1process.do" method="post">
<div>
	<div>

		<h2 class="blog_head" align="left">
			<b>���� ��� - 1�ܰ�</b>
		</h2>

		<div style="margin-left: 40px; margin-top: 15px;">���������� ���Ҹ� ����ϰ�
			ȣ������ �����ϼ���.</div>
		<div style="float: left; width: 95%; margin-left: 5%; margin-top: 30px;">

			<div
				style="border: 2px solid #f94b4b; border-radius: 10px; padding: 20px;">
				<ul style="list-style: none;">
					<li class="col-sm-4" style="margin-bottom: 10px">
						<div>
							<h4 style="margin-bottom: 10px;">�� ����</h4>
							<select name="houseStyle" id="houseStyle" class="form-control">
							<c:forEach var="homeCategory" items="${homeCateoryList}">
								<option value="${homeCategory.ht_No}">${homeCategory.ht_Name}</option>
							</c:forEach>
								<!-- <option value="1">����Ʈ</option>
								<option value="2">�ܵ�����</option>
								<option value="3">�Խ�Ʈ�Ͽ콺</option>
								<option value="4">����</option>
								<option value="5">ȣ��</option>
								<option value="6">��Ÿ</option> -->
							</select>
							<script>
								$('#houseStyle option').each(function(){
									if($(this).val() == '${houseStyle}'){
										$(this).attr("selected", "selected");
									}
								})
							</script>
						</div>
					</li>



					<li class="col-sm-4" style="margin-bottom: 10px">
						<div>
							<h4 style="margin-bottom: 10px;">���� ����</h4>
							<select name="roomStyle" id="roomStyle" class="form-control">
							<c:forEach var="roomCategory" items="${roomCateoryList}">
								<option value="${roomCategory.hst_No}">${roomCategory.hst_Name}</option>
							</c:forEach>
								<!-- <option value="1">����ü</option>
								<option value="2">���ν�</option>
								<option value="3">���ν�</option> -->
							</select>
							<script>
								$('#roomStyle option').each(function(){
									if($(this).val() == '${roomStyle}'){
										$(this).attr("selected", "selected");
									}
								})
							</script>
						</div>
					</li>


					<li class="col-sm-4" style="margin-bottom: 10px">
						<div>
							<h4 style="margin-bottom: 10px;">���� �ο�</h4>
							<select id="people" name="people" class="form-control">
								<option value=1 selected>1</option>
								<option value=2>2</option>
								<option value=3>3</option>
								<option value=4>4</option>
								<option value=5>5</option>
								<option value=6>6</option>
								<option value=7>7</option>
							</select>
							<script>
								$('#people option').each(function(){
									if($(this).val() == '${people}'){
										$(this).attr("selected", "selected");
									}
								})
							</script>
						</div>
					</li>

					<li class="col-sm-4" style="margin-bottom: 10px">
						<div>
							<h4 style="margin-bottom: 10px;">ħ�Ǽ�</h4>
							<select id="bedroom" name="bedroom" class="form-control">
								<option value=1 selected>1</option>
								<option value=2>2</option>
								<option value=3>3</option>
							</select>
							<script>
								$('#bedroom option').each(function(){
									if($(this).val() == '${bedroom}'){
										$(this).attr("selected", "selected");
									}
								})
							</script>
						</div>
					</li>

					<li class="col-sm-4" style="margin-bottom: 10px">
						<div>
							<h4 style="margin-bottom: 10px;">ħ��</h4>
							<select id="bed" name="bed" class="form-control">
								<option value=1 selected>1</option>
								<option value=2>2</option>
								<option value=3>3</option>
							</select>
							<script>
								$('#bed option').each(function(){
									if($(this).val() == '${bed}'){
										$(this).attr("selected", "selected");
									}
								})
							</script>
						</div>
					</li>

					<li class="col-sm-4" style="margin-bottom: 10px">
						<div>
							<h4 style="margin-bottom: 10px;">���</h4>
							<select id="bathroom" name="bathroom" class="form-control">
								<option value=1 selected>1</option>
								<option value=2>2</option>
								<option value=3>3</option>
							</select>
							<script>
								$('#bathroom option').each(function(){
									if($(this).val() == '${bathroom}'){
										$(this).attr("selected", "selected");
									}
								})
							</script>
						</div>
					</li>

					<li class="clearfix"></li>
				</ul>



				<div style="margin-top: 30px;" class="row">

					<div class="col-sm-6">
						<!-- <div>
							<ul style="list-style: none;">
								<li style="margin-bottom: 5px;"><h4>����</h4></li>
								<li class="row">
									<div class="col-sm-8">
										<input name="city" type="text" class="form-control">
									</div>
								</li>
							</ul>
						</div> -->

						<div>
							<ul style="list-style: none;">
								<li style="margin-bottom: 5px; margin-top: 10px;"><h4>����
										�̸�</h4></li>
								<li class="row">
									<div class="col-sm-10">
										<input name="housename" value="${housename}" type="text" class="form-control">
									</div>
								</li>
							</ul>
						</div>

						<div>
							<ul style="list-style: none;">
								<li style="margin-bottom: 5px; margin-top: 10px;"><h4>���λ���</h4></li>
								<li class="row">
									<div class="col-sm-10">
										<input name="detail" value="${detail}" type="text" class="form-control">
									</div>
								</li>
							</ul>
						</div>
					</div>

					<div class="col-sm-6">
						<dl>
							<dt>
								<font style="color: #f94b4b; size: 25pt;">���� ����Ͻñ� ����
									������ֽ� ���׵�!</font>
							</dt>
							<br />
							<dd style="margin-bottom: 5px;">- ��Ȯ�� ���������� �⺻</dd>
							<dd style="margin-bottom: 5px;">- ��� ���ǿ� ���� ��û�� 24�ð� ���� ����</dd>
							<dd style="margin-bottom: 5px;">- ������ Ȯ���� ���� ������ ���� ����</dd>
							<dd style="margin-bottom: 5px;">- �Խ�Ʈ�� ����� ���������� �׻� û���ϰ� ����</dd>
							<dd>- �پ��� ���ǽü� �غ�- ȭ����, ��Ʈ ���</dd>
						</dl>
					</div>

				</div>
			</div>


		</div>
	</div>
</div>

<!-- div>
<ul style="list-style:none;">
<li><font style="color:#f94b4b;size:20pt;">����Ͻñ� ���� �о �մԸ��̱�Ģ!</font></li>
<li>��Ȯ�� ���������� ���ּ���.</li>
<li>���  ���ǿ� ���� ��û�� 24�ð� ���� �����ؾ��մϴ�.</li>
<li>������ Ȯ���� ���� ������ ���� �����Ͻð�, �Ұ����� ��� ��ü ���� ������ �� �ֵ��� �����ּ���.</li>
<li>��Ȯ�� ���������� ���ּ���.</li>
</ul>
</div>
</div-->

     <div class="joinup"> 
 
 <input type="submit" value="����" id="join" class="btn">
</div>   
</form>

