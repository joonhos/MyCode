<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>    
<% 
	String pass=(String)session.getAttribute("pass");
	String email1=(String)session.getAttribute("email1");
	String email2=(String)session.getAttribute("email2");
	Date nowTime = new Date();
	SimpleDateFormat sdfmt = new SimpleDateFormat("yyyy년 MM월 dd일");
%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title> 온라인 게시판 글쓰기 </title>
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
			<h1><a href="index.jsp">JHO Service</a></h1>
			<p class="openMOgnb"><a href="#"><b class="hdd">메뉴열기</b> <span></span><span></span><span></span></a></p>
			<!-- header_cont -->
			<div class="header_cont">
				 <ul class="util clear">
                <%if(email1==null || email2==null || pass==null) {%>
                    <li><a href="login.jsp">로그인</a></li>
                    <li><a href="join.html">회원가입</a></li>
                <%}else{ %>
                	<li><a href="logout.do?email1=${join.jemail1 }&email2=${join.jemail2}&pass=${join.jpass }">로그아웃</a></li>
                	<li><a href="mypageSelect.do?email1=${join.jemail1 }&email2=${join.jemail2}&pass=${join.jpass }">마이페이지</a></li>
                <%} %>
                   
                </ul>	
				<nav>
					<ul class="gnb clear">
						<li><a href="javascript:;" class="openAll1">PRODUCT</a>
							<div class="gnb_depth gnb_depth2_1">
								<ul class="submenu_list">
									<li><a href="javascript:;">REM 100 Series</a></li>
									<li><a href="javascript:;">REM 200 Series</a></li>
									<li><a href="javascript:;">TM 300 Series</a></li>                              
								</ul>
							</div>
	
						</li>
						<li><a href="javascript:;" class="openAll2">홍보영상</a>
							<div class="gnb_depth gnb_depth2_2">
								<ul class="submenu_list">
									<li><a href="javascript:;">TV AD</a></li>
									<li><a href="javascript:;">YOUTUBE CHANNEL</a></li>
																 
								</ul>
							</div>
	
						</li>
						<li><a href="javascript:;" class="openAll3">고객지원</a>
							<div class="gnb_depth gnb_deptth2_3">
								<ul class="submenu_list">
									<li><a href="javascript:;">온라인 견적</a></li>
									<li><a href="javascript:;">Q&A</a></li>
									<li><a href="javascript:;">게시판</a></li>                              
								</ul>
							</div>
	
						</li>
						<li><a href="javascript:;" class="openAll4">기업정보</a>
							<div class="gnb_depth gnb_depth2_4">
								<ul class="submenu_list">
									<li><a href="javascript:;">회사소개</a></li>
									                           
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
		<div class="location_area customer">
			<div class="box_inner">
				<h2 class="tit_page">JHO Service <span class="in">for</span> Better Life</h2>
				<p class="location">고객센터 <span class="path">/</span> 공지사항</p>
				<ul class="page_menu clear">
					<li><a href="#" class="on">공지사항</a></li>
					<li><a href="#">문의하기</a></li>
				</ul>
			</div>
		</div>	
		<!-- //location_area -->

		<!-- bodytext_area -->
	<div class="bodytext_area box_inner" >
			<!-- appForm -->
			<form action="boardWrite.a" class="appForm" method="post">
				<fieldset>
					<legend>고객지원 센터 글쓰기</legend>
					<p class="info_pilsoo pilsoo_item">파일 전송 최대용량은 500Mb 입니다.</p>
					<ul class="app_list">
						<li class="clear">
                            <span class="tit_lbl">글제목</span>
                            <div class="app_content email_area">
                            <div class="select_common">
                                    <select name="subject" title="글머리선택">
                                        <option value="">글머리 선택</option>
                                        <option value="notice">공지사항</option>
                                        <option value="service">서비스문의</option>
                                        <option value="estimate">온라인견적</option>
                                    </select>
                             </div>	
                               
                                &nbsp;  &nbsp;
                                <input type="text" name="title" class="w500" title="글제목 입력" placeholder="글제목 입력하세요" />										
                                									
                            </div>
						</li>
						<li class="clear">
							<span class="tit_lbl">글쓴이</span><span class="tit_lbl"><%=email1 %></span>
						</li>
						<li class="clear">
							<span class="tit_lbl">작성일자</span><span class="tit_lbl"><%=sdfmt.format(nowTime) %></span>
						</li>
						<li class="clear">
							<label for="name_lbl" class="tit_lbl pilsoo_item">파일 전송</label>
							<div class="app_content"><input type="file" class="w100p" name="boardFile" placeholder="파일을 선택하세요"/></div>
						</li>
						<li class="clear">
							<label for="content_lbl" class="tit_lbl">내용</label>
							<div class="app_content"><textarea id="content_lbl" name="content" class="w100p" placeholder="내용을 작성해 주세요"></textarea></div>
						</li>
					</ul>
					<p class="btn_line"><input type="submit" value="등록" class="btn_baseColor"/></p>	
				</fieldset>
			</form>
			<!-- //appForm -->
			
		</div>	
			<p class="btn_line txt_right">
				<a href="javascript:;" class="btn_bbs">목록</a>
			</p>
			<ul class="near_list mt20">
				<li><h4 class="prev">다음글</h4><a href="javascript:;">Home Care 서비스 OPEN! (10 무료 체험 Service 제공)</a></li>		
				<li><h4 class="next">이전글</h4><a href="javascript:;">서비스 점검 안내 - JHO Service 에서 매월 실시하는 정기점검 안내</a></li>
			</ul>
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
