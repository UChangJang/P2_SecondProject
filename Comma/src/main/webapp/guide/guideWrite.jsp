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
			<form method="post" action="guide_Insert.do">
				<div class="row uniform" id="guideWrite_text">
					<div class="2u 12u$(xsmall) gWrite_left">
						<!-- 1 ���� : ����-->
						<h5>����</h5>
					</div>
					<div class="10u$ 12u$(xsmall)">
						<!-- 2 ������ -->
						<input type="text" name="guide_subject" id="demo-name" value=""
							placeholder="Subject" />
					</div>

					<div class="2u 12u$(xsmall) gWrite_left">
						<!-- 2 ���� : �������Ұ�-->
						<h5>�������Ұ�</h5>
					</div>
					<div class="10u$ 12u$(xsmall)">
						<!-- 2 ������ -->
						<textarea name="guide_loc_intro" id="demo-message"
							placeholder="Write your trip plan" rows="6"></textarea>
					</div>





				 	<div class="2u 12u$(xsmall) gWrite_left">
						<h5>���μҰ�1</h5>
					</div>
					<div class="3u 12u$(xsmall)">
						<span class="my-thumb-1">
							<div>
								<input type='file' id="profile_img" />
							</div>
							<div>
								<img id="blah" src="#" alt="" />
							</div>

						</span>
					</div>
					<div class="7u$ 12u$(xsmall)">
						<textarea name="guide_detail" id="demo-message"
							placeholder="Enter your message detail" rows="6"></textarea>
					</div>
					
					<div class="2u 12u$(xsmall)">
					</div>
					<div class="10u$ 12u$(xsmall)" id="plusdelbtn">
						<div class="plusBtn">�����߰�&nbsp;&nbsp;</div>
						<div class="deleteBtn">�������</div>
					</div>
					
					
					<!-- 22222222222222222222222222222222222222222222222222 -->
					<div class="2u 12u$(xsmall) gWrite_left plusWrite1">
						<h5>���μҰ�2</h5>
					</div>
					<div class="3u 12u$(xsmall) plusWrite1">
						<span class="my-thumb-1">
							<div>
								<input type='file' id="profile_img2" />
							</div>
							<div>
								<img id="blah2" src="#" alt="" />
							</div>

						</span>
					</div>
					<div class="7u$ 12u$(xsmall) plusWrite1">
						<textarea name="guide_detail" id="demo-message"
							placeholder="Enter your message detail" rows="6"></textarea>
					</div>
					
					<!-- 3333333333333333333333333333333333333333333333333-->
					<div class="2u 12u$(xsmall) gWrite_left plusWrite2">
						<h5>���μҰ�3</h5>
					</div>
					<div class="3u 12u$(xsmall) plusWrite2">
						<span class="my-thumb-1">
							<div>
								<input type='file' id="profile_img3" />
							</div>
							<div>
								<img id="blah3" src="#" alt="" />
							</div>

						</span>
					</div>
					<div class="7u$ 12u$(xsmall) plusWrite2">
						<textarea name="guide_detail" id="demo-message"
							placeholder="Enter your message detail" rows="6"></textarea>
					</div>

					






					<!-- <div class="2u 12u$(xsmall) gWrite_left">
						3 ���� : ���������λ���
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
						4 ���� : ���ΰ������Ұ�
						<h5>���μҰ�1</h5>
					</div>
					<div class="10u$ 12u$(xsmall)">
						4 ������
						<textarea name="guide_detail" id="demo-message"
							placeholder="Enter your message detail" rows="6"></textarea>
					</div>

					<div class="2u 12u$(xsmall) gWrite_left">
						4 ���� : ���ΰ������Ұ�
						<h5>���μҰ�2</h5>
					</div>
					<div class="10u$ 12u$(xsmall)">
						4 ������
						<textarea name="demo-message" id="demo-message"
							placeholder="Enter your message detail" rows="6"></textarea>
					</div>

					<div class="2u 12u$(xsmall) gWrite_left">
						4 ���� : ���ΰ������Ұ�
						<h5>���μҰ�3</h5>
					</div>
					<div class="10u$ 12u$(xsmall)">
						4 ������
						<textarea name="demo-message" id="demo-message"
							placeholder="Enter your message detail" rows="6"></textarea>
					</div> -->

					<div class="2u 12u$(xsmall) gWrite_left">
						<!-- 5 ���� : ����-->
						<h5>����</h5>
					</div>
					<div class="4u 12u$(xsmall)">
						<!-- 5 ������ -->
						<div class="select-wrapper">
							<select name="text_loc" id="demo-category">
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
							<select name="text_total_person" id="demo-category">
								<option value="">- �����ο� -</option>
								<option value="1">1��</option>
								<option value="1">2��</option>
								<option value="1">3��</option>
								<option value="1">4��</option>
								<option value="1">5��</option>
								<option value="1">6��</option>
								<option value="1">7��</option>
								<option value="1">8��</option>
								<option value="1">9��</option>
								<option value="1">10��</option>
							</select>
						</div>
					</div>


					<div class="2u 12u$(xsmall) gWrite_left">
						<!-- 6 ���� : ���-->
						<h5>���</h5>
					</div>
					<div class="10u$ 12u$(xsmall)">
						<!-- 6 ������ -->
						<input type="text" name="text_cost" id="demo-name" value=""
							placeholder="Cost" />
					</div>

					<div class="2u 12u$(xsmall) gWrite_left">
						<!-- 7 ���� : ����-->
						<h5>����</h5>
					</div>
					<div class="10u$ 12u$(xsmall)">
						<!-- 7 ������ -->
						<textarea name="guide_cost_detail" id="demo-message"
							placeholder="Enter your cost message" rows="6"></textarea>
					</div>

					<div class="2u 12u$(xsmall) gWrite_left">
						<!-- 8 ���� : �̵�����-->
						<h5>�̵�����</h5>
					</div>
					<div class="10u$ 12u$(xsmall)">
						<!-- 8 ������ -->
						<input type="radio" id="walking" name="text_move" checked>
							<label for="walking">walking</label> 
						<input type="radio" id="car" name="demo-priority"> 
							<label for="car">car</label>
						<input type="radio" id="bicycle" name="demo-priority">
							<label for="bicycle">bicycle</label>
					</div>

					<div class="2u 12u$(xsmall) gWrite_left">
						<!-- 5 ���� : �ð�-->
						<h5>�ð�</h5>
					</div>
					<div class="2u 12u$(xsmall)">
						<!-- 5 ������ -->
						<div class="select-wrapper">
							<select name="text_time1" id="demo-category1">
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
					<div class="2u 12u$(xsmall)">
						<div class="select-wrapper">
							<select name="text_time2" id="demo-category2">
								<option value="">- �ð� -</option>
								<option value="1">AM</option>
								<option value="1">PM</option>
							</select>
						</div>
					</div>
					<div class="1u 12u$(xsmall)" id="timeflow">
						<b>~</b>
					</div>
					<div class="2u 12u$(xsmall)">
						<!-- 5-1 ������ -->
						<div class="select-wrapper">
							<select name="text_time3" id="demo-category3">
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
					<div class="2u$ 12u$(xsmall)">
						<div class="select-wrapper">
							<select name="text_time4" id="demo-category4">
								<option value="">- �ð� -</option>
								<option value="1">AM</option>
								<option value="1">PM</option>
							</select>
						</div>
					</div>

					<div class="2u 12u$(xsmall) gWrite_left">
						<!-- 1 ���� : �������-->
						<h5>�������</h5>
					</div>
					<div class="10u$ 12u$(xsmall)">
						<!-- 2 ������ -->
						<input type="text" name="guide_meet" id="demo-name" value=""
							placeholder="Meet place" />
					</div>


					<div class="2u 12u$(xsmall) gWrite_left">
						<!-- 7 ���� : ������¥-->
						<h5>������¥</h5>
					</div>
					<div class="10u$ 12u$(xsmall)">
						<!-- 7 ������ -->
						<input type="text" id="dt" name="text_date" placeholder="Select Date">
					</div>
				</div>
			<br>
			<ul class="actions fit small gWrbtn">
				<li><button class="button special fit small">���</button></li>
				<li><button class="button fit small">���</button></li>
				<!-- <li><a href="#" class="button special fit small">���</a></li>
				<li><a href="#" class="button fit small">���</a></li> -->
			</ul>
			</form>
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
	
	<!-- ���γ��� �߰� jquery -->
<script type="text/javascript" src="http://code.jquery.com.jquery.js"></script>
<script type="text/javascript">

	var p=0;
	
	$(function(){
		$('.plusBtn').click(function(){
			if(p==0){
				$('.plusWrite1').show();
				p=1;
			}else if(p==1){
				$('.plusWrite2').show();
				p=2;
			}else{
				alert("���̻� �߰� �� �� �����ϴ�.");
			}
		});
		
		$('.deleteBtn').click(function(){
			if(p==1){
				$('.plusWrite1').hide();
				p=0;
			}else if(p==2){
				$('.plusWrite2').hide();
				p=1;
			}else{
				alert("������ ���� �����ϴ�.");
			}
		});
		
	});
</script>

</body>
</html>