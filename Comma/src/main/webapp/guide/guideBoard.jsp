<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>

<html>
<head>
<title>guideBoard</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="../controller/assets/css/main.css" />
<link rel="stylesheet" href="../controller/assets/css/mytest.css" />

<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

<script type=text/javascript>
	$(document).ready(function() {

		var nav = $('.side2');
		var navoffset = $('.side2').offset();
		/* offset을 이용하여 .menu(메뉴영역)의 위치값을 알아내어 navoffset에 넣어둔다 */

		$(window).scroll(function() {
			//var width1 = $(this).Window.width;

			if ($(this).scrollTop() >= navoffset.top) { /* 화면 스크롤 값이 메뉴영역의 top보다 값이 커지면*/ 
				/* if(width1==100){
					nav.css('position','relative').css('top',0);
				}else { */
				nav.css('top', $(this).scrollTop() - 530); /* 화면 위쪽에 고정시킨다.*/
				//}

			} else {
				nav.css('position', 'relative').css('top', 0); /* 처음 메뉴영역의 top 값으로 돌리기 */
			} 
			
			
		});
	});
</script>





</head>
<body>

	<!-- Page Wrapper -->
	<div id="page-wrapper">

		<!-- Header -->
		<header id="header">
			<h1>
				<a href="../index.jsp">Spectral</a>
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
				<h2>[제목]서울도심투어</h2>
				<p>재밌는 관광</p>
			</header>

			<section class="wrapper style5">
				<div class="inner">


					<!-- <section class="style5"> -->
					<div class="row side0">
						<div class="9u 12u$(medium) side1">
							<hr />
							<h5>가이드소개</h5>
							<blockquote>Fringilla nisl. Donec accumsan interdum
								nisi, quis tincidunt felis sagittis eget tempus euismod.
								Vestibulum ante ipsum primis in faucibus vestibulum. Blandit
								adipiscing eu felis iaculis volutpat ac adipiscing accumsan
								faucibus.</blockquote>


							<hr />
							<h5>관광스타일소개</h5>
							<blockquote>Fringilla nisl. Donec accumsan interdum
								nisi, quis tincidunt felis sagittis eget tempus euismod.
								Vestibulum ante ipsum primis in faucibus vestibulum. Blandit
								adipiscing eu felis iaculis volutpat ac adipiscing accumsan
								faucibus.</blockquote>

							<hr />
							<h4>Image</h4>
							<h5>Fit</h5>
							<ul class="bxslider">

								<li><img src="../images/character.png" /></li>
								<li><img src="../images/character.png" /></li>
								<li><img src="../images/character.png" /></li>
								<li><img src="../images/character.png" /></li>
							</ul>

							<hr />
							<h4>Table</h4>
							<h5>Default</h5>
							<div class="table-wrapper">
								<table>
									<thead>
										<tr>
											<th>항목</th>
											<th>세부사항</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>지역</td>
											<td>Ante turpis integer aliquet porttitor.</td>
										</tr>
										<tr>
											<td>비용</td>
											<td>Vis ac commodo adipiscing arcu aliquet.</td>
										</tr>
										<tr>
											<td>포함사항</td>
											<td>Morbi faucibus arcu accumsan lorem.</td>
										</tr>
										<tr>
											<td>여행규모</td>
											<td>Vitae integer tempus condimentum.</td>
										</tr>
										<tr>
											<td>관광날짜</td>
											<td>Ante turpis integer aliquet porttitor.</td>
										</tr>
										<tr>
											<td>관광시간</td>
											<td>Ante turpis integer aliquet porttitor.</td>
										</tr>
										<tr>
											<td>이동시간</td>
											<td>Ante turpis integer aliquet porttitor.</td>
										</tr>
										<tr>
											<td>만날장소</td>
											<td>Ante turpis integer aliquet porttitor.</td>
										</tr>
									</tbody>
								</table>
							</div>



							<hr />
							<h5>후기</h5>
							<div class="box alt">
								<div class="row uniform 50%">
									<div class="2u">
										<span class="image fit"> <a href="guideWrite.jsp"><img
												src="../images/banner.jpg" alt="" /></a>
										</span>
									</div>

									<div class="10u">
										<span class="image fit">
											<table class="alt">
												<tr>
													<td>안보영</td>
													<td>별다섯개</td>
												</tr>
												<tr>
													<td colspan=4>멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.</td>
												</tr>
											</table>
										</span>
									</div>

									<div class="2u">
										<span class="image fit"> <a href="guideWrite.jsp"><img
												src="../images/banner.jpg" alt="" /></a>
										</span>
									</div>

									<div class="10u">
										<span class="image fit">
											<table class="alt">
												<tr>
													<td>안보영</td>
													<td>별다섯개</td>
												</tr>
												<tr>
													<td colspan=4>멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.
														멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.
														멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.</td>
												</tr>
											</table>
										</span>
									</div>

									<div class="2u">
										<span class="image fit"> <a href="guideWrite.html"><img
												src="../images/banner.jpg" alt="" /></a>
										</span>
									</div>

									<div class="10u">
										<span class="image fit">
											<table class="alt">
												<tr>
													<td>안보영</td>
													<td>별다섯개</td>
												</tr>
												<tr>
													<td colspan=4>멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.
														멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.
														멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.</td>
												</tr>
											</table>
										</span>
									</div>

									<div class="2u">
										<span class="image fit"> <a href="guideWrite.html"><img
												src="../images/banner.jpg" alt="" /></a>
										</span>
									</div>

									<div class="10u">
										<span class="image fit">
											<table class="alt">
												<tr>
													<td>안보영</td>
													<td>별다섯개</td>
												</tr>
												<tr>
													<td colspan=4>멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.
														멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.
														멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.</td>
												</tr>
											</table>
										</span>
									</div>

									<div class="2u">
										<span class="image fit"> <a href="guideWrite.html"><img
												src="../images/banner.jpg" alt="" /></a>
										</span>
									</div>

									<div class="10u">
										<span class="image fit">
											<table class="alt">
												<tr>
													<td>안보영</td>
													<td>별다섯개</td>
												</tr>
												<tr>
													<td colspan=4>멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.
														멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.
														멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.</td>
												</tr>
											</table>
										</span>
									</div>
								</div>
							</div>

							<hr />
							<ul class="actions fit small">
								<li><a href="#" class="button special fit small">쪽지보내기</a></li>
								<li><a href="#" class="button fit small">예약하기</a></li>
								<li><a href="#" class="button special fit small">관심상품</a></li>
							</ul>
						</div>


						<!-- 사이드메뉴! -->
						<div class="3u$ side2">
							<img src="../controller/images/map.png">
						</div>
					</div>

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


	<!-- 이미지슬라이드 -->
	<!-- jQuery library (served from Google) -->
	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
	<!-- bxSlider Javascript file -->
	<script src="../js/jquery.bxslider.min.js"></script>
	<!-- bxSlider CSS file -->
	<link href="../controller/assets/css/jquery.bxslider.css"
		rel="stylesheet" />

	<script type="text/javascript">
		$(document).ready(function() {
			$('.bxslider').bxSlider();
		});
	</script>
</body>
</html>