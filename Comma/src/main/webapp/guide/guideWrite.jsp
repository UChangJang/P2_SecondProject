<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>���̵� �� �ۼ�</title>
<meta charset="utf-8" />
</head>
<body>
<!-- Main -->
<article id="main"> 
	<header>
		<h2>���̵� �۾���</h2>
		<p>���� ������</p>
	</header> 
	<section class="wrapper style5">
		<div class="inner">
		<section> <!-- �۾��� -->
		<form method="post" action="guide_Insert.do" enctype="multipart/form-data">
			<div class="row uniform">
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
					<!-- 3 ���� : ���������λ���-->
					<h5>���ΰ�����_����</h5>
				</div>
				<div class="10u$ 12u$(xsmall)">
					<span class="my-thumb-1">
						<div>
							<input type='file' id="profile_img" name="guide_img"/>
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
					<textarea name="guide_detail" id="demo-message"
						placeholder="Enter your message detail" rows="6"></textarea>
				</div>
	
				<div class="2u 12u$(xsmall) gWrite_left">
					<!-- 4 ���� : ���ΰ������Ұ�-->
					<h5>���μҰ�2</h5>
				</div>
				<div class="10u$ 12u$(xsmall)">
					<!-- 4 ������ -->
					<textarea name="demo-message" id="demo-message"
						placeholder="Enter your message detail" rows="6"></textarea>
				</div>
	
				<div class="2u 12u$(xsmall) gWrite_left">
					<!-- 4 ���� : ���ΰ������Ұ�-->
					<h5>���μҰ�3</h5>
				</div>
				<div class="10u$ 12u$(xsmall)">
					<!-- 4 ������ -->
					<textarea name="demo-message" id="demo-message"
						placeholder="Enter your message detail" rows="6"></textarea>
				</div>
	
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
				<div class="4u 12u$(xsmall)">
					<!-- 5 ������ -->
					<div class="select-wrapper">
						<select name="text_time1" id="demo-category">
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
						<select name="text_time2" id="demo-category">
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
	</section>
</article>

</body>
</html>