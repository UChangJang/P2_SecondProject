<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>���̵� �� �ۼ�</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="../controller/assets/css/main.css" />
<link rel="stylesheet" href="../controller/assets/css/mytest.css" />

<!-- �޷�css -->
<link rel="stylesheet"
	href="../controller/assets/css/dcalendar.picker.css">

<!-- ���� ���� �ڵ� (url:http://touchsoul.tistory.com/84) -->
<script type="text/javascript"
	src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#profile_img").on('change', function() {
			readURL1(this);
		});
		$("#profile_img2").on('change', function() {
			readURL2(this);
		});
		$("#profile_img3").on('change', function() {
			readURL3(this);
		});
	});

	function readURL1(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#blah').attr('src', e.target.result);
			}

			reader.readAsDataURL(input.files[0]);
		}
	}
	function readURL2(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#blah2').attr('src', e.target.result);
			}

			reader.readAsDataURL(input.files[0]);
		}
	}
	function readURL3(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#blah3').attr('src', e.target.result);
			}

			reader.readAsDataURL(input.files[0]);
		}
	}
</script>

<!-- ���콺������ �޴����� -->
<script type="text/javascript" src="./jquery.js"></script>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="./menu.js"></script>

</head>
<body>

	<!-- Page Wrapper -->
	<div id="page-wrapper">

		<!-- Header -->
		<header id="header">
		<h1>
			<a href="../index.html">Home</a>
		</h1>
		<nav id="nav">
		<ul>
			<li class="special">
				<!-- 3���̵�޴� --> <a href="#menu" class="menuToggle"><span>Menu</span></a>
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
		</nav> </header>

		<!-- Main -->
		<article id="main"> <header>
		<h2>���̵� �۾���</h2>
		<p>���� ������</p>
		</header> <section class="wrapper style5">
		<div class="inner">


			<section> <!-- �۾��� -->
			<form method="post" action="#">
				<div class="row uniform">
					<div class="2u 12u$(xsmall) gWrite_left">
						<!-- 1 ���� : ����-->
						<h5>����</h5>
					</div>
					<div class="10u$ 12u$(xsmall)">
						<!-- 2 ������ -->
						<input type="text" name="demo-name" id="demo-name" value=""
							placeholder="Name" />
					</div>

					<div class="2u 12u$(xsmall) gWrite_left">
						<!-- 1 ���� : ���̵�Ұ�-->
						<h5>���̵�Ұ�</h5>
					</div>
					<div class="10u$ 12u$(xsmall)">
						<!-- 1 ������ -->
						<textarea name="demo-message" id="demo-message"
							placeholder="Enter your message" rows="6"></textarea>
					</div>

					<div class="2u 12u$(xsmall) gWrite_left">
						<!-- 2 ���� : �������Ұ�-->
						<h5>�������Ұ�</h5>
					</div>
					<div class="10u$ 12u$(xsmall)">
						<!-- 2 ������ -->
						<textarea name="demo-message" id="demo-message"
							placeholder="Enter your message" rows="6"></textarea>
					</div>

					<div class="2u 12u$(xsmall) gWrite_left">
						<!-- 3 ���� : ���������λ���-->
						<h5>���ΰ�����_����</h5>
					</div>
					<div class="10u$ 12u$(xsmall)">
						<span class="my-thumb-1">
							<div>
								<input type='file' id="profile_img" />
							</div>
							<div>
								<img id="blah" src="#" alt="" />
							</div>

						</span> <span class="my-thumb-1">
							<div>
								<input type='file' id="profile_img2" />
							</div>
							<div>
								<img id="blah2" src="#" alt="" />
							</div>
						</span> <span class="my-thumb-1">
							<div>
								<input type='file' id="profile_img3" />
							</div>
							<div>
								<img id="blah3" src="#" alt="" />
							</div>
						</span>
					</div>

					<div class="2u 12u$(xsmall) gWrite_left">
						<!-- 4 ���� : ���ΰ������Ұ�-->
						<h5>���μҰ�1</h5>
					</div>
					<div class="10u$ 12u$(xsmall)">
						<!-- 4 ������ -->
						<textarea name="demo-message" id="demo-message"
							placeholder="Enter your message" rows="6"></textarea>
					</div>

					<div class="2u 12u$(xsmall) gWrite_left">
						<!-- 4 ���� : ���ΰ������Ұ�-->
						<h5>���μҰ�2</h5>
					</div>
					<div class="10u$ 12u$(xsmall)">
						<!-- 4 ������ -->
						<textarea name="demo-message" id="demo-message"
							placeholder="Enter your message" rows="6"></textarea>
					</div>

					<div class="2u 12u$(xsmall) gWrite_left">
						<!-- 4 ���� : ���ΰ������Ұ�-->
						<h5>���μҰ�3</h5>
					</div>
					<div class="10u$ 12u$(xsmall)">
						<!-- 4 ������ -->
						<textarea name="demo-message" id="demo-message"
							placeholder="Enter your message" rows="6"></textarea>
					</div>

					<div class="2u 12u$(xsmall) gWrite_left">
						<!-- 5 ���� : ����-->
						<h5>����</h5>
					</div>
					<div class="4u 12u$(xsmall)">
						<!-- 5 ������ -->
						<div class="select-wrapper">
							<select name="demo-category" id="demo-category">
								<option value="">- ���� -</option>
								<option value="1">����</option>
								<option value="1">�λ�</option>
								<option value="1">���ֵ�</option>
								<option value="1">������</option>
							</select>
						</div>
					</div>

					<div class="1u 12u$(xsmall) gWrite_left">
						<!-- 5-1 ���� : �����ο�-->
						<h5>�����ο�</h5>
					</div>
					<div class="5u$ 12u$(xsmall)">
						<!-- 5-1 ������ -->
						<div class="select-wrapper">
							<select name="demo-category" id="demo-category">
								<option value="">- �����ο� -</option>
								<option value="1">1</option>
								<option value="1">2</option>
								<option value="1">3</option>
								<option value="1">4</option>
								<option value="1">5</option>
								<option value="1">6</option>
								<option value="1">7</option>
								<option value="1">8</option>
								<option value="1">9</option>
								<option value="1">10</option>
							</select>
						</div>
					</div>


					<div class="2u 12u$(xsmall) gWrite_left">
						<!-- 6 ���� : ���-->
						<h5>���</h5>
					</div>
					<div class="10u$ 12u$(xsmall)">
						<!-- 6 ������ -->
						<input type="text" name="demo-name" id="demo-name" value=""
							placeholder="Name" />
					</div>

					<div class="2u 12u$(xsmall) gWrite_left">
						<!-- 7 ���� : ����-->
						<h5>����</h5>
					</div>
					<div class="10u$ 12u$(xsmall)">
						<!-- 7 ������ -->
						<textarea name="demo-message" id="demo-message"
							placeholder="Enter your message" rows="6"></textarea>
					</div>

					<div class="2u 12u$(xsmall) gWrite_left">
						<!-- 8 ���� : �̵�����-->
						<h5>�̵�����</h5>
					</div>
					<div class="10u$ 12u$(xsmall)">
						<!-- 8 ������ -->
						<input type="radio" id="walking" name="demo-priority" checked>
						<label for="walking">walking</label> <input type="radio" id="car"
							name="demo-priority" checked> <label for="car">car</label>
						<input type="radio" id="bicycle" name="demo-priority" checked>
						<label for="bicycle">bicycle</label>
					</div>




					<div class="2u 12u$(xsmall) gWrite_left">
						<!-- 5 ���� : �ð�-->
						<h5>�ð�</h5>
					</div>
					<div class="4u 12u$(xsmall)">
						<!-- 5 ������ -->
						<div class="select-wrapper">
							<select name="demo-category" id="demo-category">
								<option value="">- �ð� -</option>
								<option value="1">1</option>
								<option value="1">2</option>
								<option value="1">3</option>
								<option value="1">4</option>
								<option value="1">5</option>
								<option value="1">6</option>
								<option value="1">7</option>
								<option value="1">8</option>
								<option value="1">9</option>
								<option value="1">10</option>
								<option value="1">11</option>
								<option value="1">12</option>
							</select>
						</div>
					</div>

					<div class="1u 12u$(xsmall) gWrite_left">
						<!-- 5-1 ���� : �����ο�-->
						<h5>~</h5>
					</div>
					<div class="5u$ 12u$(xsmall)">
						<!-- 5-1 ������ -->
						<div class="select-wrapper">
							<select name="demo-category" id="demo-category">
								<option value="">- �ð� -</option>
								<option value="1">1</option>
								<option value="1">2</option>
								<option value="1">3</option>
								<option value="1">4</option>
								<option value="1">5</option>
								<option value="1">6</option>
								<option value="1">7</option>
								<option value="1">8</option>
								<option value="1">9</option>
								<option value="1">10</option>
								<option value="1">11</option>
								<option value="1">12</option>
							</select>
						</div>
					</div>

					<div class="2u 12u$(xsmall) gWrite_left">
						<!-- 1 ���� : �������-->
						<h5>�������</h5>
					</div>
					<div class="10u$ 12u$(xsmall)">
						<!-- 2 ������ -->
						<input type="text" name="demo-name" id="demo-name" value=""
							placeholder="Name" />
					</div>


					<div class="2u 12u$(xsmall) gWrite_left">
						<!-- 7 ���� : ������¥-->
						<h5>������¥</h5>
					</div>
					<div class="10u$ 12u$(xsmall)">
						<!-- 7 ������ -->
						<input type="text" id="dt" placeholder="��¥����">
						<div id="dd"></div>
					</div>
				</div>
			</form>



			<ul class="actions fit small gWrbtn">
				<li><a href="#" class="button special fit small">���</a></li>
				<li><a href="#" class="button fit small">���</a></li>
			</ul>
			</section></article>

		<!-- Footer -->
		<footer id="footer">
		<ul class="icons">
			<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
			<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
			<li><a href="#" class="icon fa-instagram"><span
					class="label">Instagram</span></a></li>
			<li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
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

	<!-- �޷� -->
	<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
	<script src="../controller/assets/js/dcalendar.picker.js"></script>
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
</html>