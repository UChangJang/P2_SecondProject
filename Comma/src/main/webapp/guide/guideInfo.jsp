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
			
			<div class="row side0">
				<div class="9u 12u$(medium)">								<!-- 1 왼쪽 -->
					<div align=center><h2>Guide Profile</h2></div>
					<div align=center class="mypictureInfo">
					<img src="http://211.238.142.74:8080/controller/profile/${uvo.user_img }">		
						<div class="topBoardShort">${uvo.user_name }</div>
						<div class="topBoardShort"><br>
						<table width="300">
							<tr>
								<td align=right>Gender:</td>
								<td>${uvo.user_sex }</td>
							</tr>
							<tr>
								<td align=right>NickName:</td>
								<td>${uvo.user_nick }</td>
							</tr>
							<tr>
								<td align=right>Birth:</td>
								<td>${uvo.user_birth }</td>
							</tr>
						</table>
						</div>							
					</div>
				</div>
				
				
				
				<div class="9u 12u$(medium) side1">
				
					<!-- 가이드 소개 -->
					<hr id="intropeople"/>
					<h5>Guide Introduce</h5>
					<textarea style="height:20em">${uvo.user_introduce }</textarea>

					
					<!-- 가이드가 쓴 글 (사진+내용) -->
					<hr id="pic"/>
					<h4>Guide Achievement</h4>
					<!-- 사진 -->
					<div class="box alt">
					<div class="row uniform 50%">
						
					<c:forEach var="vo" items="${list }">
						<div class="3u">					<!-- 사진 -->
							<span class="mypictureAchi">
								<img src="http://211.238.142.74:8080/controller/image/${vo.guidevo.guide_img }" alt=""/><!-- 이미지사진 -->
							</span>	
						</div>
						<div class="9u">					
							<span class="image fit a">
								<table class="plusDetail" >	
									<tr align=center>
										<td style="font-size: 12pt"><b>[<font color="red">${vo.text_loc }</font>] ${vo.guidevo.guide_subject }</b></td>
									</tr>
									<tr>
										<td align="center">Vehicle: <font color="red">${vo.text_move }</font> &nbsp;&nbsp;&nbsp;&nbsp; Time Required: <font color="red">${vo.text_time }hour</font></td>		
									</tr>
									<tr>
										<td align="right"><font color="red">￦${vo.text_cost }</font></td>
									</tr>
								</table>
							</span>	
						</div>
						
					</c:forEach>
						
					</div>
				</div>
		
				<!-- 후기 -->
				<hr id="mention"/>
				<h5>Review</h5>
				<div class="box alt">
					<div class="row uniform 50%">
					
					<c:forEach var="review" items="${reviewList }">
						<div class="2u">
							<span class="image fit"> <a href="#">
								<img src="http://211.238.142.74:8080/controller/profile/${review.uservo.user_img }" alt="" /></a>
							</span>
						</div>

						<div class="10u">
							<span class="image fit">
								<table class="alt">
									<tr>
										<td width=50%>${review.uservo.user_nick }</td>
										<td width=50%>
										<c:forEach var="i" begin="1" end="5">
										<c:if test="${review.reviewvo.review_score ==i }">
											<c:forEach var="j" begin="1" end="${i }">
											★
											</c:forEach>
											<c:if test="${i!=5 }">
											<c:forEach var="j" begin="${i+1 }" end="5">
											☆
											</c:forEach>
											</c:if>
										</c:if>
										</c:forEach>
										</td>
									</tr>
									<tr>
										<td colspan=4>${review.reviewvo.review_text }</td>
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