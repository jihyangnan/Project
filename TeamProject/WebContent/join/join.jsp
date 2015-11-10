<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--     <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<script src="js/script.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script> 
<script type="text/javascript" src="js/nav.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript" src="js/nav-hover.js"></script> -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
	Shadowbox.init({
		players : [ 'iframe' ]
	});

	$('#username').focus();
	$('#btnSub').click(function() {

		$('#joinForm').submit();
	});

	$(function() {
		$('#useridBtn').click(function() {
			Shadowbox.open({
				content : 'join/idcheck.jsp',
				player : 'iframe',
				title : '아이디 중복체크',
				width : 250,
				height : 100
			});
		});
		/* $('#userpostBtn').click(function() {
			Shadowbox.open({
				content : 'join/postfind.jsp',
				player : 'iframe',
				title : '우편번호 찾기',
				width : 600,
				height : 400
			});
		}); */
		$('#btnCancel').click(function() {
			history.back();
		});
	});

	function sample6_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var fullAddr = ''; // 최종 주소 변수
						var extraAddr = ''; // 조합형 주소 변수

						// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							fullAddr = data.roadAddress;

						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							fullAddr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
						if (data.userSelectedType === 'R') {
							//법정동명이 있을 경우 추가한다.
							if (data.bname !== '') {
								extraAddr += data.bname;
							}
							// 건물명이 있을 경우 추가한다.
							if (data.buildingName !== '') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
							fullAddr += (extraAddr !== '' ? ' (' + extraAddr
									+ ')' : '');
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('inheight_postcode').value = data.zonecode; //5자리 새우편번호 사용
						document.getElementById('inheight_address').value = fullAddr;

						// 커서를 상세주소 필드로 이동한다.
						document.getElementById('inheight_address2').focus();
					}
				}).open();
	}
</script>
<div class="about_top">
	<div class="container">
		<div>
			<ul>
				<li class="siteline"><img src="images/homelink.png"
					style="vertical-align: top;"> 로그인 / 회원가입</li>
			</ul>
		</div>
		<div class="about">
			<h2 class="blog_head" align="center">
				<b>회원 가입</b>
			</h2>
			<form name="join_frm" id="joinForm" action="join_ok.do">
				<div class="jumbotron"
					style="padding-top: 30px; background-color: #fff">
					<div class="join" align="center">
						<ul>
							<li><img src="images/id.png" alt=""> <input
								type="text" size=15 name="id" id="id" class="inheight">&nbsp;
								<input type="button" id="useridBtn" value=중복체크
								style="font-size: 12px;"> &nbsp;<font
								style="font-size: 10px; color: #a1a1a1; font-size: 11px;">
									공백없이 영문과 숫자를 이용하여 6~12자 입력해주세요. </font></li>
							<li><img src="images/pwd.png" alt=""> <input
								type="password" size=15 name="pwd" class="inheight">&nbsp;
								&nbsp;<font style="color: #a1a1a1; font-size: 11px;">
									공백없이 영문과 숫자를 이용하여 6~12자 입력해주세요. </font></li>
							<li><img src="images/pwdhint.png" alt=""
								style="float: left;">
								<div class="pwdhint">
									<ul style="display: inline-block;">
										<li><font style="font-size: 13px;">좋아하는 여행지는? </font> <font
											style="color: #a1a1a1; font-size: 11px;"> (한국이 아니여도
												상관없어요! 국내, 국외 어디든 좋아하는 여행지 적어주세요.)</font></li>
										<li><input type="text" name="pwhint"
											style="height: 25px; width: 90%;"></li>
									</ul>
								</div></li>
							<li><img src="images/name.png" alt=""> <input
								type="text" size=15 name="name" class="inheight"></li>
							<!-- <li><img src="images/joomin.png" alt=""> <input
								type="text" size=10 name="rrn1" class="inheight"> - <input
								type="text" size=10 name="rrn2" class="inheight"> <font
								style="color: #a1a1a1; font-size: 11px;">
									(예시=>151012-1234567 입력)</font></li> -->
							<li style="font-size: 13px;"><img src="images/sex.png"
								alt=""> <label class="radio-inline"> <input
									type="radio" name="sex" id="inlineRadio1" value="남자"
									checked="checked"> 남자&nbsp;&nbsp;
							</label> <label class="radio-inline"> <input type="radio"
									name="sex" id="inlineRadio1" value="여자"> 여자&nbsp;&nbsp;
							</label></li>
							<li style="font-size: 12px;"><img src="images/birth.png"
								alt=""> <input type="date" name="birth"
								style="height: 25px; width: 20%;"> &nbsp;&nbsp; <label
								class="radio-inline"> <input type="radio" name="solar"
									id="inlineRadio1" value="양력" checked="checked">
									양력&nbsp;&nbsp;
							</label> <label class="radio-inline"> <input type="radio"
									name="solar" id="inlineRadio1" value="음력">
									음력&nbsp;&nbsp;
							</label></li>
							<li style="font-size: 12px;"><img src="images/address.png"
								alt="" style="float: left;">
								<div class="pwdhint">
									<ul style="display: inline-block;">
										<li><input type="text" size=25 name="post"
											id="inheight_postcode" readonly> &nbsp;&nbsp; <input
											type="button" id="userpostBtn" value=우편번호검색
											onclick="sample6_execDaumPostcode()"> <font
											style="color: #a1a1a1; font-size: 11px;"> (다른 유저와의
												신뢰성을 위해여 정확히 입력해 주세요.)</font></li>
										<li style="margin-top: 3px;"><input type="text"
											name="addr1" id="inheight_address"
											style="height: 25px; width: 60%;" readonly>&nbsp; <input
											type="text" name="addr2" id="inheight_address2"
											style="height: 25px; width: 30%"></li>
									</ul>
								</div></li>
							<li><img src="images/phone.png" alt=""> <select
								style="width: 9%; padding: 0;" name=tel1>
									<option selected="selected">010</option>
									<option>011</option>
									<option>018</option>
									<option>016</option>
							</select> - <input type="text" name=tel2 style="height: 25px; width: 5%;">
								- <input type="text" name=tel3 style="height: 25px; width: 5%;">
							</li>
							<li><img src="images/email.png" alt=""> <input
								type="text" name="email" class="inputstyle"> @ <select
								style="width: 15%; padding: 0;" name=eaddr>
									<option selected="selected">naver.com</option>
									<option>hanmail.net</option>
									<option>gmail.com</option>
									<option>nate.com</option>
							</select></li>
							<li style="font-size: 13px;"><img src="images/hkind.png"
								alt=""> <label class="checkbox-inline"> <input
									type="checkbox" id="inlineCheckbox1" name=ekind> 아파트
							</label> <label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox1" name=ekind> 단독주택
							</label> <label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox1" name=ekind> 호텔
							</label> <label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox1" name=ekind> 빌라
							</label> <label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox1" name=ekind> 게스트하우스
							</label> <label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox1" name=ekind> 기타
							</label></li>
						</ul>
					</div>
					<div class="joinup">

						<input type=submit value="회원가입" id="btnSub"  class="join-btn" 
						style="font-size: 11px; background-color: #F94B4B; padding:5px 15px; font-weight:400;
						color:#ffffff; border-radius:10px; border:none;">

						&nbsp;&nbsp;&nbsp; 
						<input type=button value="취소" id="btnCancel" 
						style="font-size: 11px; background-color: #F94B4B; padding:5px 15px; font-weight:400;
						color:#ffffff; border-radius:10px; border:none;">

					</div>
				</div>
			</form>
		</div>
	</div>

</div>


</body>
</html>
