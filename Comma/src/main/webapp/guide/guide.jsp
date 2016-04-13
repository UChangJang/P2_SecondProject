<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>

<html>
	<head>
		<title>guide</title>
		
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="../assets/css/main.css" />
		<link rel="stylesheet" href="../assets/css/mytest.css" />
		
		<!-- �޷�css -->
		<link rel="stylesheet" href="../assets/css/dcalendar.picker.css">

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
											<div class="box"><li><a href="main.do">Home</a></li></div>
											<div class="box"><li><a href="intro/introduceSite.jsp">�Ұ�������</a></li></div>
											<div class="box"><li><a href="intro/introduceKor.jsp">�ѱ��Ұ�</a></li></div>
											
											<div class="box">
											    <li class="title"><a href="#">���̵�</a></li>
											    <div class="cont">
											    	<li><a href="guide.jsp">1.���̵���</a></li>
											    	<li><a href="guideWrite.jsp">2.���̵�۾���</a></li>
											    </div>
											 </div>
											
											<div class="box">
											    <li class="title"><a href="#">������</a></li>
											    <div class="cont">
											    	<li><a href="../tourist/tourist.jsp">1.���������</a></li>
											    </div>
											 </div>
											 <div class="box">
											 <li><a href="../mypage/mypage.jsp">����������</a></li>
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
							<h2>���̵�ã��</h2>
							<p>���̵�ã�⼳��</p>
						</header>
						
						<section class="wrapper style5">
							<div class="inner">						
								<form method="post" action="#">
									<div class="row uniform">
										<div class="9u 12u$(xsmall)">
										  <input type="text" name="demo-name" id="demo-name" value="" placeholder="���� �˻�" />
										</div>
										<div class="3u$ 12u$(xsmall)">
										  <ul class="actions">
										  		<a href="#two" class="scrolly">
												<li><input type="submit" value="Send Message" class="special" /></li>
												</a>
										  </ul>
										</div>
									</div>
									
									<div id="wrapdetail">
										<div id="bt">�󼼰˻�</div>
									</div>
									
									<div class="row uniform" id="panel">					<!-- �󼼰˻�div -->
										<div class="6u 12u$(xsmall)">
											<span class="image fit">
												<img src="../images/map.png" alt=""/>		<!-- 1. ���� -->
											</span>
										</div>
										
										<div class="6u$ 12u$(xsmall)">						<!-- 2. ��üũ -->
											<br>
											<input type="radio" id="demo-priority-low" name="demo-priority" checked>
											<label for="demo-priority-low">�ȱ�</label>
											<input type="radio" id="demo-priority-normal" name="demo-priority">
											<label for="demo-priority-normal">�ڵ���</label>
											<input type="radio" id="demo-priority-high" name="demo-priority">
											<label for="demo-priority-high">������</label>
											<br><br>
											<div class="select-wrapper">
													<select name="demo-category" id="demo-category">
														<option value="">�ο�����</option>
														<option value="1">1��</option>
														<option value="1">5������</option>
														<option value="1">10������</option>
														<option value="1">��ü</option>
													</select>
											</div>
											
											<div id="demo">
												<input type="text" id="dt" placeholder="��¥����">
        										<div id="dd"></div>
   										    </div>
										</div>
									</div>
								</form>
							</div>
						</section>
						
						<!-- 3x3���̵帮��Ʈ ��� -->
						<iframe src="guideList.jsp" width="100%" height="1600em" scrolling=no></iframe> 
						
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
			<script src="../assets/js/main.js"></script>
			
			
			<!-- ��ġ�� -->
			<script src="../js/jquery-1.11.2.min.js"></script>
			<script> 
			$(document).ready(function(){
			    $("#bt").click(function(){
			        $("#panel").slideToggle();
			    });
			});
			</script>
			
			<!-- �޷� -->
			<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
			<script src="../assets/js/dcalendar.picker.js"></script>
				<script>
				$('#calendar-demo').dcalendar();
				$('#dt').dcalendarpicker();
				</script> 
			

	</body>
</html>