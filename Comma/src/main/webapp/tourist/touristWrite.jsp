<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
<head>
	<title>customerWrite</title>
	
	<!-- <link rel="stylesheet" href="../controller/assets/css/guide.css" /> -->
</head>
<body>
<!-- Main -->
<article id="main">
	<header>
		<h2>���̵�ã�� �۾���</h2>
		<p>Aliquam ut ex ut interdum donec amet imperdiet eleifend</p>
	</header>
	
	<section class="wrapper style5">
		<div class="inner">


			<section>
				<h2>���̵带 ã�ƿ�!</h2>
				<form method="post" action="#">
					<div class="row uniform">
					
						<div class="2u 12u$(xsmall)">
							<h3>�׸�</h3>
						</div>
						<div class="10u$">
							<div class="select-wrapper">
								<select name="demo-category" id="demo-category">
									<option value="">- �׸� -</option>
									<option value="1">�Թ�</option>
									<option value="1">����</option>
									<option value="1">����</option>
									<option value="1">����</option>
								</select>
							</div>
						</div>
						
						
						<div class="2u 12u$(xsmall)">
							<h3>������</h3>
						</div>
						<div class="10u$">
							<div class="select-wrapper">
								<select name="demo-category" id="demo-category">
									<option value="">- ���� -</option>
									<option value="1">����</option>
									<option value="1">����</option>
									<option value="1">�뱸</option>
									<option value="1">�λ�</option>
								</select>
							</div>
						</div>
						
						
						<div class="2u 12u$(xsmall)">
							<h3>��¥</h3>
						</div>
						<div class="10u 12u$(xsmall)">
							<input type="text" id="dt" placeholder="��¥����">
	   							<div id="dd"></div>
						</div>
						
						<div class="2u 12u$(xsmall)">
							<h3>���</h3>
						</div>
						<div class="10u 12u$(xsmall)">
							<input type="text" name="demo-name" id="demo-name" value="" placeholder="���" />
						</div>
						
						
						<div class="2u 12u$(xsmall)">
							<h3>�ο�</h3>
						</div>
						<div class="10u$">
							<div class="select-wrapper">
								<select name="demo-category" id="demo-category">
									<option value="">- Category -</option>
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
						
						
						<div class="2u 12u$(xsmall)">
							<h3>�ð�</h3>
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
			<div class="2u 12u$(xsmall)" id="timeflow">
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
						
						
						<div class="4u 12u$(small)">
							<input type="radio" id="demo-priority-low" name="demo-priority" checked>
							<label for="demo-priority-low">����</label>
						</div>
						<div class="4u 12u$(small)">
							<input type="radio" id="demo-priority-normal" name="demo-priority">
							<label for="demo-priority-normal">������</label>
						</div>
						<div class="4u$ 12u$(small)">
							<input type="radio" id="demo-priority-high" name="demo-priority">
							<label for="demo-priority-high">�ڵ���</label>
						</div>
						
						<h3>�̷� ���̵带 ���ؿ�</h3>
						<div class="12u$">
							<textarea name="demo-message" id="demo-message" placeholder="Enter your message" rows="6"></textarea>
						</div>
						
						<div class="12u$" id="tourWriteBtn">
							<ul class="actions">
								<li><input type="submit" value="���" class="special" /></li>
								<li><input type="reset" value="���" /></li>
							</ul>
						</div>
					</div>
				</form>
			</section>

		</div>
	</section>
</article>
</body>
</html>