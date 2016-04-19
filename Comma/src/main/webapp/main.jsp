<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>여행가이드 메인</title>
		<meta charset="utf-8" />
		
		<!-- meta:문서의 기본형식 지정/ 메인 -->
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />	
		<meta http-equiv="Content-Script-Type" content="text/javascript" />
		<meta http-equiv="Content-Style-Type" content="text/css" />
		<meta http-equiv="X-UA-Compatible" content="IE=10" />
		<link rel="stylesheet" type="text/css" href="assets/css/basic.css" />
		<link rel="stylesheet" type="text/css" href="assets/css/style.css" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<link rel="stylesheet" type="text/css" href="assets/css/mytest.css" />		
		
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
		<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
		<!-- meta:문서의 기본형식 지정/ 메인 -->
		
		<!-- inline 팝업창--> 
		<link rel='stylesheet prefetch' href='http://dimsemenov-static.s3.amazonaws.com/dist/magnific-popup.css'>

		<meta name="viewport" content="width=device-width, initial-scale=1" />
		
		
		<!-- 마우스오버시 메뉴나옴 -->
		<script type="text/javascript" src="./jquery.js"></script>
	    <link href="style.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="./menu.js"></script>			
</head>
	
	
<body class="landing">

	<!-- Page Wrapper -->
	<div id="page-wrapper">

		<!-- Header -->
		<header id="header" class="alt">
			<h1>
				<a href="main.do">상단메뉴</a>
			</h1>
			<nav id="nav">
				<ul>
					<li class="special">
					
						<!-- 1추가:로그인 레이어 팝업창-->
						<button class="button special log" id="login-btn">Login</button> 
						<form class="white-popup mfp-hide" id="login-form">
							<h1>Log-In</h1>
							<div>
								<input name="id" id="id" required="" type="text"
									placeholder="ID">
							</div>
							<br>
							<div>
								<input name="pwd" id="pwd" required="" type="password"
									placeholder="Password">
							</div>
							<br>
							<div class="logbtn">
								<input name="login" value="login" id="login-btn" type="button">
								<input name="join" value="join" id=join-btn type="button">
							</div>
							<br>
							<div class="logbtn">
								<input name="idfind" value="id찾기" id="login-btn" type="button">
								<input name="pwdfind" value="pwd찾기" id="pwd-btn" type="button">
							</div>
							</ol>
						</form>  
						
						<!-- 2추가:회원가입 레이어 팝업창-->
						<form class="white-popup mfp-hide" id="join-form">
							<h1>Join-us</h1>
							<div>
								<input name="id" id="id1" required="" type="text"
									placeholder="ID"> <input name="id2" value="확인" id="id2"
									type="button">
							</div>
							<br>
							<div>
								<input name="pwd" id="pwd1" required="" type="password"
									placeholder="Password">
							</div>
							<br>
							<div>
								<input name="pwd" id="pwd2" required="" type="password"
									placeholder="Password">
							</div>
							<br>
							<div>
								<input name="name" id="name" required="" type="text"
									placeholder="Name">
							</div>
							<br>
							<div>
								<input name="nickName" id="nickName" required="" type="text"
									placeholder="NickName"> <input name="id2" value="확인"
									id="id2" type="button">
							</div>
							<br>
							<div>
								<input name="email" id="email" required="" type="text"
									placeholder="E-mail">
							</div>
							<br>
							<div class="logbtn">
								<input name="join" value="join" id="join" type="button">
							</div>
							</ol>
						</form> 
						
						<!-- 3사이드메뉴 -->
						<a href="#menu" class="menuToggle"><span>Menu</span></a>
						<div id="menu" class="group g1">
							<ul>
								<div class="box">
									<li><a href="main.do">Home</a></li>
								</div>
								<div class="box">
									<li><a href="introduceSite.do">소개페이지</a></li>
								</div>
								<div class="box">
									<li><a href="introduceKor.do">한국소개</a></li>
								</div>

								<div class="box">
									<li class="title"><a href="#">가이드</a></li>
									<div class="cont">
										<li><a href="guide.do">1.가이드목록</a></li>
										<li><a href="guideWrite.do">2.가이드글쓰기</a></li>
									</div>
								</div>

								<div class="box">
									<li class="title"><a href="#">관광객</a></li>
									<div class="cont">
										<li><a href="tourist.do">1.관광객목록</a></li>
										<li><a href="touristWrite.do">2.관광객글쓰기</a></li>
									</div>
								</div>
								<div class="box">
									<li><a href="mypage.do">마이페이지</a></li>
								</div>
							</ul>
						</div> 
					</li>
				</ul>
			</nav>
		</header>


		<!-- Three -->
		<section id="three" class="wrapper style2 special widthsiz1">
			<!-- style3:배경,폰트...색상 -->

			<ul id="banner1">
				<div class="inner">
					<br>
					<h2>여행가이드사이트</h2>
					<br>
				</div>
			</ul>

			<div id="mainMenu">&nbsp;&nbsp; 
				<span><a href="#">사이트소개</a></span>&nbsp;&nbsp; 
				<span><a href="#">한국소개</a></span>&nbsp;&nbsp;
				<span><a href="#">가이드</a></span>&nbsp;&nbsp; 
				<span><a href="#">관광객</a></span>
			</div>
		</section>


		<section id="three" class="wrapper style2 special widthsiz2">
			<div class="inner">
				<section>
					<!-- 제목 왼쪽정렬 -->
					<div class="row uniform" id="mainTop">
					
						<div class="3u 12u$(small)">								<!-- 1 왼쪽 -->
							<div id="mainSearch">
								<div class="mainSearch1" style="color: #53565B; font-style: bold">
								<img src="images/search.png">&nbsp;&nbsp;EASY SEARCH</div>
								<input type="text" name="demo-name" id="demo-name" value=""
									placeholder="지역 검색" class="mainSearch1"/> 
								<input type="text" id="dt" placeholder="날짜선택" class="mainSearch1"/>
								<div class="select-wrapper">
									<select name="demo-category" id="demo-category" class="mainSearch1">
										<option value="">인원선택</option>
										<option value="1">1명</option>
										<option value="1">2명</option>
										<option value="1">3명</option>
										<option value="1">4명</option>
									</select> 
								<input type="submit" value="SEARCH" class="special mainSearch1" />
								</div>

							</div>
						</div>

						<div class="7u 12u$(small)">								<!-- 2 가운데 -->
							<span class="image fit a">
								<div id="main_bn">
									<li><img src="images/guide_banner.jpg" alt="" /></li>		<!-- 이미지 character과 맞추기!!! -->
									<li><img src="images/tour_banner.jpg" alt="" /></li>
									<li><img src="images/korea_banner.jpg" alt="" /></li>
									<li><img src="images/character.png" alt="" /></li>
								</div>
							</span>
						</div>
						
						<div class="2u$ 12u$(small) mainRight1">					<!-- 3 오른쪽 -->
							<div id="mainRight">
								<div><a href="#1">Home</a></div>
								<div><a href="#2">사이트소개</a></div>
								<div><a href="#3">한국소개</a></div>
								<div><a href="#4">가이드글</a></div>
								<div><a href="#5">관광객글</a></div>
							</div>
						</div>
					</div>
				</section>
			</div>
	</section>
	
	
	
	<section id="three" class="wrapper style2 special widthsiz3">
			<div class="inner">
				<section>
					<!-- 제목 왼쪽정렬 -->
					<div class="row uniform">
					<div class="6u 12u$(small)" id="guideRanking"> 
						<h4>Best Guide 6</h4>
						<span class="ranking1"><img src="images/character.png" alt="" /></span>
						<span><img src="images/character.png" alt="" /></span>
						<span><img src="images/character.png" alt="" /></span>
						<span><img src="images/character.png" alt="" /></span>
						<span><img src="images/character.png" alt="" /></span>
						<span><img src="images/character.png" alt="" /></span>
					</div>

					<div class="6u$ 12u$(small)" id="HotSpot">
						<h4>Best Guide Spot 5</h4>
						<div><h3>seoul</h3></div>
						<div class="second"><h3>busan</h3></div>
						<div><h3>jeju</h3></div>					
					</div>
					</div>
					
				</section>
			</div>
	</section>


<section id="three" class="wrapper style2 special widthsiz3">
			<div class="inner">
				<section>
				<h4>신규 등록 글</h4>
					<div class="row uniform">
					
					<div class="12u$ 12u$(small)" id="guideNew"> 
							<span class="image fit1"> 
								<img src="../controller/images/character.png" alt="" />
								<div class="listTextMain"></div>
							</span>
							<span class="image fit1"> 
								<img src="../controller/images/character.png" alt="" />
								<div class="listTextMain"></div>
							</span>
							<span class="image fit1"> 
								<img src="../controller/images/character.png" alt="" />
								<div class="listTextMain"></div>
							</span>
							<span class="image fit1"> 
								<img src="../controller/images/character.png" alt="" />
								<div class="listTextMain"></div>
							</span>
							<span class="image fit1"> 
								<img src="../controller/images/character.png" alt="" />
								<div class="listTextMain"></div>
							</span>
							
					</div>
					</div>
				</section>
			</div>
	</section>
	

		<!-- Footer -->
		<footer id="footer">
			<ul class="icons">
				<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
				<li><a href="#" class="icon fa-facebook"><span
						class="label">Facebook</span></a></li>
				<li><a href="#" class="icon fa-instagram"><span
						class="label">Instagram</span></a></li>
				<li><a href="#" class="icon fa-dribbble"><span
						class="label">Dribbble</span></a></li>
				<li><a href="#" class="icon fa-envelope-o"><span
						class="label">Email</span></a></li>
			</ul>
			<ul class="copyright">
				<li>&copy; Untitled</li>
				<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
			</ul>
		</footer>

	</div>




	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>


	<!-- inline 로그인 팝업창 -->
	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script src='http://dimsemenov-static.s3.amazonaws.com/dist/jquery.magnific-popup.min.js'></script>
	<script type="text/javascript">
				$(document).ready(function() {
					$('#login-btn').magnificPopup({
						items :{src:'#login-form',type : 'inline'},
								preloader: false,focus: '#name',
								callbacks: {beforeOpen: function() {
									if($(window).width() < 700) {
										this.st.focus = false;
									} else {
										this.st.focus = '#name';
									}
								}
						}
					});
					
					$('#join-btn').magnificPopup({
						items :{src:'#join-form',type : 'inline'},
								preloader: false,focus: '#name',
								callbacks: {beforeOpen: function() {
									if($(window).width() < 700) {
										this.st.focus = false;
									} else {
										this.st.focus = '#name';
									}
								}
						}
					});
				});
	</script>
	
	<!-- 사이드 메뉴 -->
	<script type="text/javascript">
				$(function() {

				  var group = $(".group");
				
				  group.each(function() {
				    var _group = new GroupBox(this);
				  });
				
				  // 사용자 정의 생성자 함수 정의
				  function GroupBox(groupElement) {
				
				    var box = $(groupElement).find(".box");
				    var title = $(groupElement).find(".box .title a");
				
				    box.each(function(idx) {
				      var newBox = new RootBox(this);
				      if (idx > 0) {
				        newBox.siblingsClose();
				      }
				    });
				  }
				
				  // 사용자 정의 생성자 함수 정의
				  function RootBox(boxElement) {
				    var _this = this;
				    var boxEl = $(boxElement);
				    var target = $(boxEl).find(".title a");
				    var cont = $(boxEl).find(".cont");
				
				    // _groupParent = $(boxEl).parent();
				
				    target.on("click", anchorClickEvent);
				
				    function anchorClickEvent() {
				
				      if (cont.is(':hidden')) {
				        _this.open();
				      } else {
				        _this.close();
				      }
				    }
				
				    _this.siblingsClose = function() {
				      cont.css('display', 'none');
				    };
				
				    _this.open = function() {
				      cont.slideDown();
				    };
				    _this.close = function() {
				      cont.slideUp();
				    }
				  }
				});
	</script>


	<!-- 메인 배너 슬라이드 -->
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script type="text/javascript" src="js/jquery.ulslide.js"></script>

	<script type="text/javascript">
            $(function() {
                $('#main_bn').ulslide({
                    statusbar: true,
                    affect: 'slide',
                    axis: 'x',
                    navigator: '#mainRight a',
                    duration: 300,
					autoslide: 3000
                });
            });
        </script>
</body>
</html>