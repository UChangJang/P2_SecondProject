<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>���డ�̵� ����</title>
		<meta charset="utf-8" />
		
		<!-- meta:������ �⺻���� ����/ ���� -->
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />	
		<meta http-equiv="Content-Script-Type" content="text/javascript" />
		<meta http-equiv="Content-Style-Type" content="text/css" />
		<meta http-equiv="X-UA-Compatible" content="IE=10" />
		<link rel="stylesheet" type="text/css" href="assets/css/basic.css" />
		<link rel="stylesheet" type="text/css" href="assets/css/style.css" />
		
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
		<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
		<!-- meta:������ �⺻���� ����/ ���� -->
		
		<!-- inline �˾�â -->
			<link rel='stylesheet prefetch' href='http://dimsemenov-static.s3.amazonaws.com/dist/magnific-popup.css'>
		<!-- inline �˾�â -->
		
		
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
		
	
		<!-- ���콺������ �޴����� -->
			<script type="text/javascript" src="./jquery.js"></script>
	        <link href="style.css" rel="stylesheet" type="text/css">
		 	<script type="text/javascript" src="./menu.js"></script>			
		 <!-- ���콺������ �޴����� -->
		 
		 <link rel="stylesheet" type="text/css" href="assets/css/mytest.css" />
	</head>
	
	
	
	<body class="landing">

		<!-- Page Wrapper -->
			<div id="page-wrapper">


				<!-- Header -->
					<header id="header" class="alt">
						<h1><a href="main.do">��ܸ޴�</a></h1>
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
											<div class="box"><li><a href="index.jsp">Home</a></li></div>
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
											 <li><a href="#">����������</a></li>
											 </div>
										</ul>
									</div> 
								</li>
							</ul>
						</nav>
					</header>


				<!-- Three -->
					<section id="three" class="wrapper style3 special widthsiz">			<!-- style3:���,��Ʈ...���� -->
						<div class="innerM">		<!-- ���� -->
						
							<ul id="banner1">
								<div class="inner">
								<br>
									<h2>���డ�̵����Ʈ</h2>
								<br>	
								</div>
							</ul>
							
							<ul class="features9 row uniform">
								<li>
									<div class="inner2">
										<a href="intro/introduceSite.jsp"><p>PageIntroduce</p></a>
										<img alt="�Ұ�" src="images/character.png" />				<!-- alt:�̹��������� -->
					  				</div>
								</li>
								
								<li>
									<div class="inner2">
										<a href="intro/introduceKor.jsp"><p>KoreaIntroduce</p></a>
										<img alt="�Ұ�" src="images/character.png" />				<!-- alt:�̹��������� -->
					  				</div>
								</li>
								
								<li>
									<div class="inner2">
										<a href="guide/guide.jsp"><p>Guide</p></a>
										<img alt="�Ұ�" src="images/character.png" />				<!-- alt:�̹��������� -->
					  				</div>
								</li>
								
								<li>
									<div class="inner2">
										<a href="tourist/tourist.jsp"><p>Customer</p></a>
										<img alt="�Ұ�" src="images/character.png" />				<!-- alt:�̹��������� -->
					  				</div>
								</li>
								
								
							</ul>
						</div>
					</section>
			

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
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			
				
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
				
				<!-- ���̵� �޴� -->
				<script type="text/javascript">
				$(function() {

				  var group = $(".group");
				
				  group.each(function() {
				    var _group = new GroupBox(this);
				  });
				
				  // ����� ���� ������ �Լ� ����
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
				
				  // ����� ���� ������ �Լ� ����
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