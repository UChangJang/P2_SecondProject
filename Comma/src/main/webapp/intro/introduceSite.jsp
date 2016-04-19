<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
<head>
<title>[소개]사이트 소개</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="../controller/assets/css/main.css" />
<link rel="stylesheet" href="../controller/assets/css/mytest.css" />

<!-- 마우스오버시 메뉴나옴 -->
		<script type="text/javascript" src="./jquery.js"></script>
	    <link href="style.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="./menu.js"></script>
</head>
<body>

	<!-- Page Wrapper -->
	<div id="page-wrapper">

		<!-- Header -->
		<header id="header">
			<h1>
				<a href="index.jsp">Home</a>
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


		<div id="nav2">
			<ul>
				<li><a class="scrolly" href="#one">사이트 소개</a></li>&nbsp;&nbsp;
				<li><a class="scrolly" href="#two">사이트 사용법</a></li>
			</ul>
		</div>

		<!-- Main -->
		<article id="main">
			<header>
				<h2>사이트소개</h2>
				<p>간략 설명</p>
				<a href="#one" class="more scrolly">사이트 소개</a> <a href="#two"
					class="more scrolly">사이트 사용법</a>
			</header>

			<section class="wrapper style5" id="one">
				<!-- 배경 색... -->
				<div class="inner">
					<!-- 글자들 간격들 조절 -->

					<h3>1.사이트소개</h3>
					<p>Morbi mattis mi consectetur tortor elementum, varius
						pellentesque velit convallis. Aenean tincidunt lectus auctor
						mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et
						ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi,
						id malesuada justo. Maecenas sagittis felis ac sagittis semper.
						Curabitur purus leo, tempus sed finibus eget, fringilla quis
						risus. Maecenas et lorem quis sem varius sagittis et a est.
						Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt
						bibendum. Interdum et malesuada fames ac ante ipsum primis in
						faucibus. Fusce ut aliquet justo. Donec id neque ipsum. Integer
						eget ultricies odio. Nam vel ex a orci fringilla tincidunt.
						Aliquam eleifend ligula non velit accumsan cursus. Etiam ut
						gravida sapien.</p>

					<p>Vestibulum ultrices risus velit, sit amet blandit massa
						auctor sit amet. Sed eu lectus sem. Phasellus in odio at ipsum
						porttitor mollis id vel diam. Praesent sit amet posuere risus, eu
						faucibus lectus. Vivamus ex ligula, tempus pulvinar ipsum in,
						auctor porta quam. Proin nec dui cursus, posuere dui eget
						interdum. Fusce lectus magna, sagittis at facilisis vitae,
						pellentesque at etiam. Quisque posuere leo quis sem commodo, vel
						scelerisque nisi scelerisque. Suspendisse id quam vel tortor
						tincidunt suscipit. Nullam auctor orci eu dolor consectetur,
						interdum ullamcorper ante tincidunt. Mauris felis nec felis
						elementum varius.</p>

					<hr />

					<h4>Feugiat aliquam</h4>
					<p>Nam sapien ante, varius in pulvinar vitae, rhoncus id massa.
						Donec varius ex in mauris ornare, eget euismod urna egestas. Etiam
						lacinia tempor ipsum, sodales porttitor justo. Aliquam dolor quam,
						semper in tortor eu, volutpat efficitur quam. Fusce nec fermentum
						nisl. Aenean erat diam, tempus aliquet erat.</p>

					<p>Etiam iaculis nulla ipsum, et pharetra libero rhoncus ut.
						Phasellus rutrum cursus velit, eget condimentum nunc blandit vel.
						In at pulvinar lectus. Morbi diam ante, vulputate et imperdiet
						eget, fermentum non dolor. Ut eleifend sagittis tincidunt. Sed
						viverra commodo mi, ac rhoncus justo. Duis neque ligula, elementum
						ut enim vel, posuere finibus justo. Vivamus facilisis maximus nibh
						quis pulvinar. Quisque hendrerit in ipsum id tellus facilisis
						fermentum. Proin mauris dui, at vestibulum sit amet, auctor
						bibendum neque.</p>

				</div>
			</section>

			<section class="wrapper style6" id="two">
				<!-- 배경 색... -->
				<div class="inner">
					<!-- 글자들 간격들 조절 -->

					<h3>2.사이트 사용법</h3>
					<p>Morbi mattis mi consectetur tortor elementum, varius
						pellentesque velit convallis. Aenean tincidunt lectus auctor
						mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et
						ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi,
						id malesuada justo. Maecenas sagittis felis ac sagittis semper.
						Curabitur purus leo, tempus sed finibus eget, fringilla quis
						risus. Maecenas et lorem quis sem varius sagittis et a est.
						Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt
						bibendum. Interdum et malesuada fames ac ante ipsum primis in
						faucibus. Fusce ut aliquet justo. Donec id neque ipsum. Integer
						eget ultricies odio. Nam vel ex a orci fringilla tincidunt.
						Aliquam eleifend ligula non velit accumsan cursus. Etiam ut
						gravida sapien.</p>

					<p>Vestibulum ultrices risus velit, sit amet blandit massa
						auctor sit amet. Sed eu lectus sem. Phasellus in odio at ipsum
						porttitor mollis id vel diam. Praesent sit amet posuere risus, eu
						faucibus lectus. Vivamus ex ligula, tempus pulvinar ipsum in,
						auctor porta quam. Proin nec dui cursus, posuere dui eget
						interdum. Fusce lectus magna, sagittis at facilisis vitae,
						pellentesque at etiam. Quisque posuere leo quis sem commodo, vel
						scelerisque nisi scelerisque. Suspendisse id quam vel tortor
						tincidunt suscipit. Nullam auctor orci eu dolor consectetur,
						interdum ullamcorper ante tincidunt. Mauris felis nec felis
						elementum varius.</p>

					<hr />

					<h4>Feugiat aliquam</h4>
					<p>Nam sapien ante, varius in pulvinar vitae, rhoncus id massa.
						Donec varius ex in mauris ornare, eget euismod urna egestas. Etiam
						lacinia tempor ipsum, sodales porttitor justo. Aliquam dolor quam,
						semper in tortor eu, volutpat efficitur quam. Fusce nec fermentum
						nisl. Aenean erat diam, tempus aliquet erat.</p>

					<p>Etiam iaculis nulla ipsum, et pharetra libero rhoncus ut.
						Phasellus rutrum cursus velit, eget condimentum nunc blandit vel.
						In at pulvinar lectus. Morbi diam ante, vulputate et imperdiet
						eget, fermentum non dolor. Ut eleifend sagittis tincidunt. Sed
						viverra commodo mi, ac rhoncus justo. Duis neque ligula, elementum
						ut enim vel, posuere finibus justo. Vivamus facilisis maximus nibh
						quis pulvinar. Quisque hendrerit in ipsum id tellus facilisis
						fermentum. Proin mauris dui, at vestibulum sit amet, auctor
						bibendum neque.</p>

				</div>
			</section>
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