<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<form action="nezip_insert3process.do" method="post">
    <div >
    	
       <div>	 
       	 <h2 class="blog_head" align="left"><b>내집 등록 - 3단계</b></h2>
       	 <!-- 작업 시작  -->
	 </div>
	 <div style="padding-left:40px;">
       	<ul>
	 	<c:forEach var="facKind" items="${facKindList}">
	 		<c:if test="${facKind.si_No != 4 }">
       		<li style="float:left; padding:20px 100px 20px 0px; font-size:18px; font-weight:600; color:#565a5c;">
	 		${facKind.si_Kind}
	 		<div style="font-size: 13px; padding-top:10px;">
	 			<ul>
	 				<c:forEach var="homeFac" items="${homeFacList}">
	 					<c:if test="${homeFac.hs_Kind == facKind.si_No}">
	 					<li class="install">
			       			<label class="checkbox-inline">
				 			 <input type="checkbox" id="inlineCheckbox1" name="install1" value="${homeFac.hs_No}"> ${homeFac.hs_Name} 
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
	 	</c:forEach>
	 
       	 <!-- <li style="float:left; padding:20px 100px 20px 0px; font-size:18px; font-weight:600; color:#565a5c;">
       		기본 편의 시설
       		<div style="font-size: 13px; padding-top:10px;">
       		<ul>
       		<li class="install">
       			<label class="checkbox-inline">
	 			 <input type="checkbox" id="inlineCheckbox1" name="install1"> 필수물품 
				</label>
				 &nbsp;<img src="images/question.png">
       		</li>
       		<li class="install">
       			<label class="checkbox-inline">
	 			 <input type="checkbox" id="inlineCheckbox1" name="install1"> TV
				</label>
       		</li>
       		<li class="install">
       			<label class="checkbox-inline">
	 			 <input type="checkbox" id="inlineCheckbox1" name="install1"> 케이블TV
				</label>
       		</li>
       		<li class="install">
       			<label class="checkbox-inline">
	 			 <input type="checkbox" id="inlineCheckbox1" name="install1"> 에어컨
				</label>
       		</li>
       		<li class="install">
       			<label class="checkbox-inline">
	 			 <input type="checkbox" id="inlineCheckbox1" name="install1"> 난방
	 			</label>
	 			 &nbsp;<img src="images/question.png">
       		</li>
       		<li class="install">
       			<label class="checkbox-inline">
	 			 <input type="checkbox" id="inlineCheckbox1" name="install1"> 부엌
				</label>
				 &nbsp;<img src="images/question.png">
       		</li>
       		<li class="install">
       			<label class="checkbox-inline">
	 			 <input type="checkbox" id="inlineCheckbox1" name="install1"> 인터넷 			 
				</label>
				&nbsp;<img src="images/question.png">
       		</li>
       		<li class="install">
       			<label class="checkbox-inline">
	 			 <input type="checkbox" id="inlineCheckbox1" name="install1"> 무선인터넷
				</label>
				 &nbsp;<img src="images/question.png">
       		</li>
       		</ul>
       		</div>
       	 </li>
       	 <li style="float:left; padding:20px 100px 20px 0px; font-size:18px; font-weight:600; color:#565a5c;">
       		추가적인 편의 시설
       		<div style="font-size: 13px; padding-top:10px;">
       		<ul>
       		<li class="install">
       			<label class="checkbox-inline">
	 			 <input type="checkbox" id="inlineCheckbox1" name="install1"> 욕조
				</label>
			</li>
       		<li class="install">
       			<label class="checkbox-inline">
	 			 <input type="checkbox" id="inlineCheckbox1" name="install1"> 세탁기
				</label>
				 &nbsp;<img src="images/question.png">
       		</li>
       		<li class="install">
       			<label class="checkbox-inline">
	 			 <input type="checkbox" id="inlineCheckbox1" name="install1"> 수영장
				</label>
				 &nbsp;<img src="images/question.png">
       		</li>
       		<li class="install">
       			<label class="checkbox-inline">
	 			 <input type="checkbox" id="inlineCheckbox1" name="install1"> 건조기
				</label>
				 &nbsp;<img src="images/question.png">
       		</li>
       		<li class="install">
       			<label class="checkbox-inline">
	 			 <input type="checkbox" id="inlineCheckbox1" name="install1"> 아침식사
	 			</label>
	 			 &nbsp;<img src="images/question.png">
       		</li>
       		<li class="install">
       			<label class="checkbox-inline">
	 			 <input type="checkbox" id="inlineCheckbox1" name="install1"> 무료 주차 포함
				</label>
       		</li>
       		<li class="install">
       			<label class="checkbox-inline">
	 			 <input type="checkbox" id="inlineCheckbox1" name="install1"> 무료 헬스장			 
				</label>
				&nbsp;<img src="images/question.png">
       		</li>
       		<li class="install">
       			<label class="checkbox-inline">
	 			 <input type="checkbox" id="inlineCheckbox1" name="install1"> 엘리베이터
				</label>
       		</li>
       		<li class="install">
       			<label class="checkbox-inline">
	 			 <input type="checkbox" id="inlineCheckbox1" name="install1"> 실내 벽난로
				</label>
       		</li>
       		<li class="install">
       			<label class="checkbox-inline">
	 			 <input type="checkbox" id="inlineCheckbox1" name="install1"> 초인종/인터폰
				</label>
       		</li>
       		<li class="install">
       			<label class="checkbox-inline">
	 			 <input type="checkbox" id="inlineCheckbox1" name="install1"> 도어맨
				</label>
       		</li>
       		<li class="install">
       			<label class="checkbox-inline">
	 			 <input type="checkbox" id="inlineCheckbox1" name="install1"> 샴푸
				</label>
       		</li>
       		</ul>
       		</div>
       	 </li>
       	 <li style="float:left; padding:20px 100px 20px 0px; font-size:18px; font-weight:600; color:#565a5c;">
       		특별 시설
       		<div>
       		<ul>
       		<li>
       			<label style="font-size: 14px; font-weight:normal; margin-bottom: 0px;">
	 			특별한 요구사항이 있는 게스트를 시설
				</label>
       		</li>
       		</ul>
       		</div>
       		<div style="font-size: 13px; padding-top:10px;">
       		<ul>
       		<li class="install">
       			<label class="checkbox-inline">
	 			 <input type="checkbox" id="inlineCheckbox1" name="install1"> 가족/어린이 환영
				</label>
				&nbsp;<img src="images/question.png">
       		</li>
       		<li class="install">
       			<label class="checkbox-inline">
	 			 <input type="checkbox" id="inlineCheckbox1" name="install1"> 흡연가능
				</label>
       		</li>
       		<li class="install">
       			<label class="checkbox-inline">
	 			 <input type="checkbox" id="inlineCheckbox1" name="install1"> 이벤트/행사 가능
				</label>
				&nbsp;<img src="images/question.png">
       		</li>
       		<li class="install">
       			<label class="checkbox-inline">
	 			 <input type="checkbox" id="inlineCheckbox1" name="install1"> 애완동물 입실 가능
	 			</label>
       		</li>
       		<li class="install">
       			<label class="checkbox-inline">
	 			 <input type="checkbox" id="inlineCheckbox1" name="install1"> 애완/반려동물 키우고 있음
				</label>
       		</li>
       		<li class="install">
       			<label class="checkbox-inline">
	 			 <input type="checkbox" id="inlineCheckbox1" name="install1"> 휠체어 사용 가능			 
				</label>
       		</li>
       		</ul>
       		</div>
       		 </li> -->
       	 </ul>
       	 </div>
		<div class="joinup">
			<a href="nezip_insert2.do"> 
				<input type=button value="이전" id="join" class="btn">
			</a>
			&nbsp;&nbsp;&nbsp; 
				<input type="submit" value="다음" id="join" class="btn">
		</div>
	</div>
	</form>