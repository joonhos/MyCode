<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% 
	String pass=(String)session.getAttribute("pass");
	String email1=(String)session.getAttribute("email1");
	String email2=(String)session.getAttribute("email2");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>공지사항 | 고객센터 | JHO Service</title>
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
</head>

<body>
	<ul class="skipnavi">
		<li><a href="#container">본문</a></li>
	</ul>
	<!-- wrap -->
	<div id="wrap">

		<header id="header">
			<div class="header_area box_inner clear">
				<h1>
					<a href="index.jsp">JHO Service</a>
				</h1>
				<p class="openMOgnb">
					<a href="#"><b class="hdd">메뉴열기</b> <span></span><span></span><span></span></a>
				</p>
				<!-- header_cont -->
				<div class="header_cont">
					<ul class="util clear">
						<%if(email1==null || email2==null || pass==null) {%>
						<li><a href="login.jsp">로그인</a></li>
						<li><a href="join.html">회원가입</a></li>
						<%}else{ %>
						<li><a
							href="logout.do?email1=${join.jemail1 }&email2=${join.jemail2}&pass=${join.jpass }">로그아웃</a></li>
						<li><a
							href="mypageSelect.do?email1=${join.jemail1 }&email2=${join.jemail2}&pass=${join.jpass }">마이페이지</a></li>
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
								</div></li>
							<li><a href="javascript:;" class="openAll2">홍보영상</a>
								<div class="gnb_depth gnb_depth2_2">
									<ul class="submenu_list">
										<li><a href="javascript:;">TV AD</a></li>
										<li><a href="javascript:;">YOUTUBE CHANNEL</a></li>

									</ul>
								</div></li>
							<li><a href="javascript:;" class="openAll3">고객지원</a>
								<div class="gnb_depth gnb_depth2_3">
									<ul class="submenu_list">
										<li><a href="javascript:;">온라인 견적</a></li>
										<li><a href="javascript:;">Q&A</a></li>
										<li><a href="javascript:;">게시판</a></li>
									</ul>
								</div></li>
							<li><a href="javascript:;" class="openAll4">기업정보</a>
								<div class="gnb_depth gnb_depth2_4">
									<ul class="submenu_list">
										<li><a href="javascript:;">회사소개</a></li>

									</ul>
								</div></li>
						</ul>
					</nav>
					<p class="closePop">
						<a href="javascript:;">닫기</a>
					</p>
				</div>
				<!-- //header_cont -->
			</div>
		</header>

		<div id="container">
			<!-- location_area -->
			<div class="location_area customer">
				<div class="box_inner">
					<h2 class="tit_page">
						JHO Service <span class="in">for</span> Better Life
					</h2>
					<p class="location">
						고객센터 <span class="path">/</span> 공지사항
					</p>
					<ul class="page_menu clear">
						<li><a href="#" class="on">공지사항</a></li>
						<li><a href="#">문의하기</a></li>
					</ul>
				</div>
			</div>
			<!-- //location_area -->

			<!-- bodytext_area -->
			<div class="bodytext_area box_inner">

				


				<form action="#" class="minisrch_form">
					<fieldset>
						<legend>검색</legend>
						
						<input type="text" class="tbox" title="검색어를 입력해주세요"
							placeholder="검색어를 입력해주세요"> <a href="javascript:;"
							class="btn_srch">검색</a>
						<%if(email1==null || email2==null || pass==null) {%>

						<%}else{ %>
						<a href="notice_write.jsp" class="btn_srch" >글쓰기</a>
						<%} %>
					</fieldset>
				</form>
				<table class="bbsListTbl" summary="번호,제목,조회수,작성일 등을 제공하는 표">
					<caption class="hdd">공지사항 목록</caption>
					<thead>
						<tr>
							<th scope="col">번호</th>
							<th scope="col">제목</th>
							<th scope="col">작성자</th>
							
							<th scope="col">작성일</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="board" items="${list }">
					<tr>
						<td>${board.bnum }</td>
						<td><a href="boardSelect.a?num=${board.bnum }&title=${board.btitle}
						&date=${board.bdate }">${board.btitle }</a></td>
						<td>${board.bemail1 }</td>					
						<td>${board.bdate }</td>
	
					</tr>
					</c:forEach>
						
					</tbody>
				</table><br>
						<%if(email1==null || email2==null || pass==null) {%>

						<%}else{ %>
						<div align="right"><a href="notice_write.jsp" class="btn_srch" >글쓰기</a></div>
						<%} %>
				<!-- pagination -->
				<div class="pagination">
					<a href="javascript:;" class="firstpage  pbtn"><img
						src="img/btn_firstpage.png" alt="첫 페이지로 이동"></a> <a
						href="javascript:;" class="prevpage  pbtn"><img
						src="img/btn_prevpage.png" alt="이전 페이지로 이동"></a> <a
						href="javascript:;"><span class="pagenum currentpage">1</span></a>
					<a href="javascript:;"><span class="pagenum">2</span></a> <a
						href="javascript:;"><span class="pagenum">3</span></a> <a
						href="javascript:;"><span class="pagenum">4</span></a> <a
						href="javascript:;"><span class="pagenum">5</span></a> <a
						href="javascript:;" class="nextpage  pbtn"><img
						src="img/btn_nextpage.png" alt="다음 페이지로 이동"></a> <a
						href="javascript:;" class="lastpage  pbtn"><img
						src="img/btn_lastpage.png" alt="마지막 페이지로 이동"></a>
				</div>
				<!-- //pagination -->

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

	<h2 class="hdd">빠른 링크 : 전화 문의,카카오톡,오시는 길,꼭대기로</h2>
	<div class="quick_area">
		<ul class="quick_list">
			<li><a href="tel:010-7184-4403"><h3>전화 문의</h3>
					<p>010-1234-5678</p></a></li>
			<li><a href="javascript:;"><h3>
						카카오톡 <em>상담</em>
					</h3>
					<p>1:1상담</p></a></li>
			<li><a href="javascript:;"><h3 class="to_contact">오시는 길</h3></a></li>
		</ul>
		<p class="to_top">
			<a href="#layout0" class="s_point">TOP</a>
		</p>
	</div>

</body>
</html>
