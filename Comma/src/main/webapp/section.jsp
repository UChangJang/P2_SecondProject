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
	<!-- style3:배경,폰트...색상 -->

	<ul id="banner1">
		<div class="inner">
			<br>
			<h2>여행가이드사이트</h2>
			<br>
		</div>
	</ul>

	<div id="mainMenu">&nbsp;&nbsp; 
		<span><a href="#">사이트소개</a></span>&nbsp;&nbsp; 
		<span><a href="#">한국소개</a></span>&nbsp;&nbsp;
		<span><a href="#">가이드</a></span>&nbsp;&nbsp; 
		<span><a href="#">관광객</a></span>
		<span><a href="#">커뮤니티</a></span>
	</div>
</section>

<!-- mainmenu 마우스 오버시 출력될 섹션 -->
<!-- <section id="mainMenu_hover">
	<div id="mainMenu_nav">
		<ul>
			<li><a href=""><b>사이트소개</b></a></li>
			<li>What about 'Comma'</li>
			<li>Information</li>
		</ul>
		<ul>
			<li><a href=""><b>한국소개</b></a></li>
			<li>What about 'Comma'</li>
			<li>Information</li>
		</ul>
		<ul>
			<li><a href=""><b>가이드</b></a></li>
			<li>What about 'Comma'</li>
			<li>Information</li>
		</ul>
		<ul>
			<li><a href=""><b>관광객</b></a></li>
			<li>What about 'Comma'</li>
			<li>Information</li>
		</ul>
		<ul>
			<li><a href=""><b>커뮤니티</b></a></li>
			<li>What about 'Comma'</li>
			<li>Information</li>
		</ul>
	</div>
</section> -->


<section id="three" class="wrapper style2 special widthsiz2">
	<div class="inner">
		<section>
			<!-- 제목 왼쪽정렬 -->
			<div class="row uniform" id="mainTop">
			
				<div class="3u 12u$(small)">								<!-- 1 왼쪽 -->
					<div id="mainSearch">
						<div class="mainSearch1" style="color: #53565B; font-style: bold">
						<img src="images/search.png">&nbsp;&nbsp;EASY SEARCH</div>
						<input type="text" name="demo-name" id="demo-name" value=""
							placeholder="지역 검색" class="mainSearch1"/> 
						<input type="text" id="dt" placeholder="날짜선택" class="mainSearch1"/>
						<div class="select-wrapper">
							<select name="demo-category" id="demo-category" class="mainSearch1">
								<option value="">인원선택</option>
								<option value="1">1명</option>
								<option value="1">2명</option>
								<option value="1">3명</option>
								<option value="1">4명</option>
							</select> 
						<input type="submit" value="SEARCH" class="special mainSearch1" />
						</div>

					</div>
				</div>

				<div class="7u 12u$(small)">								<!-- 2 가운데 -->
					<span class="image fit a">
						<div id="main_bn">
							<li><img src="../controller/images/guide_banner.jpg" alt="" /></li>		<!-- 이미지 character과 맞추기!!! -->
							<li><img src="../controller/images/tour_banner.jpg" alt="" /></li>
							<li><img src="../controller/images/korea_banner.jpg" alt="" /></li>
							<li><img src="../controller/images/character.png" alt="" /></li>
						</div>
					</span>
				</div>
				
				<div class="2u$ 12u$(small) mainRight1">					<!-- 3 오른쪽 -->
						<div id="mainRight">
							<div id="mainRight_home"><a id="a_home" href="#1">									
								<span class="mainRight_span"><img src="../controller/images/home.png"></span>
								Home</a></div>
							<div id="mainRight_comma"><a id="a_comma" href="#2">									
								<span class="mainRight_span"><img src="../controller/images/comma.png"></span>
								사이트소개</a></div>
							<div ><a id="a_korea" href="#3">
								<span class="mainRight_span"><img src="../controller/images/korea.png"></span>
								한국소개</a></div>
							<div><a id="a_guide" href="#4">
								<span class="mainRight_span"><img src="../controller/images/guide.png"></span>
								가이드글</a></div>
							<div><a id="a_tour" href="#5">
								<span class="mainRight_span"><img src="../controller/images/tour.png"></span>
								관광객글</a></div>
							<div><a id="a_commu" href="#5">
								<span class="mainRight_span"><img src="../controller/images/commu.png"></span>
								커뮤니티</a></div>	
						</div>
					</div>
				</div>
			</section>
		</div>
</section>



<section id="three" class="wrapper style2 special widthsiz3">
		<div class="inner">
			<section>
				<!-- 제목 왼쪽정렬 -->
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
					<li class="tabControlTab selected">1.서울</li>
					<li class="tabControlTab">2.서울</li>
					<li class="tabControlTab">3.서울</li>
					<li class="tabControlTab">4.서울</li>
					<li class="tabControlTab">5.서울</li>
				</ul>
				<ul class="tabControlBodys">
					<li class="tabControlBody selected"
						style="background-color: blue;">
						<p>4월7일1/먹방투어/2000원</p>
						<p>4월7일1/먹방투어/2000원</p>
						<p>4월7일1/먹방투어/2000원</p>
						<p>4월7일1/먹방투어/2000원</p>
						<p>4월7일1/먹방투어/2000원</p>
					</li>
					<li class="tabControlBody"
						style="background-color: red;">
						<p>4월7일2/먹방투어/2000원</p>
						<p>4월7일2/먹방투어/2000원</p>
						<p>4월7일2/먹방투어/2000원</p>
						<p>4월7일2/먹방투어/2000원</p>
						<p>4월7일2/먹방투어/2000원</p>
					</li>
					<li class="tabControlBody"
						style="background-color: blue;">
						<p>4월7일3/먹방투어/2000원</p>
						<p>4월7일3/먹방투어/2000원</p>
						<p>4월7일3/먹방투어/2000원</p>
						<p>4월7일3/먹방투어/2000원</p>
						<p>4월7일3/먹방투어/2000원</p>
					</li>
					<li class="tabControlBody"
						style="background-color: red;">
						<p>4월7일4/먹방투어/2000원</p>
						<p>4월7일4/먹방투어/2000원</p>
						<p>4월7일4/먹방투어/2000원</p>
						<p>4월7일4/먹방투어/2000원</p>
						<p>4월7일4/먹방투어/2000원</p>
					</li>
					<li class="tabControlBody"
						style="background-color: blue;">
							<p>4월7일5/먹방투어/2000원</p>
							<p>4월7일5/먹방투어/2000원</p>
							<p>4월7일5/먹방투어/2000원</p>
							<p>4월7일5/먹방투어/2000원</p>
							<p>4월7일5/먹방투어/2000원</p>
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
							<h4>지역 날씨 정보</h4>
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
						<h4>가이드를 찾아요</h4>
						<table>
							<tr>
								<td>[서울]</td>
								<td>2016/05/05</td>
								<td>2000d원</td>
							</tr>
							<tr>
								<td>[서울]</td>
								<td>2016/05/05</td>
								<td>2000d원</td>
							</tr>
							<tr>
								<td>[서울]</td>
								<td>2016/05/05</td>
								<td>2000d원</td>
							</tr>
							<tr>
								<td>[서울]</td>
								<td>2016/05/05</td>
								<td>2000d원</td>
							</tr>
							<tr>
								<td>[서울]</td>
								<td>2016/05/05</td>
								<td>2000d원</td>
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