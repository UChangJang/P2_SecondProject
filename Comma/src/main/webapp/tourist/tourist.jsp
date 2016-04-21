<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>

<html>
	<head>
		<title>tourist</title>
		
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="../controller/assets/css/main.css" />
		<link rel="stylesheet" href="../controller/assets/css/mytest.css" />
		
		<!-- 달력css -->
		<link rel="stylesheet" href="../controller/assets/css/dcalendar.picker.css">

		<!-- 마우스오버시 메뉴나옴 -->
			<script type="text/javascript" src="./jquery.js"></script>
	        <link href="style.css" rel="stylesheet" type="text/css">
		 	<script type="text/javascript" src="./menu.js"></script>			
		 <!-- 마우스오버시 메뉴나옴 -->
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
									<!-- 사이드메뉴 -->
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
							<h2>가이드찾기</h2>
							<p>가이드찾기설명</p>
						</header>
						
						<section class="wrapper style5">
							<div class="inner">						
								<form method="post" action="#">
									<div class="row uniform">					<!-- 상세검색div -->
										<div class="6u 12u$(xsmall)">
											<span class="image fit">
												<img src="../controller/images/map.png" alt=""/>		<!-- 1. 지도 -->
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
													<img src="../controller/images/pic01.jpg" alt=""/>
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
													<img src="../controller/images/pic01.jpg" alt=""/>
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
													<img src="../controller/images/pic01.jpg" alt=""/>
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
													<img src="../controller/images/pic01.jpg" alt=""/>
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
													<img src="../controller/images/pic01.jpg" alt=""/>
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
</html></html>