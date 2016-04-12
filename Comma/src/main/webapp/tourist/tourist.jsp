<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>

<html>
	<head>
		<title>tourist</title>
		
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
						<h1><a href="main.do">Home</a></h1>
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
							<h2>가이드찾기</h2>
							<p>가이드찾기설명</p>
						</header>
						
						<section class="wrapper style5">
							<div class="inner">						
								<form method="post" action="#">
									<div class="row uniform">					<!-- 상세검색div -->
										<div class="6u 12u$(xsmall)">
											<span class="image fit">
												<img src="../images/map.png" alt=""/>		<!-- 1. 지도 -->
											</span>
										</div>
										
										<div class="6u$ 12u$(xsmall)">						<!-- 2. 날짜 -->
											<br>
											<div id="demo">
												<input type="text" id="dt" placeholder="날짜선택">
        										<div id="dd"></div>
   										    </div>
										</div>
									</div>
								</form>
							</div>
						</section>
								

						<section class="wrapper style5" id="two">		<!-- 가이드 리스트9x9 -->
							<div class="inner">	
								<h4>가이드리스트</h4>
								<div class="box alt">
										<div class="row uniform 50%">
											
											<div class="3u">					<!-- 사진 -->
												<span class="image fit">
													<img src="../images/pic01.jpg" alt=""/>
												</span>	
											</div>
											<div class="9u">					<!-- 리스트 -->
												<span class="image fit c">
													<a href="customerBoard.html"><table>
														<tr>
															<td colspan=3>안보영</td>
														</tr>
														<tr>
															<td>2016/04/04</td>
															<td>9am~6pm</td>
															<td>3명</td>
														</tr>
														<tr>
															<td>서울</td>
															<td>불꽃놀이</td>
															<td>60000원</td>
														</tr>
													</table></a>
												</span>	
											</div>
											
											<div class="3u">					<!-- 사진 -->
												<span class="image fit">
													<img src="../images/pic01.jpg" alt=""/>
												</span>	
											</div>
											<div class="9u">					<!-- 리스트 -->
												<span class="image fit c">
													<a href="customerBoard.html"><table>
														<tr>
															<td colspan=3>안보영</td>
														</tr>
														<tr>
															<td>2016/04/04</td>
															<td>9am~6pm</td>
															<td>3명</td>
														</tr>
														<tr>
															<td>서울</td>
															<td>불꽃놀이</td>
															<td>60000원</td>
														</tr>
													</table></a>
												</span>	
											</div>
											
											<div class="3u">					<!-- 사진 -->
												<span class="image fit">
													<img src="../images/pic01.jpg" alt=""/>
												</span>	
											</div>
											<div class="9u">					<!-- 리스트 -->
												<span class="image fit c">
													<a href="customerBoard.html"><table>
														<tr>
															<td colspan=3>안보영</td>
														</tr>
														<tr>
															<td>2016/04/04</td>
															<td>9am~6pm</td>
															<td>3명</td>
														</tr>
														<tr>
															<td>서울</td>
															<td>불꽃놀이</td>
															<td>60000원</td>
														</tr>
													</table></a>
												</span>	
											</div>
											
											<div class="3u">					<!-- 사진 -->
												<span class="image fit">
													<img src="../images/pic01.jpg" alt=""/>
												</span>	
											</div>
											<div class="9u">					<!-- 리스트 -->
												<span class="image fit c">
													<a href="customerBoard.html"><table>
														<tr>
															<td colspan=3>안보영</td>
														</tr>
														<tr>
															<td>2016/04/04</td>
															<td>9am~6pm</td>
															<td>3명</td>
														</tr>
														<tr>
															<td>서울</td>
															<td>불꽃놀이</td>
															<td>60000원</td>
														</tr>
													</table></a>
												</span>	
											</div>
											
											<div class="3u">					<!-- 사진 -->
												<span class="image fit">
													<img src="../images/pic01.jpg" alt=""/>
												</span>	
											</div>
											<div class="9u">					<!-- 리스트 -->
												<span class="image fit c">
													<a href="customerBoard.html"><table>
														<tr>
															<td colspan=3>안보영</td>
														</tr>
														<tr>
															<td>2016/04/04</td>
															<td>9am~6pm</td>
															<td>3명</td>
														</tr>
														<tr>
															<td>서울</td>
															<td>불꽃놀이</td>
															<td>60000원</td>
														</tr>
													</table></a>
												</span>	
											</div>
											
											
									</div>
								</div>
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
</html></html>