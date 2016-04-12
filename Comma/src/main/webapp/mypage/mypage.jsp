<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>mypage</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="../assets/css/main.css" />
		<link rel="stylesheet" href="../assets/css/mytest.css" />
		<link rel="stylesheet" href="../assets/css/mytest2(danbi_mypage)" /> 
		<link rel="stylesheet" href="../assets/css/mypage.css" /> 
		
		<!-- inline �˾�â -->
			<link rel='stylesheet prefetch' href='http://dimsemenov-static.s3.amazonaws.com/dist/magnific-popup.css'>
		<!-- inline �˾�â -->

	</head>
	<body>

		<!-- Page Wrapper -->
			<div id="page-wrapper">

				<!-- Header -->
					<header id="header">
						<h1><a href="../index.html">Home</a></h1>
						<nav id="nav">
							<ul>
								<li class="special">
								
									<button class="button special log" id="login-btn">Login</button>
									
									<!-- 1�߰�:�α��� ���̾� �˾�â -->
									<form class="white-popup mfp-hide" id="login-form">
										<h1>Log-In</h1>
											<div>
												<input name="id" id="id" required="" type="text" placeholder="ID">
											</div>
											<br>
											<div>
												<input name="pwd" id="pwd" required="" type="password" placeholder="Password">
											</div>
											<br>
											<div class="logbtn">
												<input name="login" value="login" id="login-btn" type="button">
												<input name="join" value="join" id=join-btn type="button">
											</div>
											<br>
											<div class="logbtn">
												<input name="idfind" value="idã��" id="login-btn" type="button">
												<input name="pwdfind" value="pwdã��" id="pwd-btn" type="button">
											</div>
										</ol>
									</form>
									<!-- �α��� ���̾� �˾�â -->
									
									
									<!-- 2�߰�:ȸ������ ���̾� �˾�â -->
									<form class="white-popup mfp-hide" id="join-form">
										<h1>Join-us</h1>
											<div>
												<input name="id" id="id" required="" type="text" placeholder="ID">
												<input name="id2" value="Ȯ��" id="id2" type="button">
											</div>
											<br>
											<div>
												<input name="pwd" id="pwd" required="" type="password" placeholder="Password">
											</div>
											<br>
											<div>
												<input name="pwd" id="pwd" required="" type="password" placeholder="Password">
											</div>
											<br>
											<div>
												<input name="name" id="name" required="" type="text" placeholder="Name">
											</div>
											<br>
											<div>
												<input name="nickName" id="nickName" required="" type="text" placeholder="NickName">
												<input name="id2" value="Ȯ��" id="id2" type="button">
											</div>
											<br>
											<div>
												<input name="email" id="email" required="" type="text" placeholder="E-mail">
											</div>
											<br>
											<div class="logbtn">
												<input name="join" value="join" id="join" type="button">
											</div>
										</ol>
									</form>
									
									<!-- ȸ������ ���̾� �˾�â -->
									<a href="#menu" class="menuToggle"><span>Menu</span></a>
									
									<!-- ���̵�޴� -->
									<div id="menu" class="group g1">												
										<ul>
											<div class="box"><li><a href="../index.html">Home</a></li></div>
											<div class="box"><li><a href="introduceSite.html">�Ұ�������</a></li></div>
											<div class="box"><li><a href="introduceKor.html">�ѱ��Ұ�</a></li></div>
											
											<div class="box">
											    <li class="title"><a href="#">���̵�</a></li>
											    <div class="cont">
											    	<li><a href="guide.html">1.���̵���</a></li>
											    	<li><a href="guideWrite.html">2.���̵�۾���</a></li>
											    </div>
											 </div>
											
											<div class="box">
											    <li class="title"><a href="#">������</a></li>
											    <div class="cont">
											    	<li><a href="customer.html">1.���������</a></li>
											    </div>
											 </div>
											 <div class="box">
											 <li><a href="elements.html">����������</a></li>
											 </div>
										</ul>
									</div> 
								</li>
							</ul>
						</nav>
					</header>

				<!-- Main --><!-- Main --><!-- Main --><!-- Main --><!-- Main --><!-- Main --><!-- Main --><!-- Main -->
					<article id="main">
						<header>
							<h2>My Page</h2>
						</header>
						
						<section class="wrapper style5">
							<div class="inner">
							
								<!-- �޴� �ۼ� -->
								<section>
									
									<h4>Mypage</h4>								<!-- ���� �������� -->
									<div class="row uniform">							
										<div class="4u 12u$(small)">			<!-- 1 ���� -->
											<div class="mypicture">
												<img src="../images/character.png">
											</div>
											<div class="mypicture2">����</div>
										</div>
										
										<div class="8u 12u$(small)">				<!-- 2 ������ -->
											<h5>Alternate</h5>
											<ul class="alt">
												<li><a href="mypage_wishList.html"><h3>���ø���Ʈ</h3></a></li>
												<li><a href="mypage_myWriting.html">���� �� ��</a></li>
												<li><a href="mypage_bookingList.html">���ฮ��Ʈ</a></li>
												<li><a href="mypage_infoCorrection.html">��������</a></li>
												<li><a href="mypage_opinion.html">�ı��</a></li>
												<li><a href="mypage_letter.html">������</a></li>
											</ul>
										</div>
									</div>
								</section>
							</div>
						</section>
						
								
						<iframe src="mypage_infoCorrection.html" width="100%" height="1600em" scrolling=no></iframe>
						
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
			
			
				<!-- inline �α��� �˾�â -->
				<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
				<script src='http://dimsemenov-static.s3.amazonaws.com/dist/jquery.magnific-popup.min.js'></script>
				<!-- inline �α��� �˾�â -->
				
				<!-- inline �α��� �˾�â -->
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
				<!-- inline �α��� �˾�â -->

	</body>
</html>