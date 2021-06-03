<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String email=(String)session.getAttribute("email");
	String pass=(String)session.getAttribute("pass");

%>    
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>JHO Service</title>
    <meta name="viewport" content="width=device-width, initial-scal=1, mininum-scale=1, maximum-scale=1">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link rel="stylesheet" href="css/swiper.min.css">
    <link rel="stylesheet" href="css/common.css" />
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/jquery.easing.js"></script>	
    <script src="js/rollmain.js"></script>
    <script src="js/common.js"></script>
    <script src="js/jquery.smooth-scroll.min.js"></script>
    <!-- [if lte IE 9]>
        <script src="js/html5shiv.js">/script>
        <script src="js/placeholders.min.js"></script>
    <![endif]-->
   
</head>
<body>
    <ul class="skipnavi">
        <li><a href="#container">본문내용</a></li>
    </ul>
    <header id="header">
        <div class="header_area box_inner clear">
            <h1><a href="javascript:;">JHO Service</a></h1>
            <p class="openMOgnb">
                <a href="#"><b class="hdd">메뉴열기</b>
                <span></span><span></span><span></span>
            </a>
            </p>
            <!-- header_cont -->
            <div class="header_cont">
                <ul class="util clear">
                <% if(email==null || pass==null){ %>
                    <li><a href="login.html">로그인</a></li>
                    <li><a href="join.html">회원가입</a></li>
                 <%}else{ %>
                  	<li><a href="login.html">로그아웃</a></li>
                    <li><a href="mypage.jsp">마이페이지</a></li>
                 <%} %>
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
        <div class="main_rolling_pc">
           <div class="visualRoll">
               <ul class="viewImgList">
                   <li class="imglist0">
                       <div class="roll_content">
                           <a href="javascript:;">
                               <img src="img/img_slidecontents01.png" alt="신뢰의 기업 JHO Service">
                           </a>
                           <p class="roll_txtline">With JHO Service For Better Life</p>
                       </div>
                   </li>
                   <li class="imglist1">
                       <div class="roll_content">
                           <a href="javascript:;">
                               <img src="img/img_slidecontents02.png" alt="신뢰의 기업 JHO Service">
                           </a>
                           <p class="roll_txtline">With JHO Service For Better Life</p>
                       </div>
                    </li>
                    <li class="imglist2">
                        <div class="roll_content">
                            <a href="javascript:;">
                                <img src="img/img_slidecontents03.png" alt="신뢰의 기업 JHO Service">
                            </a>
                            <p class="roll_txtline">With JHO Service For Better Life</p>
                        </div>
                     </li>
               </ul>
               <div class="rollbtnArea">
                   <ul class="rollingbtn">
                       <li class="seq butt0"><a href="#butt"><img src="img/btn_rollbutt_on.png" alt="1번"></a></li>
                       <li class="seq butt1"><a href="#butt"><img src="img/btn_rollbutt_off.png" alt="2번"></a></li>
                       <li class="seq butt2"><a href="#butt"><img src="img/btn_rollbutt_off.png" alt="3번"></a></li>
                       <li class="rollstop"><a href="#" class="stop"><img src="img/btn_roll_stop.png" alt="멈춤"></a></li>
                       <li class="rollplay"><a href="#" class="play"><img src="img/btn_roll_play.png" alt="재생"></a></li>
                   </ul>
               </div>
           </div>
        </div>
        <div class="main_rolling_mobile">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <a href="javascript:;"><img src="img/mainslide_mob01.jpg" alt="신뢰의 기업 JHO Service"></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="javascript:;"><img src="img/mainslide_mob02.jpg"alt="신뢰의 기업 JHO Service"> </a>
                    </div>
                    <div class="swiper-slide">
                        <a href="javascript:;"><img src="img/mainslide_mob03.jpg"alt="신뢰의 기업 JHO Service"> </a>
                    </div>

                </div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
        <script type="text/javascript" src="js/swiper.min.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function(){
                var swiper=new Swiper('.swiper-container',{ 
                loop: true,
                autoplay: 5500,
                autoplayDisableOnInteraction: false,
                pagination: '.swiper-pagination',
                paginationClickable: true

                });
            });
        </script>
        <div class="about_area">
           <h2>THE BEST PRODUCT <b>TOP 3</b></h2>
           <div class="about_box">
               <ul class="place_list box_inner clear">
                   <li><a href="#" onclick="$('.popup_base').css('height',$(document).height());$
                   ('.contact_pop').show();">
                        <img class ="img_topplace" src="img/img_topplace01.jpg" alt="REM 100 Series"/>
                        <h3>REM 100 Series</h3>
                        <p class="txt">바쁜 일상에서 노동력을 절감해주는 휴대용 장비!</p>
                        <span class="view">VIEW</span></a>
                   </li>
                   <li><a href="#" onclick="$('.popup_base').css('height',$(document).height());$
                    ('.space_pop').show();">
                     <img class ="img_topplace" src="img/img_topplace02.jpg" alt="REM 200 Series"/>
                     <h3>REM 200 Series</h3>
                     <p class="txt">넓은 공간에서도 큰 가용범위로 쾌적한 환경을 선사하는 출력 장비!</p>
                     <span class="view">VIEW</span></a>
                    </li>
                    <li><a href="#" onclick="$('.popup_base').css('height',$(document).height());$
                        ('.program_pop').show();">
                         <img class ="img_topplace" src="img/img_topplace03.jpg" alt="REM 200 Series"/>
                         <h3>REM 300 Series</h3>
                         <p class="txt">실내,외 어디에서나 사용가능한 깔끔한 디자인을 자랑하는 입력장비!</p>
                         <span class="view">VIEW</span></a>
                        </li>
                    
               </ul>
           </div>
        </div>
        <div class="appbs_area">
            <div class="appbbs_box box_inner clear">
                <h2 class="hdd">상담과 최근게시물</h2>
                <p class="app_line">
                    <a href="javascript:;">카카오톡 1:1 상담</a>
                    <a href="javascript:;">전화 상담 신청</a>
                </p>
                <div class="bbs_line">
                    <h3>NOTICE</h3>
                    <ul class="notice_recent">
                        <li><a href="javascript:;">
                            휴대용 장비 구입을 문의 합니다. (실내 사용)</a></li>
                        <li><a href="javascript:;">
                            2020.12월 구입장비 A/S 신청해요. (전원부품 손상)</a></li>
                        <li><a href="javascript:;">
                            출장 서비스 신청(하부 몸체 소음 문제) (실외 사용)</a></li>
                        <li><a href="javascript:;">
                            실외용 장비 구입을 문의 합니다. (실내 사용)</a></li>
                        <li><a href="javascript:;">
                             2021.03월 장비 구입 예약 신청 완료되었습니다. (REM 100-tn)</a></li>
                        <li><a href="javascript:;">
                    </ul>
                </div>
        </div>
    </div>
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
    <h2 class="hdd">빠른 링크: 전화 문의,카카오톡,오시는 길, 꼭대기로</h2>
    <div class="quick_area">
        <ul class="quick_list">
            <li><a href="tel:010-7184-4403"><h3>전화문의</h3><p>010-1234-5678</p></a></li>
            <li><a href="javascript:;"><h3>카카오톡 <em>상담</em></h3><p>1:1상담</p></a></li>
            <li><a href="javascript:;"><h3 class="to_contact">오시는 길</h3></a></li>
        </ul>
        <p class="to_top"><a href="#layout0" class="s_point">TOP</a></p>
    </div>
    <!-- contact_pop -->
    <div class="popup_base contact_pop">
        <div class="pop_content">
            <p class="btn_xpop">
                <a href="#" onclick="$(this).parent().parent().parent().hide();">닫기</a>
            </p>
            <ul class="pop_list">
                <li>
                    <h2 class="tit_pop">REM 100 Series</h2>
                    <img class="pop_img" src="img/img_pop1_1.jpg" alt="REM 100 Series"/>
                    <div class="pop_txt">
                        <p>바쁜 일상에서 노동력을 절감해주는 <br>휴대용 장비!<br>
                        인상적인 디자인과 안정적인 <br>성능을 제공합니다!</p>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <!-- //contact_pop -->
    <!-- space_pop -->
<div class="popup_base space_pop">
	<div class="pop_content">
		<p class="btn_xpop"><a href="#" onclick="$(this).parent().parent().parent().hide();">닫기</a></p>
		<ul class="pop_list">
			<li>
				<h2 class="tit_pop">REM 200 Series A model</h2>
				<img class="pop_img"src="img/img_pop2_1.jpg" alt="뮤지엄 산의 물위의 건물" />
				<div class="pop_txt"><p>넓은 공간에서도 큰 가용범위로 쾌적한 환경을 <br>선사하는 출력 장비! <br>
                     세련된 디자인과 감각적인 출력으로 한층더 <br>편리해진 기능을 제공합니다. </p></div>
			</li>
			<li>
				<h2 class="tit_pop">REM 200 Series B model</h2>
				<img class="pop_img"src="img/img_pop2_2.jpg" alt="박물관 야외조경" />
				<div class="pop_txt"><p>넓은 공간에서도 큰 가용범위로 쾌적한 환경을<br> 선사하는 출력 장비! <br>
                    세련된 디자인과 강력한 출력을 보장하는<br> B model 만의 특징입니다!</p></div>
			</li>
		</ul>		
	</div>
</div>
<!-- //space_pop -->

<!-- program_pop -->
<div class="popup_base program_pop">
	<div class="pop_content">
		<p class="btn_xpop"><a href="#" onclick="$(this).parent().parent().parent().hide();">닫기</a></p>
		<ul class="pop_list">
			<li>
				<h2 class="tit_pop">REM 200 Series</h2>
				<img class="pop_img"src="img/img_pop3_1.jpg" alt="일본 만국박람회 기념 공원" />
				<div class="pop_txt"><p>실내,외 어디에서나 사용가능한<br> 깔끔한 디자인을 자랑하는 입력장비!<br>
                    다용도로 사용가능한 세련된 디자인과 <br>강력한 출력을 보장하는 <br>입력장치입니다!</p></div>
			</li>
		</ul>		
	</div>
</div>
<!-- //program_pop -->
</body>
</html>