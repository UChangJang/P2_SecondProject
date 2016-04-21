<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

		<link rel="stylesheet" type="text/css" href="../controller/assets/css/mytest.css" />
		<link rel="stylesheet" type="text/css" href="../controller/assets/css/basic.css" />
		<link rel="stylesheet" type="text/css" href="../controller/assets/css/style.css" />
		<link rel="stylesheet" type="text/css" href="../controller/assets/css/main.css" />		
		<link rel="stylesheet" type="text/css" href="../controller/assets/css/tabControl.css" />	

		
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
		<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
		<!-- meta:������ �⺻���� ����/ ���� -->
		
		<!-- ���� �ڵ� ��ũ�� ���--> 
		<link rel='stylesheet prefetch' href='http://dimsemenov-static.s3.amazonaws.com/dist/magnific-popup.css'>

		<meta name="viewport" content="width=device-width, initial-scale=1" />
		
		
		<!-- ���콺������ �޴����� -->
		<script type="text/javascript" src="./jquery.js"></script>
	    <link href="style.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="./menu.js"></script>			
</head>
	

<body class="landing">

	<!-- Page Wrapper -->
	<div id="page-wrapper">

		<!-- Header -->
		<header id="header" class="alt">
			<h1>
				<a href="main.do">��ܸ޴�</a>
			</h1>
			<nav id="nav">
				<ul>
					<li class="special">
					
						<!-- 1�߰�:�α��� ���̾� �˾�â-->
						<c:if test="${sessionScope.id!=null }">
							${sessionScope.name }�� ȯ���մϴ�.
							<button class="button special log" id="logout-btn">Logout</button>
							<form method="post" id="logout-frm" action="logout.do" hidden="hidden"></form>
						</c:if>
						<c:if test="${sessionScope.id==null }">
						<button class="button special log" id="join-btn">Sign In</button>&nbsp;&nbsp;
						<button class="button special log" id="login-btn">Login</button> 
						<form class="white-popup mfp-hide" id="login-form" method="post" action="login.do">
							<h1>Log-In</h1>
							<div>
								<input name="id" id="id" required="" type="text"
									placeholder="ID">
							</div>
							<br>
							<div>
								<input name="pwd" id="pwd" required="" type="password"
									placeholder="Password">
							</div>
							<br>
							<div class="logbtn">
								<input name="login" value="login" id="log-btn" type="button">
								<input name="join" value="join" id=join-btn type="button">
							</div>
							<br>
							<div class="logbtn">
								<input name="idfind" value="idã��" id="idfind-btn" type="button">
								<input name="pwdfind" value="pwdã��" id="pwdfind-btn" type="button">
							</div>
							
						</form>  
						
						<!-- 2�߰�:ȸ������ ���̾� �˾�â-->
						<form class="white-popup mfp-hide" id="join-form" action="join.do" method="post">
							<h1>Join-us</h1>
							<div>
								<input name="id" id="join_id" required="" type="text" placeholder="ID"><span>
								<input name="id_check" value="Ȯ��" id="id_check"type="button"></span>
							</div>
							<br>
							<div>
								<input name="pwd" id="join_pwd" required="" type="password"	placeholder="Password">
							</div>
							<br>
							<div>
								<input name="pwd" id="join_pwd_check" required="" type="password" placeholder="Password">
							</div>
							<br>
							<div>
								<input name="name" id="join_name" required="" type="text" placeholder="Name">
							</div>
							<br>
							<div>
								<input name="nick" id="join_nick" required="" type="text" placeholder="NickName"> 
								<input name="nick_check" value="Ȯ��" id="id2" type="button">
							</div>
							<br>
							<div>
								<input name="email" id="join_email" required="" type="text" placeholder="E-mail">
							</div>
							<br>
							<div class="joinBtn">
								<input name="join" value="join" id="join" type="button">
							</div>							
						</form> 
						</c:if>
						<!-- 3���̵�޴� -->
						<a href="#menu" class="menuToggle"><span>Menu</span></a>
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
		<section id="three" class="wrapper style2 special widthsiz1">
			<!-- style3:���,��Ʈ...���� -->

			<ul id="banner1">
				<div class="inner">
					<br>
					<h2>���డ�̵����Ʈ</h2>
					<br>
				</div>
			</ul>

			<div id="mainMenu">&nbsp;&nbsp; 
				<span><a href="#">����Ʈ�Ұ�</a></span>&nbsp;&nbsp; 
				<span><a href="#">�ѱ��Ұ�</a></span>&nbsp;&nbsp;
				<span><a href="#">���̵�</a></span>&nbsp;&nbsp; 
				<span><a href="#">������</a></span>
				<span><a href="#">Ŀ�´�Ƽ</a></span>
			</div>
		</section>
		
		<!-- mainmenu ���콺 ������ ��µ� ���� -->
		<section id="mainMenu_hover">
			<div id="mainMenu_nav">
				<ul>
					<li><a href=""><b>����Ʈ�Ұ�</b></a></li>
					<li>What about 'Comma'</li>
					<li>Information</li>
				</ul>
				<ul>
					<li><a href=""><b>�ѱ��Ұ�</b></a></li>
					<li>What about 'Comma'</li>
					<li>Information</li>
				</ul>
				<ul>
					<li><a href=""><b>���̵�</b></a></li>
					<li>What about 'Comma'</li>
					<li>Information</li>
				</ul>
				<ul>
					<li><a href=""><b>������</b></a></li>
					<li>What about 'Comma'</li>
					<li>Information</li>
				</ul>
				<ul>
					<li><a href=""><b>Ŀ�´�Ƽ</b></a></li>
					<li>What about 'Comma'</li>
					<li>Information</li>
				</ul>
			</div>
		</section>


		<section id="three" class="wrapper style2 special widthsiz2">
			<div class="inner">
				<section>
					<!-- ���� �������� -->
					<div class="row uniform" id="mainTop">
						<div class="3u 12u$(small)">								<!-- 1 ���� -->
							<div id="mainSearch">
								<div class="mainSearch1" style="color: #53565B; font-style: bold">
								<img src="images/search.png">&nbsp;&nbsp;EASY SEARCH</div>
								<input type="text" name="demo-name" id="demo-name" value=""
									placeholder="���� �˻�" class="mainSearch1"/> 
								<input type="text" id="dt" placeholder="��¥����" class="mainSearch1"/>
								<div class="select-wrapper">
									<select name="demo-category" id="demo-category" class="mainSearch1">
										<option value="">�ο�����</option>
										<option value="1">1��</option>
										<option value="1">2��</option>
										<option value="1">3��</option>
										<option value="1">4��</option>
									</select> 
								<input type="submit" value="SEARCH" class="special mainSearch1" />
								</div>

							</div>
						</div>

						<div class="7u 12u$(small)">								<!-- 2 ��� -->
							<span class="image fit a">
								<div id="main_bn">
									<li><img src="images/guide_banner.jpg" alt="" /></li>		<!-- �̹��� character�� ���߱�!!! -->
									<li><img src="images/tour_banner.jpg" alt="" /></li>
									<li><img src="images/korea_banner.jpg" alt="" /></li>
									<li><img src="images/character.png" alt="" /></li>
								</div>
							</span>
						</div>
						
						<div class="2u$ 12u$(small) mainRight1">					<!-- 3 ������ -->
							<div id="mainRight">
								<div id="mainRight_home"><a id="a_home" href="#1">									
									<span class="mainRight_span"><img src="images/home.png"></span>
									Home</a></div>
								<div id="mainRight_comma"><a id="a_comma" href="#2">									
									<span class="mainRight_span"><img src="images/comma.png"></span>
									����Ʈ�Ұ�</a></div>
								<div ><a id="a_korea" href="#3">
									<span class="mainRight_span"><img src="images/korea.png"></span>
									�ѱ��Ұ�</a></div>
								<div><a id="a_guide" href="#4">
									<span class="mainRight_span"><img src="images/guide.png"></span>
									���̵��</a></div>
								<div><a id="a_tour" href="#5">
									<span class="mainRight_span"><img src="images/tour.png"></span>
									��������</a></div>
								<div><a id="a_commu" href="#5">
									<span class="mainRight_span"><img src="images/commu.png"></span>
									Ŀ�´�Ƽ</a></div>	
							</div>
						</div>
					</div>
				</section>
			</div>
	</section>
	
	
	
	<section id="three" class="wrapper style2 special widthsiz3">
			<div class="inner">
				<section>
					<!-- ���� �������� -->
				<div class="row uniform">
				
					<div class="6u 12u$(small) secondPart" id="guideRanking"> 
						<h4>Best Guide 6</h4>
						<span class="ranking1"><img src="images/character.png" alt="" /></span>
						<span><img src="images/incheon1.jpg" alt="" /></span>
						<span><img src="images/incheon2.jpg" alt="" /></span>
						<span><img src="images/incheon3.jpg" alt="" /></span>
						<span><img src="images/seoul1.jpg" alt="" /></span>
						<span><img src="images/seoul3.jpg" alt="" /></span>

					</div>
					
					<div class="6u$ 12u$(small) secondPart tabControlWrap" id="tabControlWrap">
						<h4>Best Guide spot</h4>
						<ul class="tabControlTabs">
							<li class="tabControlTab selected"><p>1.����</p></li>
							<li class="tabControlTab"><p>1.����</p></li>
							<li class="tabControlTab"><p>1.����</p></li>
							<li class="tabControlTab"><p>1.����</p></li>
							<li class="tabControlTab"><p>1.����</p></li>
						</ul>
						<ul class="tabControlBodys">
							<li class="tabControlBody selected"
								style="background-color: blue;">
								<p>4��7��1/�Թ�����/2000��</p>
								<p>4��7��1/�Թ�����/2000��</p>
								<p>4��7��1/�Թ�����/2000��</p>
								<p>4��7��1/�Թ�����/2000��</p>
								<p>4��7��1/�Թ�����/2000��</p>
							</li>
							<li class="tabControlBody"
								style="background-color: red;">
								<p>4��7��2/�Թ�����/2000��</p>
								<p>4��7��2/�Թ�����/2000��</p>
								<p>4��7��2/�Թ�����/2000��</p>
								<p>4��7��2/�Թ�����/2000��</p>
								<p>4��7��2/�Թ�����/2000��</p>
							</li>
							<li class="tabControlBody"
								style="background-color: blue;">
								<p>4��7��3/�Թ�����/2000��</p>
								<p>4��7��3/�Թ�����/2000��</p>
								<p>4��7��3/�Թ�����/2000��</p>
								<p>4��7��3/�Թ�����/2000��</p>
								<p>4��7��3/�Թ�����/2000��</p>
							</li>
							<li class="tabControlBody"
								style="background-color: red;">
								<p>4��7��4/�Թ�����/2000��</p>
								<p>4��7��4/�Թ�����/2000��</p>
								<p>4��7��4/�Թ�����/2000��</p>
								<p>4��7��4/�Թ�����/2000��</p>
								<p>4��7��4/�Թ�����/2000��</p>
							</li>
							<li class="tabControlBody"
								style="background-color: blue;">
								<p>4��7��5/�Թ�����/2000��</p>
								<p>4��7��5/�Թ�����/2000��</p>
								<p>4��7��5/�Թ�����/2000��</p>
								<p>4��7��5/�Թ�����/2000��</p>
								<p>4��7��5/�Թ�����/2000��</p>
							</li>
						</ul>
					</div>
				</div>			
				</section>
			</div>
	</section>


	<section id="three" class="wrapper style2 special widthsiz4">
			<div class="inner">
				<section>

					<div class="box alt">
						<div class="row uniform">
							<div class="3u 12u$(small) thirdPart" id="guideRanking">
								<h4>���� ���� ����</h4>
								<div id="weather">
									<c:forEach var="vo" items="${wlist }">
										<li>
											<img src="${vo.weaAddr }" alt="" />
											<p>${vo.loc },${vo.tempera}</p>
										</li>
									</c:forEach>
								</div>
							</div>

							<div class="9u$ 12u$(small) thirdPart" id="guideRanking">
								<h4>���̵带 ã�ƿ�</h4>
								<table>
									<tr>
										<td>[����]</td>
										<td>2016/05/05</td>
										<td>2000d��</td>
									</tr>
									<tr>
										<td>[����]</td>
										<td>2016/05/05</td>
										<td>2000d��</td>
									</tr>
									<tr>
										<td>[����]</td>
										<td>2016/05/05</td>
										<td>2000d��</td>
									</tr>
									<tr>
										<td>[����]</td>
										<td>2016/05/05</td>
										<td>2000d��</td>
									</tr>
									<tr>
										<td>[����]</td>
										<td>2016/05/05</td>
										<td>2000d��</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</section>
			</div>
	</section>
	

		<!-- Footer -->
		<footer id="footer">
			<ul class="icons">
				<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
				<li><a href="#" class="icon fa-facebook"><span
						class="label">Facebook</span></a></li>
				<li><a href="#" class="icon fa-instagram"><span
						class="label">Instagram</span></a></li>
				<li><a href="#" class="icon fa-dribbble"><span
						class="label">Dribbble</span></a></li>
				<li><a href="#" class="icon fa-envelope-o"><span
						class="label">Email</span></a></li>
			</ul>
			<ul class="copyright">
				<li>&copy; Untitled</li>
				<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
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
					
					$('#log-btn').click(function(){
						
						var id = $('#id').val();
						if(id.trim()==""){
							$('#id').focus();
							return;
						}
						
						var pwd = $('#pwd').val();
						if(pwd.trim()==""){
							$('#pwd').focus();
							return;
						}
						
						$('#login-form').submit();						
					});
					
					$('#logout-btn').click(function(){
						$('#logout-frm').submit();											
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
					$('#join').click(function(){
						var id = $('#join_id').val();
						var pwd = $('#join_pwd').val();
						var nick = $('#join_nick').val();
						var name = $('#join_name').val();
						var email = $('#join_email').val();
						if(id.trim()==""){
							$('#join_id').focus();
							return;
						}
						if(pwd.trim()==""){
							$('#join_pwd').focus();
							return;
						}
						if(name.trim()==""){
							$('#join_name').focus();
							return;
						}
						if(nick.trim()==""){
							$('#join_nick').focus();
							return;
						}				
						if(email.trim()==""){
							$('#join_email').focus();
							return;
						}
						$('#join-form').submit();
						
						
					})
				});
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

	<!-- ���� ��� �����̵� -->
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script type="text/javascript" src="../controller/js/jquery.ulslide.js"></script>

	<script src='http://dimsemenov-static.s3.amazonaws.com/dist/jquery.magnific-popup.min.js'></script>


	
	<script type="text/javascript">
	 $(function() {
         $('#main_bn').ulslide({		/* ��� �����̵� */
             statusbar: true,
             affect: 'slide',
             axis: 'x',
             navigator: '#mainRight a',
             duration: 300,
			autoslide: 3000
			
         });
         
         $('#weather').ulslide({		/* ���� �����̵� */
             statusbar: true,
             affect: 'slide',
             axis: 'x',
             duration: 300,
			autoslide: 3000
         });  
     });
    </script>

	<!-- ���콺 ������ hot �� ���� -->
	<!-- <script type="text/javascript"
		src="assets/js/jquery-1.4.1.min.js"></script> -->
	<script type="text/javascript"
		src="../controller/assets/js/tabControl.js"></script>
	<!-- ���� hot�� ��� ��ũ��  -->
	<script type="text/javascript">
		$(function() {
			$("#tabControlWrap").tabControls();
		})
	</script>


</body>
</html>