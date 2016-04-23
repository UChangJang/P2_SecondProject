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
			<img src="images/comma_logo.png">
			<br>
			<h2 style="color:#8D7979">Comma in your Life.</h2>
		</div>
	</ul>

	<div id="mainMenu">&nbsp;&nbsp; 
		<span><a href="#">Comma</a></span>&nbsp;&nbsp; 
		<span><a href="#">Introduce Korea</a></span>&nbsp;&nbsp;
		<span><a href="#">Tour Find</a></span>&nbsp;&nbsp; 
		<span><a href="#">Tour Request</a></span>&nbsp;&nbsp; 
		<span><a href="#">Community</a></span>&nbsp;&nbsp; 
	</div>
	<span><img src="http://file.theskinfood.com/resources/common/img/dep2bg.png" width="100%" height="37" alt=""></span>
</section>




<section id="three" class="wrapper style2 special widthsiz2">
	<div class="inner">
		<section>
			<!-- 제목 왼쪽정렬 -->
			<div class="row uniform" id="mainTop">
				<div class="3u 12u$(small)">								<!-- 1 왼쪽 -->
					<div id="mainSearch">
						<div style="color: #53565B; font-style: bold">
						<p><img src="images/search.png">&nbsp;&nbsp;EASY SEARCH</p></div>
						<input type="text" name="demo-name" id="demo-name" value=""
							placeholder="SPOT" class="mainSearch1"/> 
						<input type="text" id="dt" placeholder="DATE" class="mainSearch1"/>
						<div class="select-wrapper">
							<select name="demo-category" id="demo-category" class="mainSearch1">
								<option value="">PEOPLE</option>
								<option value="1">1 person</option>
								<option value="1">2 persons</option>
								<option value="1">3 persons</option>
								<option value="1">4 persons</option>
							</select> 
						<input type="submit" value="SEARCH" class="special mainSearch1" />
						</div>

					</div>
				</div>
				
				<div class="7u 12u$(small)">								<!-- 2 가운데 -->
					<span class="image fit a">
						<div id="main_bn">
							<li><img src="images/guide_banner.jpg" alt="" /></li>		<!-- 이미지 character과 맞추기!!! -->
							<li><img src="images/tour_banner.jpg" alt="" /></li>
							<li><img src="images/korea_banner.jpg" alt="" /></li>
							<li><img src="images/character.png" alt="" /></li>
						</div>
					</span>
				</div>
				
				<div class="2u$ 12u$(small) mainRight1">					<!-- 3 오른쪽 -->
						<table id="mainRight">
							<tr>
							  <td><span class="mainRight_span"><img src="images/home.png"></span></td>
							  <th><a href="#">Home</a></th>
							</tr>
							<tr>
							  <td><span class="mainRight_span"><img src="images/comma.png"></span></td>
							  <th><a href="#">Comma</a></th>
							</tr>
							<tr>
							  <td><span class="mainRight_span"><img src="images/korea.png"></span></td>
							  <th><a href="#">Tour</a></th>
							</tr>
							<tr>
							  <td><span class="mainRight_span"><img src="images/guide.png"></span></td>
							  <th><a href="#">Request</a></th>
							</tr>
							<tr>
							  <td><span class="mainRight_span"><img src="images/commu.png"></span></td>
							  <th><a href="#">Community</a></th>
							</tr>
						</table>
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
				<span><img src="images/incheon1.jpg" alt="" /></span>
				<span><img src="images/incheon2.jpg" alt="" /></span>
				<span><img src="images/incheon3.jpg" alt="" /></span>
				<span><img src="images/seoul1.jpg" alt="" /></span>
				<span><img src="images/seoul3.jpg" alt="" /></span>
				<table>
					<thead>Best Guide</thead>
					<tbody>
					  <tr>
					    <td>1st</td>
					    <td>2nd</td>
					    <td>3th</td>
					  </tr>
					  <tr>
					    <td><img src="images/"></td>
					    <td><img src="images/"></td>
					    <td><img src="images/"></td>
					  </tr>
					  <tr>
					    <td></td>
					    <td></td>
					    <td></td>
					  </tr>
					</tbody>
					<tfoot>>> view more</tfoot>
				</table>
			</div>
			
			<div class="6u$ 12u$(small) secondPart tabControlWrap" id="tabControlWrap">
				<h4>Best Guide spot</h4>
				<ul class="tabControlTabs">
					<li class="tabControlTab selected"><p>1.서울</p></li>
					<li class="tabControlTab"><p>1.서울</p></li>
					<li class="tabControlTab"><p>1.서울</p></li>
					<li class="tabControlTab"><p>1.서울</p></li>
					<li class="tabControlTab"><p>1.서울</p></li>
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
						<div class="3u 12u$(small) thirdPart" id="guideRanking">
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

						<div class="9u$ 12u$(small) thirdPart" id="guideRanking">
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