<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>로그인 | JHO Service</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="css/common.css">
<script src="js/jquery-1.11.3.min.js"></script>
<script src="js/common.js"></script>
<script src="js/jquery.smooth-scroll.min.js"></script>
<!--[if lte IE 9]>
    <script src="js/html5shiv.js"></script>
	<script src="js/placeholders.min.js"></script>
<![endif]-->
<script type="text/javascript">
// 현재 페이지에만 적용
$(document).ready(function(){
	$('.switch').click(function(){			// 로그인 유지 작동
		$(this).toggleClass("switchOn");
	});
	$('.quick_area').hide();				// 우측 빠른 실행 메뉴 숨김 
});
</script>
</head>

<body>
	<ul class="skipnavi">
		<li><a href="#container">본문내용</a></li>
	</ul>
	<!-- wrap -->
	<div id="wrap" class="s_point">

		<div id="container" id="layout0">

			<!-- bodytext_area -->
			<div class="bodytext_area box_inner">
				<!-- login-wrap -->
				<div class="login_wrap">
					<h1 class="loginTit">
						<a href="#"><img src="img/tit_login.png" alt="JHO Service" /></a>
					</h1>
						<form action="login.do" class="appForm" method="post">
				<fieldset>
					<legend>회원가입 입력 양식</legend>
					
					<%if(session.getAttribute("loginFail")==null){ %>			
					<p class="info_pilsoo pilsoo_item">등록한 이메일를 입력하세요</p>
					<%}else {%>
					<p class="info_pilsoo pilsoo_item"><%=session.getAttribute("loginFail") %> 등록한 이메일를 입력하세요</p>
					<%} %>
					<ul class="app_list">
						<li class="clear">
                            <label for="email_lbl" class="tit_lbl pilsoo_item">이메일</label>
                            <div class="app_content email_area">
                                <input type="text" class="w150" name="email1" id="email_lbl" title="이메일 주소" placeholder="이메일주소입력"/>
                                <span class="ico_space">@</span>
                                <input type="text" name="email2" class="w150" title="이메일 제공업체 입력" />										
                                								
                            </div>
						</li>
						
						<li class="clear">
							<label for="pwd_lbl" class="tit_lbl pilsoo_item">비밀번호</label>
							<div class="app_content"><input type="password" class="w200" id="pwd_lbl" name="pass" placeholder="비밀번호를 입력해주세요"/></div>
						</li>
						
						
					</ul>
					<p class="btn_line"><input type="submit" value="로그인" class="btn_baseColor"/></p>	
				</fieldset>
			</form>
					<ul class="login_list">
						<li class="kakao"><a href="javascript:;"><strong>카카오톡</strong>
								로그인</a></li>
						<li class="naver"><a href="javascript:;"><strong>네이버</strong>
								로그인</a></li>
						<li class="facebook"><a href="javascript:;"><strong>페이스북</strong>
								로그인</a></li>
						<li class="cellphone"><a href="javascript:;"><strong>이메일
									주소</strong> 로그인</a></li>
					</ul>
					<div class="btnonoff_line">
						<div class="switch"></div>
						<p>
							<a href="#" class="btn_onoff" onclick="return false;">로그인 유지</a>
						</p>
					</div>

				</div>
				<!-- //login-wrap -->

			</div>
			<!-- //bodytext_area -->

		</div>
		<!-- //container -->

		<footer>
			<div class="foot_area box_inner">
				<ul class="foot_list clear">
					<li><a href="javascript:;">이용약관</a></li>
					<li><a href="javascript:;">개인정보취급방침</a></li>
				</ul>
				<h2>JHO Service</h2>
				<p class="addr">서울특별시 종로구 혜화동 9길 영남빌딩 5층</p>
				<span class="gubun">/</span> <span class="br_line">대표전화 <span
					class="space0">02-1234-5678</span> <span class="gubun">/</span> <span
					class="br_line">E-mail : <span class="space0">joonhos@nate.com</span>
				</span>
				</span>
				<p class="copy box_inner">Copyright(c) JHO Service all right
					reserved</p>
				<ul class="snslink clear">
					<li><a href="javascript:;">blog</a></li>
					<li><a href="javascript:;">facebook</a></li>
					<li><a href="javascript:;">instargram</a></li>
				</ul>
			</div>
		</footer>

	</div>
	<!-- //wrap -->

</body>
</html>
