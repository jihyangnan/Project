<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="js/nezipInsert4.js"></script>
	<form action="nezip_insert4process.do" method="post">
	<div >	
	      	 <div>	 
	       	 <h2 class="blog_head" align="left"><b>���� ��� - 4�ܰ�</b></h2>
	       	 <!-- �۾� ����  -->
			 </div>
			<div class="h_regi">
				<div class="regi_form">	
					<ul>
						<li style="font-size: 15px; margin-top: 20px; margin-bottom:10px;">
						<strong>�Խ�Ʈ�� �̿��� �� �ִ� ������ ������ �÷� �ּ���.</strong>
						</li>
						<li>
						 <div class="fileupload fileupload-new" data-provides="fileupload" 
						 style="border: 1px solid #aeaeae; border-radius: 8px; width:60%;">
						    <span class="btn btn-primary btn-file"><span class="fileupload-new">���� �߰�</span>
						    <span class="fileupload-exists">���� ����</span>         <input type="file" /></span>
						    <span class="fileupload-preview"></span>
						    <a href="#" class="close fileupload-exists" data-dismiss="fileupload" style="float: none">��</a>
						 </div>
 						<!-- <div style="padding-top:10px; padding-bottom:15px; width:100%;">
						<input type="file" class="custom-file-input">
						<font style="font-size:12px; color:#b1b1b1; padding-left:10px;">
						����� ���� ������ �÷��ּ���.</font>
						</div> -->
						</li>
						
						<li>
						 <div class="fileupload fileupload-new" data-provides="fileupload" 
						 style="border: 1px solid #aeaeae; border-radius: 8px; width:60%;">
						    <span class="btn btn-primary btn-file"><span class="fileupload-new">���� �߰�</span>
						    <span class="fileupload-exists">���� ����</span>         <input type="file" /></span>
						    <span class="fileupload-preview"></span>
						    <a href="#" class="close fileupload-exists" data-dismiss="fileupload" style="float: none">��</a>
						 </div>
 						<!-- <div style="padding-top:10px; padding-bottom:15px; width:100%;">
						<input type="file" class="custom-file-input">
						<font style="font-size:12px; color:#b1b1b1; padding-left:10px;">
						����� ���� ������ �÷��ּ���.</font>
						</div> -->
						</li>
						
						<li>
						 <div class="fileupload fileupload-new" data-provides="fileupload" 
						 style="border: 1px solid #aeaeae; border-radius: 8px; width:60%;">
						    <span class="btn btn-primary btn-file"><span class="fileupload-new">���� �߰�</span>
						    <span class="fileupload-exists">���� ����</span>         <input type="file" /></span>
						    <span class="fileupload-preview"></span>
						    <a href="#" class="close fileupload-exists" data-dismiss="fileupload" style="float: none">��</a>
						 </div>
 						<!-- <div style="padding-top:10px; padding-bottom:15px; width:100%;">
						<input type="file" class="custom-file-input">
						<font style="font-size:12px; color:#b1b1b1; padding-left:10px;">
						����� ���� ������ �÷��ּ���.</font>
						</div> -->
						</li>
					</ul>
					<div class="image_box" style="margin-left: 0">
						
						<img alt="" src="images/pic1.jpg" class="regi_image"> 
						<img alt="" src="images/pic1.jpg" class="regi_image"> 
						<img alt="" src="images/pic1.jpg" class="regi_image">
					</div>

					<br>
					<ul>
						<li style="font-size: 15px; margin-top: 20px"><strong>�Խ�Ʈ��
								�̿��� �� �ִ� ������ ���� üũ ����Ʈ�� �˷��ּ���.</strong></li>
					</ul>


					 <div>
						<label style="font-size: 20px; margin-top: 10px;">
						<strong>���� üũ ����Ʈ</strong></label><br> 
						<div>
						<c:forEach var="homeFac" items="${homeFacList}">
		 					<c:if test="${homeFac.hs_Kind == 4}">
		 					<label class="checkbox-inline">
							  <input type="checkbox" id="inlineCheckbox1" name="install1" value="${homeFac.hs_No}"> ${homeFac.hs_Name}
							</label>
		 					</c:if>
		 				</c:forEach>  
					
						</div> 	
						 
		 	<%-- <c:forEach var="homeFac" items="${homeFacList}">
		 		<c:if test="${homeFac.hs_Kind == 4}">
	       			<ul>
	       		<li style="float:left; padding:20px 100px 20px 0px; font-size:18px; font-weight:600; color:#565a5c;">
		 		${facKind.si_Kind}
		 		<div style="font-size: 13px; padding-top:10px;">
		 			<ul>
		 				<c:forEach var="homeFac" items="${homeFacList}">
		 					<c:if test="${homeFac.hs_Kind == facKind.si_No}">
		 					<li class="install">
				       			<label class="checkbox-inline">
					 			 <input type="checkbox" id="inlineCheckbox1" name="install1" value="${homeFac.hs_No}"> 
					 			 ${homeFac.hs_Name} 
								</label>
								<c:if test="${homeFac.hs_Content != ' '}">
								 &nbsp;<img src="images/question.png">
								</c:if>
				       		</li>
				       		</c:if>
		 				</c:forEach>
		 			</ul> 
		 		</div>
		 		</li>
		 		</c:if>
		 	</c:forEach>--%>
	 	
	             	
					
					
					<ul>
						<li style="font-size: 18px; margin-top: 15px"><strong>��󿬶���</strong></li>
					</ul>
						<label style="margin-top: 5px; font-size: 15px;font-weight: 500;">
							����ó </label>
						<input style="height: 23px; margin-top: 9px; margin-left: 10px"
							type=text size=5> 
						-<input style="height: 23px; margin-top: 9px; margin-left: 10px" type=text size=5> 
						-<input style="height: 23px; margin-top: 9px; margin-left: 10px" type=text size=5>
						
						
				</div>
			</div>
			<div class="joinup">
			<a href="nezip_insert3.do"> 
				<input type=button value="����" id="join" class="btn"></a>
			
				<input type="submit" value="����" id="join" class="btn">
		</div>
		</div>
	</form>
