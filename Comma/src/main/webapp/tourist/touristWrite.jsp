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
						<h1><a href="../index.jsp">Home</a></h1>
						<nav id="nav">
							<ul>
								<li class="special">
									<a href="#menu" class="menuToggle"><span>Menu</span></a>
									<!-- ���̵�޴� -->
									<div id="menu" class="group g1">												
										<ul>
											<div class="box"><li><a href="../index.jsp">Home</a></li></div>
											<div class="box"><li><a href="intro/introduceSite.jsp">�Ұ�������</a></li></div>
											<div class="box"><li><a href="intro/introduceKor.jsp">�ѱ��Ұ�</a></li></div>
											
											<div class="box">
											    <li class="title"><a href="#">���̵�</a></li>
											    <div class="cont">
											    	<li><a href="guide/guide.jsp">1.���̵���</a></li>
											    	<li><a href="guide/guideWrite.jsp">2.���̵�۾���</a></li>
											    </div>
											 </div>
											
											<div class="box">
											    <li class="title"><a href="#">������</a></li>
											    <div class="cont">
											    	<li><a href="tourist.jsp">1.���������</a></li>
											    	<li><a href="touristWrite.jsp">2.�������۾���</a></li>
											    </div>
											 </div>
											 <div class="box">
											 <li><a href="mypage/mypage.jsp">����������</a></li>
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
							<h2>���̵�ã�� �۾���</h2>
							<p>I Love You</p>
						</header>
						
						<section class="wrapper style5">
							<div class="inner">


								<section>
									<h2>���̵带 ã�ƿ�!</h2>
									<form method="post" action="#">
										<div class="row uniform">
										
											<div class="2u 12u$(xsmall)">
												<h3>����</h3>
											</div>
											<div class="9u 12u$(xsmall)">
												<input type="text" name="tourist_theme" id="demo-name" value="" placeholder="����" />
											</div>
											
											
											<div class="2u 12u$(xsmall)">
												<h3>������</h3>
											</div>
											<div class="9u$">
												<div class="select-wrapper">
													<select name="demo-category" id="demo-category">
														<option value="">- Category -</option>
														<option value="����">����</option>
														<option value="1">����</option>
														<option value="1">�뱸</option>
														<option value="1">�λ�</option>
													</select>
												</div>
											</div>
											<div class="12u 12u$(xsmall)">
												<img src="../images/kormap.jpg"/>
											</div>
											
											
											<div class="2u 12u$(xsmall)">
												<h3>��¥</h3>
											</div>
											<div class="9u 12u$(xsmall)">
												<input type="text" name="demo-name" id="demo-name" value="" placeholder="��¥" />
											</div>
											
											<div class="2u 12u$(xsmall)">
												<h3>���</h3>
											</div>
											<div class="9u 12u$(xsmall)">
												<input type="text" name="demo-name" id="demo-name" value="" placeholder="���" />
											</div>
											
											
											<div class="2u 12u$(xsmall)">
												<h3>�ο�</h3>
											</div>
											<div class="9u$">
												<div class="select-wrapper">
													<select name="demo-category" id="demo-category">
														<option value="">- Category -</option>
														<option value="1">1��</option>
														<option value="1">2-3��</option>
														<option value="1">5��</option>
														<option value="1">10���̻�</option>
													</select>
												</div>
											</div>
											
											
											<div class="2u 12u$(xsmall)">
												<h3>�ð�</h3>
											</div>
											<div class="4u 12u$(xsmall)">
												<input type="text" name="demo-name" id="demo-name" value="" placeholder="���" />
											</div>
											<div class="4u 12u$(xsmall)">
												<input type="text" name="demo-name" id="demo-name" value="" placeholder="���" />
											</div>
											
											
											<div class="4u 12u$(small)">
												<input type="radio" id="demo-priority-low" name="demo-priority" checked>
												<label for="demo-priority-low">����</label>
											</div>
											<div class="4u 12u$(small)">
												<input type="radio" id="demo-priority-normal" name="demo-priority">
												<label for="demo-priority-normal">������</label>
											</div>
											<div class="4u$ 12u$(small)">
												<input type="radio" id="demo-priority-high" name="demo-priority">
												<label for="demo-priority-high">�ڵ���</label>
											</div>
											
											<h3>�̷� ���̵带 ���ؿ�</h3>
											<div class="12u$">
												<textarea name="demo-message" id="demo-message" placeholder="Enter your message" rows="6"></textarea>
											</div>
											<div class="12u$">
												<ul class="actions">
													<li><input type="submit" value="���" class="special" /></li>
													<li><input type="reset" value="���" /></li>
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
			<script src="../controller/assets/js/jquery.min.js"></script>
			<script src="../controller/assets/js/jquery.scrollex.min.js"></script>
			<script src="../controller/assets/js/jquery.scrolly.min.js"></script>
			<script src="../controller/assets/js/skel.min.js"></script>
			<script src="../controller/assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="../assets/js/main.js"></script>
			
			

	</body>
</html>