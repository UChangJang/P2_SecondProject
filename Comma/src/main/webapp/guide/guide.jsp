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
		
		<!-- 달력css -->
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
									<!-- 사이드메뉴 -->
									<div id="menu" class="group g1">												
										<ul>
											<div class="box"><li><a href="main.do">Home</a></li></div>
											<div class="box"><li><a href="intro/introduceSite.jsp">소개페이지</a></li></div>
											<div class="box"><li><a href="intro/introduceKor.jsp">한국소개</a></li></div>
											
											<div class="box">
											    <li class="title"><a href="#">가이드</a></li>
											    <div class="cont">
											    	<li><a href="guide.jsp">1.가이드목록</a></li>
											    	<li><a href="guideWrite.jsp">2.가이드글쓰기</a></li>
											    </div>
											 </div>
											
											<div class="box">
											    <li class="title"><a href="#">관광객</a></li>
											    <div class="cont">
											    	<li><a href="../tourist/tourist.jsp">1.관광객목록</a></li>
											    </div>
											 </div>
											 <div class="box">
											 <li><a href="../mypage/mypage.jsp">마이페이지</a></li>
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
										  <input type="text" name="demo-name" id="demo-name" value="" placeholder="지역 검색" />
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
										<div id="bt">상세검색</div>
									</div>
									
									<div class="row uniform" id="panel">					<!-- 상세검색div -->
										<div class="6u 12u$(xsmall)">
											<span class="image fit">
												<img src="../images/map.png" alt=""/>		<!-- 1. 지도 -->
											</span>
										</div>
										
										<div class="6u$ 12u$(xsmall)">						<!-- 2. 상세체크 -->
											<br>
											<input type="radio" id="demo-priority-low" name="demo-priority" checked>
											<label for="demo-priority-low">걷기</label>
											<input type="radio" id="demo-priority-normal" name="demo-priority">
											<label for="demo-priority-normal">자동차</label>
											<input type="radio" id="demo-priority-high" name="demo-priority">
											<label for="demo-priority-high">자전거</label>
											<br><br>
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
			
			
			<!-- 펼치기 -->
			<script src="../js/jquery-1.11.2.min.js"></script>
			<script> 
			$(document).ready(function(){
			    $("#bt").click(function(){
			        $("#panel").slideToggle();
			    });
			});
			</script>
			
			<!-- 달력 -->
			<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
			<script src="../assets/js/dcalendar.picker.js"></script>
				<script>
				$('#calendar-demo').dcalendar();
				$('#dt').dcalendarpicker();
				</script> 
			

	</body>
</html>