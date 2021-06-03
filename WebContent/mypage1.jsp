<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  
<!DOCTYPE html>
<html lang="ko">
<head>
<title> MYPAGE | JHO Service </title>
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
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
</head>

<body>
<ul class="skipnavi">
    <li><a href="#container">본문내용</a></li>
</ul>
<!-- wrap -->
<div id="wrap">

	<header id="header">
		<div class="header_area box_inner clear">	
			<h1><a href="javascript:;">JHO Service</a></h1>
			<p class="openMOgnb"><a href="#"><b class="hdd">메뉴열기</b> <span></span><span></span><span></span></a></p>
			<!-- header_cont -->
			<div class="header_cont">
				<ul class="util clear">
					<li><a href="javascript:;">마이페이지</a></li>
					<li><a href="javascript:;">로그아웃</a></li>
				</ul>		
				<nav>
					<ul class="gnb clear">
						<li><a href="javascript:;" class="openAll1">PRODUCT</a>
							<div class="gnb_depth gnb_deph2_1">
								<ul class="submenu_list">
									<li><a href="javascript:;">REM 100 Series</a></li>
									<li><a href="javascript:;">REM 200 Series</a></li>
									<li><a href="javascript:;">TM 300 Series</a></li>                              
								</ul>
							</div>
	
						</li>
						<li><a href="javascript:;" class="openAll2">홍보영상</a>
							<div class="gnb_depth gnb_deph2_2">
								<ul class="submenu_list">
									<li><a href="javascript:;">TV AD</a></li>
									<li><a href="javascript:;">YOUTUBE CHANNEL</a></li>
																 
								</ul>
							</div>
	
						</li>
						<li><a href="javascript:;" class="openAll3">고객지원</a>
							<div class="gnb_depth gnb_deph2_3">
								<ul class="submenu_list">
									<li><a href="javascript:;">온라인 견적</a></li>
									<li><a href="javascript:;">Q&A</a></li>
									<li><a href="javascript:;">게시판</a></li>                              
								</ul>
							</div>
	
						</li>
						<li><a href="javascript:;" class="openAll4">기업정보</a>
							<div class="gnb_depth gnb_deph2_4">
								<ul class="submenu_list">
									<li><a href="javascript:;">회사연혁</a></li>
									<li><a href="javascript:;">부서 안내</a></li>
									<li><a href="javascript:;">인증 현황</a></li> 
									<li><a href="javascript:;">채용관</a></li>                             
								</ul>
							</div>
	
						</li>
					</ul>     
                </nav>
				<p class="closePop"><a href="javascript:;">닫기</a></p>
			</div>
			<!-- //header_cont -->
		</div>
	</header>
	
	<div id="container">
		<!-- location_area -->
		<div class="location_area member">
			<div class="box_inner">
				<h2 class="tit_page">JHO Service <span class="in">for</span> Better Life</h2>
				<p class="location">MYPAGE <span class="path">/</span> 개인 정보 수정</p>
				<ul class="page_menu clear">
					<li><a href="#" class="on">개인 정보 수정</a></li>
				</ul>
			</div>
		</div>	
		<!-- //location_area -->

		<!-- bodytext_area -->
		<div class="bodytext_area box_inner">
			<!-- myinfo -->
			<dl class="myinfo">
				<dt>내 정보</dt>
				<dd>
					<!-- appForm -->
					<form action="#" class="regForm" method="post">
				
						<fieldset>
							<legend>내정보 입력 양식</legend>
							<ul class="reg_list">
								<li class="clear">
									<span class="tit_lbl">이름</span>
									<div class="reg_content">${join.jname }</div>
								</li>
								<li class="clear">
									<label class="tit_lbl">비밀번호</label>
									<div class="reg_content">${join.jpass }</div>
								</li>
								<li class="clear">
									<label class="tit_lbl">성별</label>
									<div class="reg_content">${join.jsex }</div>
								</li>
								
								<li class="clear">
									<span class="tit_lbl">연락처</span>
									<div class="reg_content">${join.jtel }</div>
								</li>
								<li class="clear">
									<span class="tit_lbl">SMS 수신동의</span>
									<div class="reg_content radio_area">
										<input type="radio" class="css-radio" id="smsyes_lbl" name="smsyesno" checked><label for="smsyes_lbl">허용</label>
										<input type="radio" class="css-radio" id="smsno_lbl" name="smsyesno"><label for="smsno_lbl">거부</label>
										<p class="info_line">(고객님의 편의를 위해 알림, 공지사항, 이벤트 등의 내용을 제공하고자 합니다.)</p>
									</div>
								</li>
								<li class="clear">
									<span class="tit_lbl">이메일</span>
									<div class="reg_content">${join.jemail1 }@${join.jemail2 }</div>
								</li>
								<li class="clear">
									<span class="tit_lbl">이메일 수신동의</span>
									<div class="reg_content radio_area">
										<input type="radio" class="css-radio" id="emailyes_lbl" name="emailyesno" checked><label for="emailyes_lbl">허용</label>
										<input type="radio" class="css-radio" id="emailno_lbl" name="emailyesno"><label for="emailno_lbl">거부</label>
										<p class="info_line">(고객님의 편의를 위해 알림, 공지사항, 이벤트 등의 내용을 제공하고자 합니다.)</p>
									</div>
								</li>
								<li class="clear">
							<label for="content_lbl" class="tit_lbl">문의내용</label>
							<div class="app_content"><textarea id="content_lbl" value="${join.jcontent }" name="content" class="w100p" placeholder="간단한 상담 요청 사항을 남겨주시면 보다 상세한 상담이 가능합니다.
전화 상담 희망시 기재 부탁드립니다."></textarea></div>
						</li>
							</ul>
							<p class="btn_line"><a href="index.jsp" class="btn_baseColor">확인</a>
							<a href="#?email1=${join.jemail1 }&email2=${join.jemail2 }" class="btn_baseColor">수정</a></p>	
						

							
						</fieldset>
						
					</form>
					<!-- //appForm -->
				</dd>
			</dl>
			<!-- //myinfo -->			
			
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
                <span class="gubun">/</span>
                <span class="br_line">대표전화
                    <span class="space0">02-1234-5678</span>
                    <span class="gubun">/</span>
                    <span class="br_line">E-mail : 
                        <span class="space0">joonhos@nate.com</span>
                    </span>
                </span>
                <p class="copy box_inner">Copyright(c) JHO Service all right reserved</p>
                <ul class="snslink clear">
                    <li><a href="javascript:;">blog</a></li>
                    <li><a href="javascript:;">facebook</a></li>
                    <li><a href="javascript:;">instargram</a></li>
                </ul>
        </div>
    </footer>

</div>
<!-- //wrap -->

<h2 class="hdd">빠른 링크 : 전화 문의,카카오톡,오시는 길,꼭대기로</h2>
<div class="quick_area">
	<ul class="quick_list">
		<li><a href="tel:010-7184-4403"><h3>전화 문의</h3><p>010-1234-5678</p></a></li>
		<li><a href="javascript:;"><h3>카카오톡 <em>상담</em></h3><p>1:1상담</p></a></li>
		<li><a href="javascript:;"><h3 class="to_contact">오시는 길</h3></a></li>
	</ul>
	<p class="to_top"><a href="#layout0" class="s_point">TOP</a></p>
</div>

</body>
</html>
