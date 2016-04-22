<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>mypage</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="../controller/assets/css/main.css" />
		<link rel="stylesheet" href="../controller/assets/css/mytest.css" />
		<link rel="stylesheet" href="../controller/assets/css/mytest2(danbi_mypage)" /> 
		<link rel="stylesheet" href="../controller/assets/css/mypage.css" /> 
		
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
											    	<li><a href="guide/guide.jsp">1.���������</a></li>
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
												<img src="../controller/images/character.png">
											</div>
											<div class="mypictureCaption">
												<h3>${sessionScope.id }</h3>
												<h4>3���̵� 4����</h4>	
											</div>
										</div>
										
										<div class="7u$ 12u$(small)">				<!-- 2 ������ -->
											<ul class="alt">
												<li><a href="mypage_wishList.html"><h5>���ø���Ʈ</h5></a></li>
												<li><a href="mypage_myWriting.html"><h5>���� �� ��</h5></a></li>
												<li><a href="mypage_bookingList.html"><h5>���ฮ��Ʈ</h5></a></li>
												<li><a href="mypage_infoCorrection.html"><h5>��������</h5></a></li>
												<li><a href="mypage_opinion.html"><h5>�ı��</h5></a></li>																		
												<form method='POST' name="fname" style="margin:0" onsubmit="check_form()">
												<input type="hidden" value="${sessionScope.id }" name="userid">												
 												  <li><a href="#none" onclick="check_form()"><h5>�޼�����</h5></a></li>																								 
												</form>
												
												
											</ul>
										</div>
									</div>
								</section>
							</div>
						</section>
						
						<!-- include -->
						<%-- <jsp:include page="mypage_infoCorrection.jsp"></jsp:include>
						<jsp:include page="mypage_wishlist.jsp"></jsp:include>
						<jsp:include page="mypage_comment.jsp"></jsp:include>
						<jsp:include page="mypage_reserve.jsp"></jsp:include>--%>				
						<jsp:include page="mypage_letter.jsp"></jsp:include>
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
			<script src="../controller/assets/js/main.js"></script>
			
			
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
				
				function check_form(){
				  var m = document.fname;
				  m.action = "mypage_letter.do";
				  m.submit();
				}
				
				</script> 
				<!-- inline �α��� �˾�â -->

	</body>
</html>