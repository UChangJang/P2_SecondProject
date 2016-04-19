<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>

<html>
<head>
<title>guide</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="../controller/assets/css/main.css" />
<link rel="stylesheet" href="../controller/assets/css/mytest.css" />

<!-- 마우스클릭시 서브메뉴나옴 -->
<script type="text/javascript" src="./jquery.js"></script>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="./menu.js"></script>

<!-- 달력css -->
<link rel="stylesheet" href="../controller/assets/css/dcalendar.picker.css">
</head>
<body>

	<!-- Page Wrapper -->
	<div id="page-wrapper">

		<!-- Header -->
		<header id="header">
			<h1>
				<a href="../index.jsp">Home</a>
			</h1>
			<nav id="nav">
				<ul>
					<li class="special">
					
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

		<!-- Main -->
		<article id="main">
			<header>
				<h2>가이드찾기</h2>
				<p>가이드찾기설명</p>
			</header>

			<section class="wrapper style5">
				<div class="inner">
					<form method="post" action="#">
						<div class="row uniform">
							<div class="9u 12u$(xsmall)">
								<input type="text" name="demo-name" id="demo-name" value=""
									placeholder="지역 검색" />
							</div>
							<div class="3u$ 12u$(xsmall)">
								<ul class="actions">
									<a href="#two" class="scrolly">
										<li><input type="submit" value="Send Message"
											class="special" /></li>
									</a>
								</ul>
							</div>
						</div>

						<div id="wrapdetail">
							<div id="bt">상세검색</div>
						</div>

						<div class="row uniform" id="panel">
							<!-- 상세검색div -->
							<div class="6u 12u$(xsmall)">
								<span class="image fit"> <img
									src="../controller/images/map.png" alt="" /> <!-- 1. 지도 -->
								</span>
							</div>

							<div class="6u$ 12u$(xsmall)">
								<!-- 2. 상세체크 -->
								<br> <input type="radio" id="demo-priority-low"
									name="demo-priority" checked> <label
									for="demo-priority-low">걷기</label> <input type="radio"
									id="demo-priority-normal" name="demo-priority"> <label
									for="demo-priority-normal">자동차</label> <input type="radio"
									id="demo-priority-high" name="demo-priority"> <label
									for="demo-priority-high">자전거</label> <br>
								<br>
								<div class="select-wrapper">
									<select name="demo-category" id="demo-category">
										<option value="">인원선택</option>
										<option value="1">1명</option>
										<option value="1">5명이하</option>
										<option value="1">10명이하</option>
										<option value="1">단체</option>
									</select>
								</div>

								<div id="demo">
									<input type="text" id="dt" placeholder="날짜선택">
									<div id="dd"></div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</section>

			<!-- 3x3가이드리스트 출력 -->
			<jsp:include page="guideList.jsp"></jsp:include>

		</article>



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

	<script src="../controller/assets/js/jquery.min.js"></script>
	<script src="../controller/assets/js/jquery.scrollex.min.js"></script>
	<script src="../controller/assets/js/jquery.scrolly.min.js"></script>
	<script src="../controller/assets/js/skel.min.js"></script>
	<script src="../controller/assets/js/util.js"></script>
	<script src="../controller/assets/js/main.js"></script>


	<!-- 펼치기 -->
	<script src="../js/jquery-1.11.2.min.js"></script>
	<script>
		$(document).ready(function() {
			$("#bt").click(function() {
				$("#panel").slideToggle();
			});
		});
	</script>

	<!-- 달력 -->
	<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
	<script src="../controller/assets/js/dcalendar.picker.js"></script>
	<script>
		$('#calendar-demo').dcalendar();
		$('#dt').dcalendarpicker();
	</script>

	<!-- 숨김상단메뉴 -->
	<script type="text/javascript" src="jquery-1.3.2.js"></script>
	<script type="text/javascript">
		$(function() {
			$(window).scroll(function() {
				var scrollTop = $(window).scrollTop();
				if (scrollTop > 380)
					$('#nav2').stop().animate({
						'opacity' : '1'
					}, 400);
				else
					$('#nav2').stop().animate({
						'opacity' : '0'
					}, 5);
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

</body>
</html>