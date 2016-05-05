<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- Main -->
<article id="main">
	<header>
		<h2>[제목]서울도심투어</h2>
		<p>재밌는 관광</p>
	</header>
	
	<section class="wrapper style5">
		<div class="inner">
			<!-- <section class="style5"> -->
			<div class="row side0">
				<div class="2u 12u$(small)">								<!-- 1 왼쪽 -->
					<br>
					<div align=center class="mypictureGuide">
					<img src="http://211.238.142.74:8080/controller/profile/${vo.uservo.user_img }">		
						<div class="topBoardShort">${vo.uservo.user_name }</div>							
					</div>
				</div>
				<br>
				<img alt="" src="images/person_g.png" style="padding:0,0,0,0">
				<div>								<!-- 1 왼쪽 -->
					<div id="">
						<div>Total People</div>
						<div class="topBoardShort">${vo.text_total_person } PEOPLE</div>							
					</div>
				</div>
				<img alt="" src="images/time_g.png" style="padding:0,0,0,0">
				<div>								<!-- 1 왼쪽 -->
					<div id="">
						<div>Tour Time</div>		
						<div class="topBoardShort">${vo.text_time } Hours</div>							
					</div>
				</div>
				<img alt="" src="images/vehicle_g.png" style="padding:0,0,0,0">
				<div>								<!-- 1 왼쪽 -->
					<div id="">
						<div>Vehicle</div>		
						<div class="topBoardShort">${vo.text_move }</div>							
					</div>
				</div>
				<div class="3u$ 12u$(small)">	
																
				</div>
				
				
				<div class="9u 12u$(medium) side1">
				
					<!-- 가이드 소개 -->
					<hr id="intropeople"/>
					<h5>Guide Introduce</h5>
					<textarea style="height:20em">${vo.uservo.user_introduce }</textarea>

					
					<!-- 가이드가 쓴 글 (사진+내용) -->
					<hr id="pic"/>
					<h4>Tour Location Image</h4>					
					<span class="image fit a">
					 <div id="main_bn">
					 	<c:forEach var="img" items="${imgList }">
							<li><img src="http://211.238.142.74:8080/controller/image/${img }" alt="" /></li>		
						</c:forEach>
					</div> 
					</span>
					<textarea style="height:20em">${vo.guidevo.guide_detail }</textarea>

					
					<!-- 후기 -->
					<hr id="mention"/>
					<h5>Review</h5>
					<div class="box alt">
						<div class="row uniform 50%">
						
						<c:forEach var="i" begin="1" end="5">
							<div class="2u">
								<span class="image fit"> <a href="guideWrite.do"><img
										src="images/banner.jpg" alt="" /></a>
								</span>
							</div>

							<div class="10u">
								<span class="image fit">
									<table class="alt">
										<tr>
											<td>안보영</td>
											<td>별다섯개</td>
										</tr>
										<tr>
											<td colspan=4>멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.</td>
										</tr>
									</table>
								</span>
							</div>
						</c:forEach>
							
						</div>
					</div>

					<hr />
					<!-- <ul class="actions fit small">
						<li><button class="button special fit small" id="messageWrite">Message To</button></li>
						<li><button class="button fit small" id="reserveBtn">Reserve</button></li>
						<li><button class="button special fit small" id="wishBtn">Wish</button></li>
					</ul> -->
	
				</div>
		
			</div>
		</div>
	</section>
</article>
</body>
</html>