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
		
		<!-- �޷�css -->
		<link rel="stylesheet" href="../controller/assets/css/dcalendar.picker.css">

		<!-- ���콺������ �޴����� -->
			<script type="text/javascript" src="./jquery.js"></script>
	        <link href="style.css" rel="stylesheet" type="text/css">
		 	<script type="text/javascript" src="./menu.js"></script>			
		 <!-- ���콺������ �޴����� -->
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
									<!-- ���̵�޴� -->
									<div id="menu" class="group g1">
							<ul>
								<div class="box">
									<li><a href="main.do">Home</a></li>
								</div>
								<div class="box">
									<li><a href="introduceSite.do">�Ұ�������</a></li>
								</div>
								<div class="box">
									<li><a href="introduceKor.do">�ѱ��Ұ�</a></li>
								</div>

								<div class="box">
									<li class="title"><a href="#">���̵�</a></li>
									<div class="cont">
										<li><a href="guide.do">1.���̵���</a></li>
										<li><a href="guideWrite.do">2.���̵�۾���</a></li>
									</div>
								</div>

								<div class="box">
									<li class="title"><a href="#">������</a></li>
									<div class="cont">
										<li><a href="tourist.do">1.���������</a></li>
										<li><a href="touristWrite.do">2.�������۾���</a></li>
									</div>
								</div>
								<div class="box">
									<li><a href="mypage.do">����������</a></li>
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
									<div class="row uniform">					<!-- �󼼰˻�div -->
										<div class="6u 12u$(xsmall)">
											<span class="image fit">
												<img src="../controller/images/map.png" alt=""/>		<!-- 1. ���� -->
											</span>
										</div>
										
										<div class="6u$ 12u$(xsmall)">						<!-- 2. ��¥ -->
											<br>
											<div id="demo">
												<input type="text" id="dt" placeholder="��¥����">
        										<div id="dd"></div>
   										    </div>
										</div>
									</div>
								</form>
							</div>
						</section>
								

						<section class="wrapper style5" id="two">		<!-- ���̵� ����Ʈ9x9 -->
							<div class="inner">	
								<h4>���̵帮��Ʈ</h4>
								<div class="box alt">
										<div class="row uniform 50%">
											
											<div class="3u">					<!-- ���� -->
												<span class="image fit">
													<img src="../controller/images/pic01.jpg" alt=""/>
												</span>	
											</div>
											<div class="9u">					<!-- ����Ʈ -->
												<span class="image fit c">
													<a href="customerBoard.html"><table>
														<tr>
															<td colspan=3>�Ⱥ���</td>
														</tr>
														<tr>
															<td>2016/04/04</td>
															<td>9am~6pm</td>
															<td>3��</td>
														</tr>
														<tr>
															<td>����</td>
															<td>�Ҳɳ���</td>
															<td>60000��</td>
														</tr>
													</table></a>
												</span>	
											</div>
											
											<div class="3u">					<!-- ���� -->
												<span class="image fit">
													<img src="../controller/images/pic01.jpg" alt=""/>
												</span>	
											</div>
											<div class="9u">					<!-- ����Ʈ -->
												<span class="image fit c">
													<a href="customerBoard.html"><table>
														<tr>
															<td colspan=3>�Ⱥ���</td>
														</tr>
														<tr>
															<td>2016/04/04</td>
															<td>9am~6pm</td>
															<td>3��</td>
														</tr>
														<tr>
															<td>����</td>
															<td>�Ҳɳ���</td>
															<td>60000��</td>
														</tr>
													</table></a>
												</span>	
											</div>
											
											<div class="3u">					<!-- ���� -->
												<span class="image fit">
													<img src="../controller/images/pic01.jpg" alt=""/>
												</span>	
											</div>
											<div class="9u">					<!-- ����Ʈ -->
												<span class="image fit c">
													<a href="customerBoard.html"><table>
														<tr>
															<td colspan=3>�Ⱥ���</td>
														</tr>
														<tr>
															<td>2016/04/04</td>
															<td>9am~6pm</td>
															<td>3��</td>
														</tr>
														<tr>
															<td>����</td>
															<td>�Ҳɳ���</td>
															<td>60000��</td>
														</tr>
													</table></a>
												</span>	
											</div>
											
											<div class="3u">					<!-- ���� -->
												<span class="image fit">
													<img src="../controller/images/pic01.jpg" alt=""/>
												</span>	
											</div>
											<div class="9u">					<!-- ����Ʈ -->
												<span class="image fit c">
													<a href="customerBoard.html"><table>
														<tr>
															<td colspan=3>�Ⱥ���</td>
														</tr>
														<tr>
															<td>2016/04/04</td>
															<td>9am~6pm</td>
															<td>3��</td>
														</tr>
														<tr>
															<td>����</td>
															<td>�Ҳɳ���</td>
															<td>60000��</td>
														</tr>
													</table></a>
												</span>	
											</div>
											
											<div class="3u">					<!-- ���� -->
												<span class="image fit">
													<img src="../controller/images/pic01.jpg" alt=""/>
												</span>	
											</div>
											<div class="9u">					<!-- ����Ʈ -->
												<span class="image fit c">
													<a href="customerBoard.html"><table>
														<tr>
															<td colspan=3>�Ⱥ���</td>
														</tr>
														<tr>
															<td>2016/04/04</td>
															<td>9am~6pm</td>
															<td>3��</td>
														</tr>
														<tr>
															<td>����</td>
															<td>�Ҳɳ���</td>
															<td>60000��</td>
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
</html></html>