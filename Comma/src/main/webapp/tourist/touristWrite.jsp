<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<!--
	Spectral by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>customerWrite</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="../assets/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		
		<link rel="stylesheet" href="../assets/css/guide.css" />
	</head>
	<body>

		<!-- Page Wrapper -->
			<div id="page-wrapper">

				<!-- Header -->
					<header id="header">
						<h1><a href="index.jsp">Home</a></h1>
						<nav id="nav">
							<ul>
								<li class="special">
									<a href="#menu" class="menuToggle"><span>Menu</span></a>
									<div id="menu">
										<ul>
											<li><a href="../index.jsp">Home</a></li>
											<li><a href="../intro/introduceSite.jsp">소개페이지</a></li>
											<li><a href="../intro/introduceKor.jsp">한국소개</a></li>
											<li><a href="../guide/guide.jsp">가이드 찾기</a></li>
											<li><a href="tourist.jsp">관광객 등록</a></li>
											<li><a href="#">마이페이지</a></li>
										</ul>
									</div>
								</li>
							</ul>
						</nav>
					</header>

				<!-- Main -->
					<article id="main">
						<header>
							<h2>가이드찾기 글쓰기</h2>
							<p>Aliquam ut ex ut interdum donec amet imperdiet eleifend</p>
						</header>
						
						<section class="wrapper style5">
							<div class="inner">


								<section>
									<h2>가이드를 찾아요!</h2>
									<form method="post" action="#">
										<div class="row uniform">
										
											<div class="2u 12u$(xsmall)">
												<h3>제목</h3>
											</div>
											<div class="9u 12u$(xsmall)">
												<input type="text" name="demo-name" id="demo-name" value="" placeholder="제목" />
											</div>
											
											
											<div class="2u 12u$(xsmall)">
												<h3>여행지</h3>
											</div>
											<div class="9u$">
												<div class="select-wrapper">
													<select name="demo-category" id="demo-category">
														<option value="">- Category -</option>
														<option value="1">서울</option>
														<option value="1">대전</option>
														<option value="1">대구</option>
														<option value="1">부산</option>
													</select>
												</div>
											</div>
											<div class="12u 12u$(xsmall)">
												<img src="../images/kormap.jpg"/>
											</div>
											
											
											<div class="2u 12u$(xsmall)">
												<h3>날짜</h3>
											</div>
											<div class="9u 12u$(xsmall)">
												<input type="text" name="demo-name" id="demo-name" value="" placeholder="날짜" />
											</div>
											
											<div class="2u 12u$(xsmall)">
												<h3>비용</h3>
											</div>
											<div class="9u 12u$(xsmall)">
												<input type="text" name="demo-name" id="demo-name" value="" placeholder="비용" />
											</div>
											
											
											<div class="2u 12u$(xsmall)">
												<h3>인원</h3>
											</div>
											<div class="9u$">
												<div class="select-wrapper">
													<select name="demo-category" id="demo-category">
														<option value="">- Category -</option>
														<option value="1">1명</option>
														<option value="1">2-3명</option>
														<option value="1">5명</option>
														<option value="1">10명이상</option>
													</select>
												</div>
											</div>
											
											
											<div class="2u 12u$(xsmall)">
												<h3>시간</h3>
											</div>
											<div class="4u 12u$(xsmall)">
												<input type="text" name="demo-name" id="demo-name" value="" placeholder="몇시" />
											</div>
											<div class="4u 12u$(xsmall)">
												<input type="text" name="demo-name" id="demo-name" value="" placeholder="몇시" />
											</div>
											
											
											<div class="4u 12u$(small)">
												<input type="radio" id="demo-priority-low" name="demo-priority" checked>
												<label for="demo-priority-low">보도</label>
											</div>
											<div class="4u 12u$(small)">
												<input type="radio" id="demo-priority-normal" name="demo-priority">
												<label for="demo-priority-normal">자전거</label>
											</div>
											<div class="4u$ 12u$(small)">
												<input type="radio" id="demo-priority-high" name="demo-priority">
												<label for="demo-priority-high">자동차</label>
											</div>
											
											<h3>이런 가이드를 원해요</h3>
											<div class="12u$">
												<textarea name="demo-message" id="demo-message" placeholder="Enter your message" rows="6"></textarea>
											</div>
											<div class="12u$">
												<ul class="actions">
													<li><input type="submit" value="등록" class="special" /></li>
													<li><input type="reset" value="취소" /></li>
												</ul>
											</div>
										</div>
									</form>
								</section>

							</div>
						</section>
					</article>

				<!-- Footer -->
					<footer id="footer">
						<ul class="icons">
							<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
							<li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
							<li><a href="#" class="icon fa-envelope-o"><span class="label">Email</span></a></li>
						</ul>
						<ul class="copyright">
							<li>&copy; Untitled</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
						</ul>
					</footer>

			</div>

		<!-- Scripts -->
			<script src="../assets/js/jquery.min.js"></script>
			<script src="../assets/js/jquery.scrollex.min.js"></script>
			<script src="../assets/js/jquery.scrolly.min.js"></script>
			<script src="../assets/js/skel.min.js"></script>
			<script src="../assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="../assets/js/main.js"></script>
			
			

	</body>
</html>