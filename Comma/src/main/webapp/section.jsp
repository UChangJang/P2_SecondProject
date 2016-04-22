<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
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
<!-- <section id="mainMenu_hover">
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
</section> -->


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
							<li><img src="../controller/images/guide_banner.jpg" alt="" /></li>		<!-- �̹��� character�� ���߱�!!! -->
							<li><img src="../controller/images/tour_banner.jpg" alt="" /></li>
							<li><img src="../controller/images/korea_banner.jpg" alt="" /></li>
							<li><img src="../controller/images/character.png" alt="" /></li>
						</div>
					</span>
				</div>
				
				<div class="2u$ 12u$(small) mainRight1">					<!-- 3 ������ -->
						<div id="mainRight">
							<div id="mainRight_home"><a id="a_home" href="#1">									
								<span class="mainRight_span"><img src="../controller/images/home.png"></span>
								Home</a></div>
							<div id="mainRight_comma"><a id="a_comma" href="#2">									
								<span class="mainRight_span"><img src="../controller/images/comma.png"></span>
								����Ʈ�Ұ�</a></div>
							<div ><a id="a_korea" href="#3">
								<span class="mainRight_span"><img src="../controller/images/korea.png"></span>
								�ѱ��Ұ�</a></div>
							<div><a id="a_guide" href="#4">
								<span class="mainRight_span"><img src="../controller/images/guide.png"></span>
								���̵��</a></div>
							<div><a id="a_tour" href="#5">
								<span class="mainRight_span"><img src="../controller/images/tour.png"></span>
								��������</a></div>
							<div><a id="a_commu" href="#5">
								<span class="mainRight_span"><img src="../controller/images/commu.png"></span>
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
				<span><img src="../controller/images/incheon1.jpg" alt="" /></span>
				<span><img src="../controller/images/incheon2.jpg" alt="" /></span>
				<span><img src="../controller/images/incheon3.jpg" alt="" /></span>
				<span><img src="../controller/images/seoul1.jpg" alt="" /></span>
				<span><img src="../controller/images/seoul3.jpg" alt="" /></span>

			</div>
			
			<div class="6u$ 12u$(small) secondPart tabControlWrap" id="tabControlWrap">
				<h4>Best Guide spot</h4>
				<ul class="tabControlTabs">
					<li class="tabControlTab selected">1.����</li>
					<li class="tabControlTab">2.����</li>
					<li class="tabControlTab">3.����</li>
					<li class="tabControlTab">4.����</li>
					<li class="tabControlTab">5.����</li>
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
						<div class="4u 12u$(small) thirdPart" id="guideRanking">
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

					<div class="8u$ 12u$(small) thirdPart" id="guideRanking">
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
</body>
</html>